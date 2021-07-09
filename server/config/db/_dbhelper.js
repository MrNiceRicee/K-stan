const { query } = require('./connect');

const findTopIdols = () => query(`
SELECT icon.id, icon.stage_name, icon.group, icon.bias, icon.bias_wrecker, icon.picture
FROM kpop_idols AS icon
ORDER BY (bias + (bias_wrecker * .75)) DESC, stage_name ASC
`);

const findIdolById = (id) => query(`
  SELECT icon.*,
    (SELECT (JSON_AGG(JSON_BUILD_OBJECT(
      'member_name', stage_name,
      'member_id', id,
      'member_picture', picture
      )
          )
      ) AS member
    FROM kpop_idols as gp
    WHERE icon.group=gp.group AND icon.stage_name!=gp.stage_name
    ) as group_members
  FROM kpop_idols as icon
  WHERE id=$1
`, [id]);

const findTopGroups = () => query(`
  SELECT name AS group_name, id, stans, picture,
  (SELECT json_agg(idol)
  FROM
    (SELECT stage_name AS name, id
      FROM kpop_idols
      WHERE kpop_idols.group_id=kpop_groups.id) idol) AS members
  FROM kpop_groups
  ORDER BY stans DESC,
        group_name ASC
`);

const findGroupById = (id) => {
  return query(`
  SELECT kpop_groups.*,
  (SELECT json_agg(idol)
  FROM
    (SELECT stage_name AS name, idols.id, idols.picture
      FROM kpop_idols as idols
      WHERE idols.group_id=kpop_groups.id) idol) AS members_show
  FROM kpop_groups
  WHERE id=$1
  ORDER BY stans ASC,
        kpop_groups.name ASC;
`, [id]);
};

const searchDB = (search) => {
  let checker = `WHERE lower(ki.stage_name) LIKE lower('%${search}%')
  OR
  lower(kg.name) LIKE lower('%${search}%')`;
  if (!Number.isNaN(parseInt(search, 10))) {
    checker = `WHERE
    ki.id=${search}
    OR
    group_id=${search};`;
  }
  const searchingQuote = search.split('"');
  if (searchingQuote.length === 3) {
    checker = `WHERE lower(ki.stage_name) LIKE lower('${searchingQuote[1]}')
    OR
    lower(kg.name) LIKE lower('${searchingQuote[1]}')`;
  }
  return query(`
  SELECT ki.stage_name as member_name, ki.id as member_id, ki.picture as member_picture, kg.name as group_name, kg.id as group_id, kg.picture as group_picture
  FROM kpop_groups as kg
  JOIN  kpop_idols as ki ON (ki.group_id=kg.id)
  ${checker}
  `);
};

const updateReducer = (type, id, change) => {
  let table = '';
  let query = 'UPDATE ';
  let conditional = ` WHERE id=${id} `
  if (type === 'stans') {
    query += ' kpop_groups ';
  } else if (type === 'bias' || type ==='bias_wrecker') {
    query += 'kpop_idols';
  }
  if (change === 'add') {
    query += ` SET ${type}=${type}+1 `;
  }
  query += conditional + ` RETURNING ${type}; `
  return query;
}

const updateDB = (type, id, change) => {
  return query(updateReducer(type,id,change));
};


module.exports = {
  findTopIdols,
  findTopGroups,
  findIdolById,
  findGroupById,
  searchDB,
  updateDB,
};
