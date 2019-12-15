# flutter_font_awesome

    A carousel slider widget, support infinite scroll and custom child widget, with auto play feature.

## [Demo Video](https://youtu.be/fQNxLqgr8iQ)
[![Watch the video](https://img.youtube.com/vi/fQNxLqgr8iQ/maxresdefault.jpg)](https://youtu.be/fQNxLqgr8iQ)

## Installing
    dependencies:    
        carousel_slider: ^1.3.1

## Import
    import 'package:carousel_slider/carousel_slider.dart';

## Usage
```dart
CarouselSlider(
  height: 400.0,
  items: [1,2,3,4,5].map((i) {
    return Builder(
      builder: (BuildContext context) {
        return Container(
          width: MediaQuery.of(context).size.width,
          margin: EdgeInsets.symmetric(horizontal: 5.0),
          decoration: BoxDecoration(
            color: Colors.amber
          ),
          child: Text('text $i', style: TextStyle(fontSize: 16.0),)
        );
      },
    );
  }).toList(),
)
```
## Example
[example.dart](https://youtu.be/fQNxLqgr8iQ)

### See more
- [Homepage](https://kingpesdev.firebaseapp.com/)
- [Github](https://github.com/kingpes) 