const { Pool } = require("pg");

const vueview = new Pool({
  user: process.env.DB_USER || "postgres",
  host: "localhost",
  database: "vueview",
  password: process.env.DB_PASSWORD || "password",
  port: 5432,
});

module.exports = vueview;
