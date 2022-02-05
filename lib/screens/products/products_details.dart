import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class ProductDetails extends StatefulWidget {
  final product_details_name;
  final product_details_price;
  final product_details_old_price;
  final product_details_picture;

  ProductDetails({
    this.product_details_name,
    this.product_details_old_price,
    this.product_details_picture,
    this.product_details_price
  });

  @override
  _ProductDetailsState createState() => _ProductDetailsState();
}

class _ProductDetailsState extends State<ProductDetails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        elevation: 0.2,
        iconTheme: IconThemeData(color: Colors.black),
        backgroundColor: Colors.white,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              'assets/images/logo.png',
              fit: BoxFit.contain,
              height: 20,
            ),
          ],

        ),
        actions: <Widget>[
          new IconButton(icon: Icon(Icons.search, color:Colors.black,), onPressed: (){} ),
          new IconButton(icon: Icon(Icons.shopping_cart, color:Colors.black,), onPressed: (){} ),
        ],
      ),

      body: new ListView(
        children: <Widget>[
          new Container(
            height: 300.0,
            child: GridTile(
              child: Container(
                color: Colors.white70,
                child: Image.asset(widget.product_details_picture),
              ),
              footer: new Container(
                color: Colors.white70,
                child: ListTile(
                  leading: new Text(widget.product_details_name,
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16.0,) ,textAlign: TextAlign.center,
                  ),
                  title: new Row(
                    children: <Widget>[
                      Expanded(
                        child: new Text("\$${widget.product_details_price}",textAlign: TextAlign.end),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),

          // ================ the first drop down button ===================
          Row(
            children: <Widget>[
              // ======== Description Button =========
              Expanded(
                child: MaterialButton(onPressed: (){
                  showDialog(context: context, builder: (context){
                    return new AlertDialog(
                      title: new Text("Description"),
                      content: new Text("Here's the description of the product . We need to update this container. but right now as i am just putting up this text here in order to test this design.",),
                      actions: <Widget>[
                        new MaterialButton(onPressed: (){
                          Navigator.of(context).pop(context);
                        },
                          child: new Text("close",style: TextStyle(color: Colors.blueAccent,),
                          ),
                        ),
                      ],
                    );
                  });
                },
                  color: Colors.white,
                  textColor: Colors.grey,
                  child: Row(
                    children: <Widget>[
                      Expanded(
                        child: new Text("Description"),
                      ),

                      Expanded(
                        child: Align(
                          alignment: Alignment.centerRight,
                          child: new Icon(Icons.arrow_drop_down),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],

          ),

          // ================ the second drop down button ===================
          Row(
            children: <Widget>[
              // ======== Ingredients Button =========
              Expanded(
                child: MaterialButton(onPressed: (){
                  showDialog(context: context, builder: (context){
                    return new AlertDialog(
                      title: new Text("Ingredients"),
                      content: new Text("Here's the ingredients of the product . We need to update this container. but right now as i am just putting up this text here in order to test this design.",),
                      actions: <Widget>[
                        new MaterialButton(onPressed: (){
                          Navigator.of(context).pop(context);
                        },
                          child: new Text("close",style: TextStyle(color: Colors.blueAccent,),
                          ),
                        ),
                      ],
                    );
                  });
                },
                  color: Colors.white,
                  textColor: Colors.grey,
                  child: Row(
                    children: <Widget>[
                      Expanded(
                          child: new Text("Ingredients")
                      ),

                      Expanded(
                        child: Align(
                          alignment: Alignment.centerRight,
                          child: new Icon(Icons.arrow_drop_down),),
                      ),
                    ],
                  ),
                ),
              ),
            ],

          ),
          // ================ the first drop down button ===================
          Row(
            children: <Widget>[
              // ======== Directions Button =========
              Expanded(
                child: MaterialButton(onPressed: (){
                  showDialog(context: context, builder: (context){
                    return new AlertDialog(
                      title: new Text("Directions"),
                      content: new Text("Here's the directions to use the product . We need to update this container. but right now as i am just putting up this text here in order to test this design.",),
                      actions: <Widget>[
                        new MaterialButton(onPressed: (){
                          Navigator.of(context).pop(context);
                        },
                          child: new Text("close",style: TextStyle(color: Colors.blueAccent,),
                          ),
                        ),
                      ],
                    );
                  });
                },
                  color: Colors.white,
                  textColor: Colors.grey,
                  child: Row(
                    children: <Widget>[
                      Expanded(
                          child: new Text("Directions")
                      ),

                      Expanded(
                        child: Align(
                          alignment: Alignment.centerRight,
                          child: new Icon(Icons.arrow_drop_down),),
                      ),
                    ],
                  ),
                ),
              ),
            ],

          ),


          // ================ the first drop down button ===================
          Row(
            children: <Widget>[
              // ======== Mechanism Button =========
              Expanded(
                child: MaterialButton(onPressed: (){
                  showDialog(context: context, builder: (context){
                    return new AlertDialog(
                      title: new Text("Mechanism"),
                      content: new Text("Here's the mechanism of the product . We need to update this container. but right now as i am just putting up this text here in order to test this design.",),
                      actions: <Widget>[
                        new MaterialButton(onPressed: (){
                          Navigator.of(context).pop(context);
                        },
                          child: new Text("close",style: TextStyle(color: Colors.blueAccent,),
                          ),
                        ),
                      ],
                    );
                  });
                },
                  color: Colors.white,
                  textColor: Colors.grey,
                  child: Row(
                    children: <Widget>[
                      Expanded(
                          child: new Text("Mechanism")
                      ),

                      Expanded(
                        child: Align(
                          alignment: Alignment.centerRight,
                          child: new Icon(Icons.arrow_drop_down),),
                      ),
                    ],
                  ),
                ),
              ),
            ],

          ),


          // ================ the first drop down button ===================
          Row(
            children: <Widget>[
              // ======== Infographics  Button =========
              Expanded(
                child: MaterialButton(onPressed: (){
                  showDialog(context: context, builder: (context){
                    return new AlertDialog(
                      title: new Text("Infographics"),
                      content: new Text("Here's the infographics of the product . We need to update this container. but right now as i am just putting up this text here in order to test this design.",),
                      actions: <Widget>[
                        new MaterialButton(onPressed: (){
                          Navigator.of(context).pop(context);
                        },
                          child: new Text("close",style: TextStyle(color: Colors.blueAccent,),
                          ),
                        ),
                      ],
                    );
                  });
                },
                  color: Colors.white,
                  textColor: Colors.grey,
                  child: Row(
                    children: <Widget>[
                      Expanded(
                          child: new Text("Infographics")
                      ),

                      Expanded(
                        child: Align(
                          alignment: Alignment.centerRight,
                          child: new Icon(Icons.arrow_drop_down),),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
          Row(
            children: <Widget>[
              Expanded(
                child: MaterialButton(onPressed: (){},
                    color: Colors.black,
                    textColor: Colors.white,
                    elevation: 2.5,
                    child: new Text("Inquire Now")
                ),
              ),

            ],
          ),
        ],
      ),
    );
  }
}
