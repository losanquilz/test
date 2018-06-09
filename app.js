var express = require('express');
var path = require('path');
var favicon = require('serve-favicon');
var logger = require('morgan');
var cookieParser = require('cookie-parser');
var bodyParser = require('body-parser');
var session = require('express-sessions');
var routes = require('./routes/index');
var introduction = require('./routes/introduction');
var mining = require('./routes/mining');
var chart = require('./routes/chart');
var login = require('./routes/login');
var reg = require('./routes/reg');
var logout = require('./routes/logout');

// var newOrder=require('./routes/newOrder');
//var searchOrder = require('./routes/searchOrder');
// var result = require('./routes/result');
// var searchcustomer = require('./routes/searchCustomer');
// var customer = require('./routes/customer');
// var inventory = require('./routes/inventory');
// var MongoStore = require('connect-mongo')(connect)
// var settings = require('./settings');


var app = express();

// view engine setup
app.set('views', path.join(__dirname, 'views'));
app.set('view engine', 'ejs');
// app.use(session({secret : 'session'}));

// uncomment after placing your favicon in /public
// app.use(favicon(path.join(__dirname, 'public', 'favicon.ico')));
app.use(logger('dev'));
app.use(bodyParser.json());
app.use(bodyParser.urlencoded({ extended: false }));
app.use(cookieParser());
app.use(express.static(path.join(__dirname, 'public')));
app.use('/', routes);


// app.use('/order', order);
// app.use('/newOrder', newOrder);
app.use('/reg', reg);
app.use('/introduction', introduction);
app.use('/mining', mining);
app.use('/chart', chart);
app.use('/login', login);
app.use('/logout', logout);	
// app.use('/result', result);
// app.use('/searchcustomer',searchcustomer);
// app.use('/customer',customer);
// app.use('/inventory',inventory );
// app.get('/searchOrder/delete/:id', searchOrder);
// app.get('/searchOrder/edit/:id', searchOrder);
// app.post('/customers/edit/:id',searchOrder);

var mysql = require("mysql");
var con = mysql.createConnection({
    host: "140.119.19.40",
    user: "test",
    password: "1u4u,4",
    database: "test"
});

 con.connect(function(err) {
    if (err) {
        console.log('connecting error');
        return;
    }
    console.log('connecting success');
});


app.use(function(req, res, next) {
    req.con = con;
    next();
});

// catch 404 and forward to error handler
app.use(function(req, res, next) {
  var err = new Error('Not Found');
  err.status = 404;
  next(err);
});

// error handlers

// development error handler
// will print stacktrace
if (app.get('env') === 'development') {
  app.use(function(err, req, res, next) {
    res.status(err.status || 500);
    res.render('error', {
      message: err.message,
      error: err
    });
  });
}

// production error handler
// no stacktraces leaked to user
app.use(function(err, req, res, next) {
  res.status(err.status || 500);
  res.render('error', {
    message: err.message,
    error: {}
  });
});

// $(document).ready(function(){
// 	$.ajax({
// 		url: "http://localhost/chartjs/data.php",
// 		method: "GET",
// 		success: function(data) {
// 			console.log(data);
// 			var player = [];
// 			var score = [];
//
// 			for(var i in data) {
// 				player.push("Player " + data[i].playerid);
// 				score.push(data[i].score);
// 			}
//
// 			var chartdata = {
// 				labels: player,
// 				datasets : [
// 					{
// 						label: 'Player Score',
// 						backgroundColor: 'rgba(200, 200, 200, 0.75)',
//             borderColor: 'rgba(200, 200, 200, 0.75)',
// 						hoverBackgroundColor: 'rgba(200, 200, 200, 1)',
// 						hoverBorderColor: 'rgba(200, 200, 200, 1)',
// 						data: score
// 					}
// 				]
// 			};
//
// 			var ctx = $("#mycanvas");
//
// 			var barGraph = new Chart(ctx, {
// 				type: 'bar',
// 				data: chartdata
// 			});
// 		},
// 		error: function(data) {
// 			console.log(data);
// 		}
// 	});
// });


module.exports = app;
