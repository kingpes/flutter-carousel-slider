import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

class SliderCarousel extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return CarouselSlider(
      height: 400.0,
      autoPlay: true,
      items: [
        'https://flutterlibrary.page.link/banner',
        'https://flutterlibrary.page.link/banner1',
        'https://flutterlibrary.page.link/banner2',
        'https://flutterlibrary.page.link/banner3',
        'https://flutterlibrary.page.link/banner4'
      ].map((url) {
        return Builder(
          builder: (BuildContext context) {
            return Container(
              width: MediaQuery.of(context).size.width,
              margin: EdgeInsets.symmetric(horizontal: 5.0),
              decoration: BoxDecoration(color: Colors.amber),
              child: Image.network(url, fit: BoxFit.fill),
            );
          },
        );
      }).toList(),
    );
  }
}

class SliderCarousel1 extends StatefulWidget {
  @override
  _SliderCarousel1State createState() => _SliderCarousel1State();
}

class _SliderCarousel1State extends State<SliderCarousel1> {
  CarouselSlider carouselSlider;
  int _current = 0;
  List imgList = [
    'https://flutterlibrary.page.link/hotel',
    'https://flutterlibrary.page.link/hotel1',
    'https://flutterlibrary.page.link/hotel2',
    'https://flutterlibrary.page.link/hotel3',
    'https://flutterlibrary.page.link/hotel4'
  ];
  List<T> map<T>(List list, Function handler) {
    List<T> result = [];
    for (var i = 0; i < list.length; i++) {
      result.add(handler(i, list[i]));
    }
    return result;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          carouselSlider = CarouselSlider(
            height: 400,
            initialPage: 0,
            enlargeCenterPage: true,
            autoPlay: true,
            reverse: true,
            enableInfiniteScroll: true,
            autoPlayInterval: Duration(seconds: 2),
            autoPlayAnimationDuration: Duration(microseconds: 2000),
            pauseAutoPlayOnTouch: Duration(seconds: 10),
            scrollDirection: Axis.horizontal,
            items: imgList.map((url) {
              return Builder(
                builder: (BuildContext context) {
                  return Container(
                    width: MediaQuery.of(context).size.width,
                    margin: EdgeInsets.symmetric(horizontal: 10),
                    decoration: BoxDecoration(color: Colors.green),
                    child: Image.network(
                      url,
                      fit: BoxFit.fill,
                    ),
                  );
                },
              );
            }).toList(),
            onPageChanged: (index) {
              setState(() {
                _current = index;
              });
            },
          ),
          SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: map<Widget>(imgList, (index, u) {
              return Container(
                width: 10,
                height: 10,
                margin: EdgeInsets.symmetric(vertical: 10, horizontal: 2),
                decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: _current == index ? Colors.redAccent : Colors.green),
              );
            }),
          ),
          SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              OutlineButton(
                onPressed: gotoPrevious,
                child: Text("<"),
              ),
              OutlineButton(
                onPressed: gotoNext,
                child: Text(">"),
              )
            ],
          )
        ],
      ),
    );
  }

  gotoPrevious() {
    carouselSlider.previousPage(
        duration: Duration(microseconds: 300), curve: Curves.ease);
  }

  gotoNext() {
    carouselSlider.nextPage(
        duration: Duration(microseconds: 300), curve: Curves.decelerate);
  }
}
