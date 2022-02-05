import 'package:app_pure/screens/products/products_details.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Products extends StatefulWidget {
  @override
  _ProductsState createState() => _ProductsState();
}

class _ProductsState extends State<Products> {
  var product_list = [
    {
      "name":"Mass L 30",
      "picture":"assets/products/massL30.png",
      "old_price":150,
      "price":100,

    },
    {
      "name":"Organic I 90 ",
      "picture":"assets/products/organicI90.png",
      "old_price":150,
      "price":100,

    },
    {
      "name":"Organic P 80",
      "picture":"assets/products/organicP80.png",
      "old_price":150,
      "price":100,

    },
    {
      "name":"Organic V 80",
      "picture":"assets/products/organicV80.png",
      "old_price":150,
      "price":100,

    },
    {
      "name":"Organic W 80 ",
      "picture":"assets/products/organicW80.png",
      "old_price":150,
      "price":100,

    },
    {
      "name":"Protein T 90",
      "picture":"assets/products/proteinT90.png",
      "old_price":150,
      "price":100,

    },
    {
      "name":"Whey H 80",
      "picture":"assets/products/wheyH80.png",
      "old_price":150,
      "price":100,

    },
    {
      "name":"Whey I 90 100 gm",
      "picture":"assets/products/wheyi901000g.png",
      "old_price":150,
      "price":100,

    },
    {
      "name":"Whey I 90 2300 gm",
      "picture":"assets/products/wheyi902300g.png",
      "old_price":150,
      "price":100,

    },
    {
      "name":"Whey P 80 1000 gm",
      "picture":"assets/products/wheyp801000g.png",
      "old_price":150,
      "price":100,

    },
  ];
  @override
  Widget build(BuildContext context) {
    return GridView.builder(
        itemCount: product_list.length,
        gridDelegate: new SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
        itemBuilder: (BuildContext context, int index){
          return Single_product(
            product_name: product_list[index]['name'],
            product_picture: product_list[index]['picture'],
            product_old_price: product_list[index]['old_price'],
            product_price: product_list[index]['price'],
          );
        });
  }
}

class Single_product extends StatelessWidget {
  final product_name;
  final product_picture;
  final product_price;
  final product_old_price;

  Single_product({
    this.product_name,
    this.product_picture,
    this.product_old_price,
    this.product_price,
  });
  @override
  Widget build(BuildContext context) {
    return Card(
      child: Hero(
        tag: product_name,
        child: InkWell(onTap: ()=> Navigator.of(context).push(new MaterialPageRoute(
          // here we are passing the values of the products to the product details page
            builder: (context)=> new ProductDetails(
                product_details_name: product_name,
                product_details_picture: product_picture,
                product_details_old_price: product_old_price,
                product_details_price: product_price
            ))), // wehn user clicks on picture of product it goes to another page i.e. product_details.dart
          child: GridTile(
              footer: Container(
                color: Colors.transparent,
                padding: EdgeInsets.only(top: 0.0),
                child: ListTile(

                  leading: Text(product_name, style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15.0), textAlign: TextAlign.center,),

                  title: Text('\$$product_price', style: TextStyle(color: Colors.grey, fontSize: 15.0), textAlign: TextAlign.end,),
                ),
              ),
              child: Image.asset(product_picture,
                height: 500.0,
              )),
        ),
      ),
    );
  }
}

