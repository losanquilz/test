var db = require('../libs/db');
var GeneralErrors = require('../errors/GeneralErrors');
var Order_Product = require('../models/Order_Product');


function order(username,post,time){
    this.user=username;
    this.post=post;
    if(time){
        this.time=time;
    }else{
        this.time=new Date();
    }
}
order.getAll = function(month, cb) {
  console.log(month[0]);
  db.select("*")
  .from("Order_Form")
  // .where('systime','like',   '% %')
  .innerJoin('Order_Product', function() {
  this.on('Order_Product.Order_ID', '=', 'Order_Form.Orderform_ID')
  

})
  .map(function(row) {
  return new Order_Product({
    id: row.id,
    Order_ID : row.Order_ID,
    Product_ID : row.Product_ID,
    quantity : row.quantity
      });
    })
    .then(function(orders) {
      if(orders.length) {
        console.log(orders);
        // console.log(orders[].Quantity);
        cb(null, orders);
      } else {
        cb(new GeneralErrors.NotFound());
      }
    })
  .catch(function(err) {
    // All the error can be checked in this piece of code
    console.log(err);
  })
};


order.prototype.save=function save(callback){
    //存入mongodb的文档
    var post={
        user:this.user,
        post:this.post,
        time:this.time
    }
    mongodb.open(function(err,db){
        if(err){
            return callback(err);
        }
        //读取posts集合
        db.collection("posts",function(err,collection){
            if(err){
                mongodb.close();
                return callback(err);
            }
            //为user属性添加索引
            collection.ensureIndex("user");
            collection.insert(post,{safe:true},function(err){
                mongodb.close();
                callback(err,post);
            })
        })
    })
}
order.prototype.edit = function(req, cb) {
    db('Order_Form')
        .update({
            O_amount: this.amount
        })
        .where('Orderform_ID', req)
        .then(function () {
            cb(null);
        })
        .catch(function (err) {
            console.log(err);
        })
};
order.prototype.find=function(username,callback){
    mongodb.open(function(err,db){
        if(err){
            return callback(err);
        }
        //读取posts文档
        db.collection("posts",function(err,collection){
            if(err){
               mongodb.close();
                return callback(err);
            }
            //查找user属性为username的文档，如果为null则全部匹配
            var query={};
            if(username){
                query.user=username;
            }
            //按时间排序，并转成数组
            collection.find(query).sort({time:-1}).toArray(function(err,docs){
                mongodb.close();
                if(err){
                    callback(err,null);
                }
                //封装posts为Post对象
                var posts=[];
                docs.forEach(function(doc,index){
                    var post=new Post(doc.user,doc.post,doc.time);
                    posts.push(post);
                })
                callback(null,posts);
            })
        })
    })
}

module.exports = order;
