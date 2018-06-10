var mysql = require('mysql');
var DB_NAME = 'test';

var pool  = mysql.createPool({
    host     : '140.119.19.40',
    user     : 'test',
    password : 'realone'
});
function User(user){
    this.username = user.username;
    this.password = user.password;
};
User.prototype.save = function save(callback) {
        var user = {
            username: this.username,
            password: this.password
        };

        var cmd = "INSERT INTO userinfo(id, username, password) VALUES(0,?,?)";

        connection.query(cmd, [user.username, user.password], function (err,result) {
            if (err) {
                return;
            }

            connection.release();
            callback(err,result);                     
        });       
    };
module.exports = router;