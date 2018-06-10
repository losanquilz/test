var express = require('express');
var router = express.Router();
var mysql = require('mysql');
var pool = require('../libs/db.js');

var app = express();
var cookieParser = require('cookie-parser');
var session = require('express-session');
app.use(cookieParser());
app.use(session({
  secret: "fd34s@!@dfa453f3DF#$D&W",
  resave: true,
  saveUninitialized: true
}));
app.use(router);

var messages ='';  
router.get('/', function(req, res, next) {
  var pageNo = parseInt(req.query.pageNo);  
  if (req.session.username) {  
    res.redirect('/');  
  } else {  
    res.render('login', {messages:messages, pageNo:pageNo});
  }
});

router.post('/', function(req, res) {  
  var pageNo = parseInt(req.query.pageNo);
  var username = req.body['username']; 
  var password = req.body['password']; 
  pool.query("select username,password from admin where username=?",[username], function(err, results) {  
    if(err) throw err;
    if(results.length == 0) {  
      messages = "帳號不正確！"
      res.render('login', {messages:messages, pageNo:pageNo})
    } else if(results[0].password != password) {  
      messages = "密碼不正確！"
      res.render('login', {messages:messages, pageNo:pageNo})
    } else {  
      req.session.username = username;  
      res.redirect('/index');
	  }
  });
});

module.exports = app;