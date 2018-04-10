// From settings.js
//module.exports={
//    user:"admin",
//    database:"Scrapy",
//    host:"140.119.19.40",
//	password:"y/ gj6z/ "
//}


// var settings=require("../settings.js");
// var Db=require("mongodb").Db;
// var Connection=require("mongodb").Connection;
// var Server=require("mongodb").Server;
// module.exports = new Db(settings.database, new Server(settings.host,27017,{}));

const MongoClient = require('mongodb').MongoClient;
const assert = require('assert');
const f = require('util').format;

const host = encodeURIComponent('140.119.19.40');
const port = encodeURIComponent('27017');
const dbName = encodeURIComponent('Scrapy');
const user = encodeURIComponent('admin');
const password = encodeURIComponent('y/ gj6z/ ');
const authMechanism = 'DEFAULT';


// const MongoClient = require('mongodb').MongoClient;
// const f = require('util').format;
// const assert = require('assert');

// const user = encodeURIComponent('admin');
// const password = encodeURIComponent('y/ gj6z/ ');
// const authMechanism = 'DEFAULT';

// // Connection URL

// const url = f('mongodb://%s:%s@140.119.19.40:27017/?authMechanism=%s',
  // user, password, authMechanism);
// console.log(url);
// // Use connect method to connect to the Server
// MongoClient.connect(url, function(err, client) {
  // assert.equal(null, err);
  // console.log("Connected correctly to server");

  // client.close();
// });


// // Connection URL
// const url = f('mongodb://%s:%s@%s:%s/%s?authMechanism=%s',
  // user, password, host, port, dbName, authMechanism);

// // Use connect method to connect to the Server
// MongoClient.connect(url, function(err, client) {
  // assert.equal(null, err);
  // console.log("Connected correctly to server");
  // const db = client.db(dbName);
  // client.close();
// });


// (async function() {
  // // Connection URL
  // const url = 'mongodb://140.119.19.40:27017/Scrapy';
  // // Database Name
  // const dbName = 'Scrapy';
  // let client;

  // try {
    // // Use connect method to connect to the Server
    // client = await MongoClient.connect(url);

    // const db = client.db(dbName);
  // } catch (err) {
    // console.log(err.stack);
  // }

  // if (client) {
    // client.close();
  // }
// })();