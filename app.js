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

var app = express();

// view engine setup
app.set('views', path.join(__dirname, 'views'));
app.set('view engine', 'ejs');
app.use(session({secret : 'session'})); //Do the auth logic 

// uncomment after placing your favicon in /public
// app.use(favicon(path.join(__dirname, 'public', 'favicon.ico')));
app.use(logger('dev'));
app.use(bodyParser.json());
app.use(bodyParser.urlencoded({ extended: false }));
app.use(cookieParser());
app.use(express.static(path.join(__dirname, 'public')));

app.use('/', login);
app.use('/reg', reg);

app.use(function(req, res, next) {
   if(req.session.username !== undefined) {
	   next();
   }
   else{
      res.redirect('/');
   }
});

app.use('/index', routes);
// app.use('/order', order);
// app.use('/newOrder', newOrder);
app.use('/introduction', introduction);
app.use('/mining', mining);
app.use('/chart', chart);
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
    password: "realone",
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




module.exports = app;
