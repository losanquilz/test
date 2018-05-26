var knex = require('knex')({
  client: 'mysql',
  connection: {
    host     : '140.119.19.40',
    port     : '3306',
    user     : 'test',
    password : 'realone',
    database : 'test'
  },
  pool: {
    min: 0,
    max: 7
  }
});

module.exports = knex;
