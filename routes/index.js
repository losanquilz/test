var express = require('express');
var router = express.Router();

router.get('/', function(req, res, next) {
 var express = require('express');
 var router = express.Router();
    res.render('index', { title: 'Index' });
});

module.exports = router; 
