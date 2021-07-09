/* eslint-disable import/no-unresolved */
require('dotenv').config();
const pg = require('pg');

const dbConfig = {
  user: process.env.USER,
  password: process.env.PASS,
  database: process.env.DB,
  host: process.env.HOST,
  port: process.env.PORT,
};

const pool = new pg.Pool(dbConfig);
pool.on('error', () => {
  process.exit(-1);
});

module.exports = {
  query: (text, params, callback) => pool.query(text, params, callback),
  // query: pool.query,
};
