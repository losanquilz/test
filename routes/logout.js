 var express = require('express');
 var router = express.Router();
 var session = require('express-session');



    router.get('/', function(req, res, next) {
		req.session.destroy();
		res.render('logout', { title: 'Logout' });
    });

module.exports = router; 
