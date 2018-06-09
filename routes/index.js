 var express = require('express');
 var router = express.Router();
 var session = require('express-session');



    router.get('/', function(req, res, next) {
		req.session.destroy();
		res.render('index', { title: 'Index' });
    });

module.exports = router; 
