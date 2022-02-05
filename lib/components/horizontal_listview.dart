import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HorizonatalList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 120.0,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: <Widget>[
          Category(
            image_location: 'assets/vanilla.png',
            image_caption: 'Vanilla',
          ),

          Category(
            image_location: 'assets/chocolate.png',
            image_caption: 'Chocolate',
          ),

          Category(
            image_location: 'assets/strawberry.png',
            image_caption: 'Strawberry',
          ),

          Category(
            image_location: 'assets/coffee.png',
            image_caption: 'Coffee',
          ),

          Category(
            image_location: 'assets/oreo.png',
            image_caption: 'Cookie',
          ),
        ],
      ),
    );
  }
}

class Category extends StatelessWidget {
  final image_location;
  final image_caption;

  Category({
    this.image_location,
    this.image_caption

  });

  @override
  Widget build(BuildContext context) {
    return Padding(padding: const EdgeInsets.all(2.0),
      child: InkWell(onTap: (){},
        child: Container(
          width: 120.0,
          child: ListTile(
            title: Image.asset(image_location,
              width: 100.0,
              height: 80.0,
            ),
            subtitle: Container(
              alignment: Alignment.topCenter,
              child: Text(image_caption, style: TextStyle(color: Color(0xff000000)),),
            ),
          ),
        ),
      ),
    );
  }
}
