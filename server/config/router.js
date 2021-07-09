/* eslint-disable import/no-unresolved */
require('dotenv').config();
const express = require('express');
const morgan = require('morgan');
const cors = require('cors');

const app = express();
app.use(express.json());
app.use(cors());
app.use(express.urlencoded({ extended: true }));
if (process.env.MODE === 'dev') {
  app.use(morgan('dev'));
}

const handleResponse = (res, code, statusMessage) => {
  res.status(code).json({ status: statusMessage });
};

app.get('/', (req, res) => {
  handleResponse(res, 200, 'welcome!');
});

require('./api/apirouter')(app);

module.exports = app;
