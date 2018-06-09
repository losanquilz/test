var express = require('express');
var router = express.Router();

router.get('/', function(req, res, next) {
 var express = require('express');
 var router = express.Router();
<<<<<<< HEAD
 var session = require('express-session');



    router.get('/', function(req, res, next) {
		req.session.destroy();
		res.render('index', { title: 'Index' });
    });
=======
    res.render('index', { title: 'Index' });
});
>>>>>>> 4070ffeba7a4e0e768fe5ef9cec22b4acf25c900

module.exports = router; 
