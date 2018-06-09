var mysql = require('mysql');
var DB_NAME = 'test';

var pool  = mysql.createPool({
    host     : '140.119.19.40',
    user     : 'test',
    password : '1u4u,4'
});
function User(user){
    this.username = user.username;
    this.userpass = user.userpass;
};
User.prototype.save = function save(callback) {
        var user = {
            username: this.username,
            userpass: this.userpass
        };

        var cmd = "INSERT INTO userinfo(id, username, userpass) VALUES(0,?,?)";

        connection.query(cmd, [user.username, user.userpass], function (err,result) {
            if (err) {
                return;
            }

            connection.release();
            callback(err,result);                     
        });       
    };