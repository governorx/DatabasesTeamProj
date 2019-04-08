//Requirements and initiation.
var port = process.env.PORT || 3000;
var mysql = require('mysql');
var express = require('express');
const app = express();
var con = mysql.createConnection({
  host: "localhost",
  user: "root",
  password: "123456789"
});
//con.connect(function(err) {
//  if (err) throw err;
//  console.log("Connected!");
//});

//Page Rquest
app.get('/', function (req, res, next) {
  res.sendFile(__dirname + "/views/pages/Home.html");
});

app.get('/Venues', function (req, res, next) {
  res.sendFile(__dirname + "/views/pages/Venues.html");
});

//Server Run
app.listen(port, function(){
  console.log("Krishon is on the run you better go get him.." );
}); 