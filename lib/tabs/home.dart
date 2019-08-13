import 'package:flutter/material.dart';
import 'package:carousel_pro/carousel_pro.dart';

//imports home menu list here
import 'package:library_kelaniya/home_menu_items/home_menu_list.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Widget imageCarousel = new Container(
      height: 130.0,
      child: new Carousel(
        boxFit: BoxFit.cover,
        images: [
          AssetImage('assets/carousel1.jpg'),
          AssetImage('assets/carousel2.webp'),
          AssetImage('assets/carousel3.jpg'),
          AssetImage('assets/carousel4.jfif'),
        ],
        autoplay: true,
        // animationCurve: Curves.fastOutSlowIn,
        // animationDuration: Duration(milliseconds: 1000),
        dotSize: 4.0,
        dotColor: Colors.blueAccent,
        indicatorBgPadding: 2.0,
      ),
    );
    return Scaffold(
      body: new ListView(
        children: <Widget>[
          //image carousel
          imageCarousel,
          //padding widget
          new Padding(
            padding: const EdgeInsets.all(10.0),
            child: new Text(
              'Library Services Menu',
              textAlign: TextAlign.center,
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 15.0,
                  color: Colors.lightBlue[900]),
            ),
          ),
          //gridView
          Container(
            height: 320.0,
            child: HomeMenuList(),
          )
        ],
      ),
    );
  }
}
