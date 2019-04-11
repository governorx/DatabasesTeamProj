//You should npm install mysql
//I Also reccomend getting the sql command line client which i use to debug
//if you have run "mysql -u root -p"
//"use test"
//"show tables;"

//Requirements and initiation.
var port = process.env.PORT || 3000;
var mysql = require('mysql');
var express = require('express');
const app = express();
var con = mysql.createConnection({
  host: "localhost",
  user: "root",
  password: "123456789",
  database: "test"
});

// TO ADD THE DATABASE:: RUN THIS COMMAND ON .sql FILE IN GIT
//mysql -u root -p test < test_dump.sql


/* to Get all of this to run
*1. Comment out database: test up there
*2. con.query("CREATE DATABASE test", function (err, result) {
    if (err) throw err;
    console.log("Database created");
  });
*3. Uncomment it now we have a databse on machine
*4. Now we gotta create the tables
* "CREATE TABLE Artist (Aid INT, Aname VARCHAR(255), age INT(3), Alias VARCHAR(255), Genre VARCHAR(255), Loc VARCHAR(255), AV VARCHAR(255))"
* "CREATE TABLE BandMembers(Bid INT, AID INT, RMID INT)"
* "CREATE TABLE Band(Bid INT, Bname VARCHAR(255), Artists INT, Genre VARCHAR(255), Location VARCHAR(255), Availibity VARCHAR(255), Number INT)"
* "CREATE TABLE `Show`(`SHID INT`, `Location` VARCHAR(255), `Time` DATETIME, `Price` INT, `Promoter` INT, `ATT_Count` INT, `Explicit` BOOLEAN, `Venue` INT, `Opener` INT, `Headlines` INT, `Set` VARCHAR(255))"
* "CREATE TABLE Venue(VID INT, Location VARCHAR(255), Capacity INT, Age_Min INT, Amenities VARCHAR(255))"
* "CREATE TABLE Attendes(SHID INT, SID INT)"
* "CREATE TABLE Savant(SID INT, Genres VARCHAR(255), Location VARCHAR(255), Age INT)"
* "CREATE TABLE Promoter_Contacts(VID INT, PID INT, CID INT)"
* "CREATE TABlE Promoter(PID INT, Venue INT, Budget INT, Availibity VARCHAR(255), Genres VARCHAR(255), Number INT, BIO VARCHAR(255))"
* Put all of these into vars and then run con.query like the above
* Now You should have all the tables and such
* These are all commands so now we need to insert data
* "INSERT INTO Artist values (/Put whatever/)"
*/
con.connect(function(err) {
  if (err) console.log(err);
  console.log("Connected!");
  var sql = "Select * from `Show`"
  con.query(sql, function (err, result) {
    if (err) console.log(err);
    console.log(result);
  });
});


//Sending Data to Pages is fake now, first line exhibits long term idea

//TODO(tauren) Make these more specific when the time comes
app.get('/DATA/HOME', function (req, res, next) {
  con.connect(function(err) {
    if (err) console.log(err);
    console.log("Connected!");
    var sql = "Select * from `Show`"
    con.query(sql, function (err, result) {
      if (err) console.log(err);
      console.log(result);
      res.send(result);
    });
  });
});

app.get('/DATA/SINGLES', function (req, res, next) {
  con.connect(function(err) {
    if (err) console.log(err);
    console.log("Connected!");
    var sql = "Select * from Artist"
    con.query(sql, function (err, result) {
      if (err) console.log(err);
      console.log(result);
      res.send(result);
    });
  });
});
app.get('/DATA/BANDS', function (req, res, next) {
  con.connect(function(err) {
    if (err) console.log(err);
    console.log("Connected!");
    var sql = "Select * from Band"
    con.query(sql, function (err, result) {
      if (err) console.log(err);
      console.log(result);
      res.send(result);
    });
  });
});

//TODO(anyone) Get Performances by genre
app.get('/DATA/ROCK', function (req, res, next) {
  con.connect(function(err) {
    if (err) console.log(err);
    console.log("Connected!");
    var sql = "Select * from Artist, Band where Artist.Genre = 'ROCK' or Band.Genre = 'ROCK'"
    con.query(sql, function (err, result) {
      if (err) console.log(err);
      console.log(result);
      res.send(result);
    });
  });
});
app.get('/DATA/HIPHOP', function (req, res, next) {
  con.connect(function(err) {
    if (err) console.log(err);
    console.log("Connected!");
    var sql = "Select * from Artist, Band where Artist.Genre = 'HIPHOP' or Band.Genre = 'HIPHOP';"
    con.query(sql, function (err, result) {
      if (err) console.log(err);
      console.log(result);
      res.send(result);
    });
  });
});
app.get('/DATA/ELECTRONIC', function (req, res, next) {
  con.connect(function(err) {
    if (err) console.log(err);
    console.log("Connected!");
    var sql = "Select * from Artist, Band where Artist.Genre = 'ELECTRONIC' or Band.Genre = 'ELECTRONIC';"
    con.query(sql, function (err, result) {
      if (err) console.log(err);
      console.log(result);
      res.send(result);
    });
  });
});

//Sending Pages
app.get('/', function (req, res, next) {
  res.sendFile(__dirname + "/views/pages/Home.html");
});

app.get('/Bands', function (req, res, next) {
  res.sendFile(__dirname + "/views/pages/Venues.html");
});

app.get('/Artists', function (req, res, next) {
  res.sendFile(__dirname + "/views/pages/Venues.html");
});

app.get('/Bands', function (req, res, next) {
  res.sendFile(__dirname + "/views/pages/Venues.html");
});

app.get('/Singles', function (req, res, next) {
  res.sendFile(__dirname + "/views/pages/Venues.html");
});


app.get('/Genres', function (req, res, next) {
  res.sendFile(__dirname + "/views/pages/Venues.html");
});
app.get('/Venues', function (req, res, next) {
  res.sendFile(__dirname + "/views/pages/Venues.html");
});

//Server Run
app.listen(port, function(){
  console.log("Krishon is on the run you better go get him.." );
});
