var settings=require("../settings.js");
var Db=require("mongodb").Db;
var Connection=require("mongodb").Connection;
var Server=require("mongodb").Server;
module.exports = new Db(settings.database, new Server(settings.host,27017,{}));