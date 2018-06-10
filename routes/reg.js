var express = require('express');
var router = express.Router();
var mysql = require('mysql');
var pool = require('../libs/db.js');

var message = '';

router.get('/', function(req, res, next) {
  var pageNo = parseInt(req.query.pageNo);
  res.render('reg', { pageNo:pageNo, message:message});
});	

router.post('/', function(req, res, next) {
  var pageNo = parseInt(req.query.pageNo);
  var username = req.body['username'];
  var password = req.body['password'];
  pool.query('insert into admin set ?', [{  //新增資料
      username:username,
	  password:password
    }] , function(err, results) {
      if(err) throw err;
      res.redirect('/');
  });
});

module.exports = router;