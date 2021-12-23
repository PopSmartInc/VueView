const express = require("express");
const path = require("path");

const app = express();

app.use(express.json());

app.get("/", (req, res) => {
  res.send("Pop Tarts RULE");
});

app.listen(3030, () => {
  console.log(`listening on port 3030`);
});
