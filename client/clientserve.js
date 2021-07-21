const express = require('express');
const path = require('path');
const cors = require('cors');

const port = 3000;

const app = express();
app.use(express.json());
app.use(cors());
app.use(express.urlencoded({ extended: true }));
app.use(express.static(path.join(__dirname, 'dist')));

app.listen(port, () => {
  console.log('starting serve');
});

