const express = require('express');
const mysql = require('mysql2');
const cors = require('cors');
require('dotenv').config();

const app = express();
app.use(cors());

const db = mysql.createConnection({
  host: process.env.DB_HOST,
  user: process.env.DB_USER,
  password: process.env.DB_PASSWORD,
  database: process.env.DB_NAME,
});

db.connect(err => {
  if (err) throw err;
  console.log('Connected to MariaDB');
});

// Get all table names
app.get('/tables', (req, res) => {
  db.query("SHOW TABLES", (err, result) => {
    if (err) return res.status(500).send(err);
    const tables = result.map(row => Object.values(row)[0]);
    res.json(tables);
  });
});

// Get data from a specific table
app.get('/table/:name', (req, res) => {
  const tableName = db.escapeId(req.params.name);
  db.query(`SELECT * FROM ${tableName}`, (err, result) => {
    if (err) return res.status(500).send(err);
    res.json(result);
  });
});

app.listen(3001, () => {
  console.log('Server running on http://localhost:3001');
});
