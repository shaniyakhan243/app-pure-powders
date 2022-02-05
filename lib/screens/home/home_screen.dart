import 'package:app_pure/components/horizontal_listview.dart';
import 'package:app_pure/components/products.dart';
import 'package:flutter/material.dart';
import 'package:carousel_pro/carousel_pro.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    Widget image_carousel = new Container(
      height: 200.0,
      child: new Carousel(
        boxFit: BoxFit.cover,
        images: [
          AssetImage('assets/slider1.png'),
          AssetImage('assets/slider2.png'),
          AssetImage('assets/slider3.png'),
        ],
        autoplay: true,
        animationCurve: Curves.fastLinearToSlowEaseIn,
        animationDuration: Duration(milliseconds: 1000),
        dotSize: 4.0,
        dotColor: Colors.grey,
        indicatorBgPadding: 4.0,
        dotBgColor: Colors.transparent,
      ),
    );

    return Scaffold(
      appBar: new AppBar(
        elevation: 0.2,
        iconTheme: IconThemeData(color: Colors.black),
        backgroundColor: Colors.white,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              'assets/logo.png',
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

      drawer: new Drawer(
        child: new ListView(
          children: <Widget>[
            // header
            new UserAccountsDrawerHeader(accountName: Text('shaniya khan'), accountEmail: Text('khanshaniya243@gmail.com'),
              currentAccountPicture: GestureDetector(
                child: new CircleAvatar(
                  backgroundColor: Colors.grey,
                  child: Icon(Icons.person, color:Colors.white,),
                ),
              ),
              decoration: new BoxDecoration(
                color: Colors.black,
              ),
            ),
            //body
            InkWell(
              onTap:(){} ,
              child: ListTile(
                title: Text('Home'),
                leading: Icon(Icons.home),
              ),
            ),

            InkWell(
              onTap:(){} ,
              child: ListTile(
                title: Text('My Account'),
                leading: Icon(Icons.person),
              ),
            ),

            InkWell(
              onTap:(){} ,
              child: ListTile(
                title: Text('My Orders'),
                leading: Icon(Icons.shopping_basket),
              ),
            ),

            InkWell(
              onTap:(){} ,
              child: ListTile(
                title: Text('Products'),
                leading: Icon(Icons.dashboard),
              ),
            ),

            InkWell(
              onTap:(){} ,
              child: ListTile(
                title: Text('Favourites'),
                leading: Icon(Icons.favorite, color: Colors.red,),
              ),
            ),

            Divider(),

            InkWell(
              onTap:(){} ,
              child: ListTile(
                title: Text('Settings'),
                leading: Icon(Icons.settings, color: Colors.blueGrey,),
              ),
            ),

            InkWell(
              onTap:(){} ,
              child: ListTile(
                title: Text('About'),
                leading: Icon(Icons.help, color: Colors.blue,),
              ),
            ),

          ],
        ),
      ),

      body: new ListView(
        children: <Widget>[
          image_carousel,
          // padding widget
          new Padding(padding: const EdgeInsets.all(8.0),
            child: new Text('Flavors'),
          ),

          // Horizontal ListView begins here
          HorizonatalList(),

          // grid view
          Container(
            height: 320.0,
            child: Products(),
          ),
        ],
      ),
    );
  }
}

