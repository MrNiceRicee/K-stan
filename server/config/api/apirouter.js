const dbhelper = require('../db/_dbhelper');

module.exports = (app) => {
  app.use('/api', (req, res, next) => {
    next();
  });
  app.get('/api/topIdols', (req, res) => {
    dbhelper.findTopIdols()
      .then((result) => {
        res.status(200).send({ status: result.rows });
      })
      .catch(() => {
        res.status(500).send({ status: 'error' });
      });
  });

  app.get('/api/idol/:id', (req, res) => {
    const { id } = req.params;
    dbhelper.findIdolById(id)
      .then((result) => {
        res.status(200).send({ status: result.rows });
      })
      .catch(() => {
        res.status(500).send({ status: 'error' });
      });
  });

  app.get('/api/topGroups', (req, res) => {
    dbhelper.findTopGroups()
      .then((result) => {
        res.status(200).send({ status: result.rows });
      })
      .catch(() => {
        res.status(500).send({ status: 'error' });
      });
  });

  app.get('/api/group/:id', (req, res) => {
    const { id } = req.params;
    dbhelper.findGroupById(id)
      .then((result) => {
        res.status(200).send({ status: result.rows });
      })
      .catch(() => {
        res.status(500).send({ status: 'error' });
      });
  });

  app.get('/api/search', (req, res) => {
    const {search} = req.query;
    if (search.length > 0) {
      dbhelper.searchDB(search)
        .then((result) => {
          res.status(200).send({ status: result.rows });
        })
        .catch(() => {
          res.status(500).send({ status: 'error' });
        });
    } else {
      res.status(200).send({ status: null });
    }
  });

  app.put('/api/update/subs', (req, res) => {
    const { type, id, change } = req.body;
    dbhelper.updateDB(type, id, change)
    .then((result) => {
      res.status(200).send({ status: result.rows });
    })
    .catch(() => {
      res.status(500).send({ status: 'error' });
    });
  })
};
