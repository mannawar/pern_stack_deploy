const Pool = require("pg").Pool;

const pool = new Pool({
  host: "localhost",
  user: "postgres",
  password: "zarien",
  port: 5432,
  database: "newsfeeds"
});

module.exports = pool;


//newsfeeds=== table