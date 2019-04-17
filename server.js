//You should npm install mysql
//I Also reccomend getting the sql command line client which i use to debug
//if you have run "mysql -u root -p"
//"use test"
//"show tables;"
//Requirements and initiation.
var bodyParser = require('body-parser');
var tmpUserData = "";
var tmpVuserData = "";
var tmpVenueLocation = "";
var urlencodedParser = bodyParser.urlencoded({ extended: true });
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
* "CREATE TABLE Band(Bid INT, Bname VARCHAR(255), Artists INT, Genre VARCHAR(255), Location VARCHAR(255), Availibity VARCHAR(255), Number VARCHAR(255), Image VARCHAR(255))"
* "CREATE TABLE `Show`(`SHID INT`, `Location` VARCHAR(255), `Time` DATETIME, `Price` INT, `Promoter` INT, `ATT_Count` INT, `Explicit` BOOLEAN, `Venue` INT, `Opener` INT, `Headlines` INT, `Set` VARCHAR(255))"
* "CREATE TABLE Venue(VID INT, Location VARCHAR(255), Capacity INT, Age_Min INT, Amenities VARCHAR(255), Image VARCHAR(255))"
* "CREATE TABLE Attendes(SHID INT, SID INT)"
* "CREATE TABLE Savant(SID INT, Genres VARCHAR(255), Location VARCHAR(255), Age INT)"
* "CREATE TABLE Promoter_Contacts(VID INT, PID INT, CID INT)"
* "CREATE TABlE Promoter(PID INT, Venue INT, Budget INT, Availibity VARCHAR(255), Genres VARCHAR(255), Number VARCHAR(255), BIO VARCHAR(255))"
* create table favorites(sid int, bid int, fid int);
* Put all of these into vars and then run con.query like the above
* Now You should have all the tables and such
* These are all commands so now we need to insert data
* "INSERT INTO Artist values (/Put whatever/)"
*/
con.connect(function(err) {
  if (err) console.log(err);
  console.log("Connected!");
  var sql = "Select * from ARTIST"
  con.query(sql, function (err, result) {
    if (err) console.log(err);
    console.log(result);
  });
});


//SENDING DATA AND RESOURCES TO FRONT END.
app.get('/DATA/HOME', function (req, res, next) {
  con.connect(function(err) {
    if (err) console.log(err);
    console.log("Connected!");
    var sql = "Select * from band"
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
    var sql = "Select * from band where artists = 1"
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
    var sql = "Select * from Band where artists != 1"
    con.query(sql, function (err, result) {
      if (err) console.log(err);
      console.log(result);
      res.send(result);
    });
  });
});
app.get('/DATA/ROCK', function (req, res, next) {
  con.connect(function(err) {
    if (err) console.log(err);
    console.log("Connected!");
    var sql = "Select * from Band where Band.Genre = 'ROCK'"
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
    var sql = "Select * from Band where Band.Genre = 'HIPHOP';"
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
    var sql = "Select * from Band where Band.Genre = 'ELECTRONIC';"
    con.query(sql, function (err, result) {
      if (err) console.log(err);
      console.log(result);
      res.send(result);
    });
  });
});
app.get('/DATA/VENUES', function (req, res, next) {
  con.connect(function(err) {
    if (err) console.log(err);
    console.log("Connected!");
    var sql = "Select * from VENUE;"
    con.query(sql, function (err, result) {
      if (err) console.log(err);
      console.log(result);
      res.send(result);
    });
  });
});
app.get('/DATA/U_FAVORITES', function (req, res, next) {
  con.connect(function(err) {
    if (err) console.log(err);
    console.log("Connected!");
    var sql = tmpUserData;
    con.query(sql, function (err, result) {
      if (err) console.log(err);
      console.log(result);
      res.send(result);
    });
  });
});
app.get('/DATA/U_SHOWS', function (req, res, next) {
  con.connect(function(err) {
    if (err) console.log(err);
    console.log("Connected!");
    var sql = tmpVUserData;
    con.query(sql, function (err, result) {
      if (err) console.log(err);
      console.log(result);
      res.send(result);
    });
  });
});

//FORM DATA
app.post('/U_Favorites', urlencodedParser, function (req, res, next) {
    var sql = "SELECT BNAME,IMAGE FROM SAVANT JOIN FAVORITES JOIN BAND WHERE FAVORITES.SID = SAVANT.SID AND SNAME LIKE '" + req.body.name + "%' AND BAND.BID = FAVORITES.BID;";
    tmpUserData = sql;
    res.sendFile(__dirname + "/views/pages/U_Favorites_loaded.html");
});
app.post('/U_Shows', urlencodedParser, function (req, res, next) {
  var sql = 'SELECT * FROM SAVANT JOIN `SHOW` JOIN ATTENDES JOIN VENUE WHERE VENUE.VID = VENUE AND ATTENDES.SID = SAVANT.SID AND `SHOW`.SHID  = ATTENDES.SHID AND SNAME LIKE "' + req.body.name + '%";'
  tmpUserData = sql;
  res.sendFile(__dirname + "/views/pages/U_Shows_load.html");
});
app.post('/VENUES', urlencodedParser, function (req, res, next) {
  var sql = 'SELECT * FROM `SHOW` JOIN BAND WHERE `SHOW`.OPENER = Band.BID AND `SHOW`.LOCATION LIKE "' + req.body.name + '%";'
  tmpVUserData = sql;
  res.sendFile(__dirname + "/views/pages/V_Shows_load.html");
});

//REPLACE THE SQL CALLS IN THIS WITH ONES TO ADD A FAVORITE RELATION
app.post('/Singles', urlencodedParser, function (req, res, next) {
  //replace command  with the one to get the fav bands, and then uncomment both lines
  var sql = 'Insert into favorites values((Select SID from Savant where Savant.Sname like "' + req.body.name + '%"), (Select Bid from Band where Band.Bname like "' + req.body.artist + '%"), 1);';
  console.log("sending favorite");
  con.connect(function(err) {
    if (err) console.log(err);
    console.log("Connected!");
    con.query(sql, function (err, result) {
      if (err) console.log(err);
      console.log(result);
    });
  });
  res.sendFile(__dirname + "/views/pages/U_Favorites_loaded.html");
});
app.post('/Bands', urlencodedParser, function (req, res, next) {
  //replace command  with the one to get the fav bands, and then uncomment both lines
  var sql = 'Insert into favorites values((Select SID from Savant where Savant.Sname like "' + req.body.name + '%"), (Select Bid from Band where Band.Bname like "' + req.body.artist + '%"), 1);';
  console.log("sending favorite");
  con.connect(function(err) {
    if (err) console.log(err);
    console.log("Connected!");
    con.query(sql, function (err, result) {
      if (err) console.log(err);
      console.log(result);
    });
  });
  res.sendFile(__dirname + "/views/pages/U_Favorites_loaded.html");
});


app.post('/SignUp', urlencodedParser, function (req, res, next) {
  //comes with .ID, .favoriteGenre, .name .age .location
  var sql = 'Insert INTO Savant values(' + req.body.id + ', "' + req.body.favoriteGenre + '", "' + req.body.location + '", ' + req.body.age + ', "' + req.body.name + '");'
  con.connect(function(err) {
    if (err) console.log(err);
    console.log("Connected!");
    con.query(sql, function (err, result) {
      if (err) console.log(err);
      console.log(result);
    });
  });
  res.redirect("/USER");
});

//ABOUT IMAGE
app.get('/Images/TheArchitects', function(req,res,next){
  res.sendFile(__dirname + "/views/Images/group.jpg");
})

//SENDING GRAPHICAL CONTENT
app.get('/', function (req, res, next) {
  res.sendFile(__dirname + "/views/pages/Home.html");
});

app.get('/Bands', function (req, res, next) {
  res.sendFile(__dirname + "/views/pages/A_Bands.html");
});

app.get('/Artists', function (req, res, next) {
  res.sendFile(__dirname + "/views/pages/Artists.html");
});

app.get('/Singles', function (req, res, next) {
  res.sendFile(__dirname + "/views/pages/A_Singles.html");
});


app.get('/Genres', function (req, res, next) {
  res.sendFile(__dirname + "/views/pages/Genres.html");
});

app.get('/Venues', function (req, res, next) {
  res.sendFile(__dirname + "/views/pages/Venues.html");
});

app.get('/About', function (req, res, next) {
  res.sendFile(__dirname + "/views/pages/About.html");
});

app.get('/G_Rock', function (req, res, next) {
  res.sendFile(__dirname + "/views/pages/G_Rock.html");
});

app.get('/G_Hiphop', function (req, res, next) {
  res.sendFile(__dirname + "/views/pages/G_Hiphop.html");
});

app.get('/G_Electronic', function (req, res, next) {
  res.sendFile(__dirname + "/views/pages/G_Electronic.html");
});
app.get('/User', function (req, res, next) {
  res.sendFile(__dirname + "/views/pages/User.html");
});
app.get('/U_Shows', function (req, res, next) {
  res.sendFile(__dirname + "/views/pages/U_Shows.html");
});
app.get('/U_Favorites', function (req, res, next) {

  res.sendFile(__dirname + "/views/pages/U_Favorites.html");
});
app.get('/U_Favorites_Loaded', function(req,res,next){
  res.sendFile(__dirname + "/views/pages/U_Favorites_loaded.html");
});
app.get('/Signup', function(req,res,next){
  res.sendFile(__dirname + "/views/pages/SignUp.html");
});

//Server Run
app.listen(port, function(){
  console.log("Krishon is on the run you better go get him.." );
});
