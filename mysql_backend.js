var mysql = require("mysql");
var express = require('express');
var app = express();

app.set('view engine', 'ejs');

var bodyParser = require('body-parser')
app.use(bodyParser.urlencoded({ extended: false }));
var url = bodyParser.urlencoded({ extended: false })

var cors = require('cors');
app.use (cors());

var connection = mysql.createConnection
(
    {
        host: "localhost",
        port: 3306,
        database: "fashion",
        user: "root",
        password: "",
    }
);


//===================USER SEASON=================
app.get('/', function(req, res){
    connection.query("select * from season",function(err,rows){
        res.json(rows);
    });
})

// //===============USER SUBCATEGORY ================
app.get('/subcategory/:id', function(req, res){
    var sql = 'select * from subcategory where seasonid = ?';
    connection.query(sql,[req.params.id], function(err,rows){
        res.json(rows);
        });    
    })

// //================USER PRODUCT =====================
app.get('/product/:id', function(req, res){
    var sql = 'select * from product where subcategoryid = ?';
    connection.query(sql,[req.params.id], function(err,rows){
        res.json(rows);
        });    
    })

// //================PRODUCT DETAIL=====================
app.get('/productdetail/:id', function(req, res){
    var produk = 'select * from product where product.id = ?'
    // var sql = `SELECT color, size, stock FROM product
    // LEFT JOIN product_color ON product.id = product_color.productid
    // LEFT JOIN product_size ON product_color.id = product_size.colorid
    // WHERE product.id = ?`
    // var tes = `select product_size.id, colorid, size, stock from product_color LEFT JOIN 
    // product_size ON product_color.id = product_size.colorid
    // where productid = ?`
    var sql = 'select * from product_color where productid = ?';
    var sql2 = 'select * from product_size where colorid = ?';
    connection.query(produk,[req.params.id], function(err,rows1){
    connection.query(sql,[rows1[0].id], function(err,rows2){
    connection.query(sql2,[rows2[0].id], function(err,rows3){
       res.json({rows1,rows2,rows3});
            }) 
        }) 
    })  
})


//=============CART POST ===========

app.post('/cart', url, function(req, res){
    connection.query("insert into cart set ?",
    {
        namaproduk : req.body.namaproduk,
        hargaproduk : req.body.hargaproduk,
        warna : req.body.warna,
        ukuran : req.body.ukuran
    })
})




app.listen(3002);