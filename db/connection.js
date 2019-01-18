

// function dbConnect(){

// console.log("connection.js")
const mysql = require('mysql');

// First you need to create a connection to the db
const con = mysql.createConnection({
  host: 'localhost',
  user: 'root',
  password: 'root',
  database: "Gamepiler"
});

con.connect((err) => {
  if(err){
    console.log('Error connecting to Db');
    return;
  }
  console.log('Connection established');

  con.query("SELECT * FROM registered_user;", function (err, result, fields) {
    // if (err) throw err;
    console.log(result);
  });

  con.end((err) => {
    //   // The connection is terminated gracefully
    //   // Ensures all previously enqueued queries are still
    //   // before sending a COM_QUIT packet to the MySQL server.
    });

});

// }
