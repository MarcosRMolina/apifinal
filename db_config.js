import mysql from "mysql2/promise"
const dbConfig = {
    host: "localhost",
    user: "root",
    password: "Independiente1905",
    port: 3306,
    database: "hardware",
  };

export const connection = await mysql.createConnection (dbConfig);

    connection.connect(err => {
    err ? console.error(err) : console.log('Connected to database');
    });
