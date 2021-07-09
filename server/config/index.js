const app = require('./router');

const port = 8000;

app.listen(port, () => {
  console.log(`
  App listening
  http://localhost:${port}
  http://127.0.0.1:${port}
  `);
});
