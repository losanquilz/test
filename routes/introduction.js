var express = require('express');
var router = express.Router();
// var order = require('../models/order');
// var Order_Product = require('../models/Order_Product');
// var RFM=require('../models/RFM');


    router.get('/', function(req, res, next) {
		res.render('introduction', { title: 'Introduction' });
    });

module.exports = router;
