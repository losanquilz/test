var express = require('express');
var router = express.Router();

router.get('/', function (req, res, next) {
    console.log('read introduction')
    res.render('introduction', { title: 'Index' });
});

module.exports = router;
