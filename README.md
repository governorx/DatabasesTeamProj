This is a web app that we created that runs on a Node.js Backend
We use the mysql node package to make all the calls to our local database.

To run the package as a whole:
1. Have Node.js Install on machine
2. Go into Package folder
3. npm install mysql
4. Install Mysql workbench and run
  ALTER USER 'root'@'localhost' IDENTIFIED BY '123456789';
5. insert our commands
  using mysql -u root -p test < test_dump.sql
6. run node server.js

TO just see the commands that we have run:
Everything is inside test_dump.sql
This holds all of the sql commands that we have made.
