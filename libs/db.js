var mysql = require('mysql');
// 建立資料庫連線

if (process.env.NODE_ENV === 'production') {
    var pool  = mysql.createPool({
        socketPath: "/run/mysqld/mysqld.sock",
        user: "test",
        password: "realone",
        database: "test",
        waitForConnections : true, 
        connectionLimit : 10
    });
} else {
    var pool  = mysql.createPool({
        host: "140.119.19.40",
        user: "test",
        password: "realone",
        database: "test",
        waitForConnections : true,
        connectionLimit : 10
    });
}
module.exports = pool;