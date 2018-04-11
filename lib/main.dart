import 'package:flutter/material.dart';
import 'package:carousel/carousel.dart';
void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget testBGCarousel = new Container(
    child: new Carousel(
      children: [
        new AssetImage('images/img1.jpg'),
        new AssetImage('images/img2.jpg'),
        new AssetImage('images/img3.jpg'),
      ].map((bgImg) => new Image(image: bgImg, width: 1500.0, height: 1500.0, fit: BoxFit.cover)).toList(),
      displayDuration: const Duration(seconds: 1),
    ),
  );
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'Flutter Carousel',
      home: new Scaffold(
        appBar: new AppBar(
          title: new Text('Carousel Demo'),
        ),
        body: new Stack (
            children: <Widget>[
              new PageView(
                children: [testBGCarousel],
              ),
              new ListView(
                children: [
                  new Text('Text on top of the carousel'),
                ],
              ),
            ]
        ),
      ),
    );
  }
}