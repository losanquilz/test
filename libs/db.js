var mysql = require('mysql');
// 建立資料庫連線
var pool  = mysql.createPool({
    user: 'test',
    password: 'realone',
    host: '140.119.19.40',
    database: 'test', 
	port: '3306',
    waitForConnections : true, 
    connectionLimit : 10       
});
module.exports = pool;