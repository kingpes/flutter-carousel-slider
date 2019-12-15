import 'package:flutter/material.dart';

import 'carousel-slider.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Home(),
    );
  }
}

class Home extends StatelessWidget {
  final carousel = SliderCarousel();
  final carousel1 = SliderCarousel1();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Carousel Slider"),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          SizedBox(
            height: MediaQuery.of(context).size.width / 3,
            width: MediaQuery.of(context).size.width,
            child: carousel,
          ),
          SizedBox(height: 20),
          carousel1
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.blue,
        currentIndex: 0,
        type: BottomNavigationBarType.fixed,
        fixedColor: Colors.black54,
        items: [
          BottomNavigationBarItem(title: Text("Home"), icon: Icon(Icons.home)),
          BottomNavigationBarItem(
              title: Text("Post"), icon: Icon(Icons.cloud_upload)),
          BottomNavigationBarItem(title: Text("Page"), icon: Icon(Icons.pages))
        ],
      ),
    );
  }
}
