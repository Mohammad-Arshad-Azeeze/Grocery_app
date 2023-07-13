import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Carousel Slider',
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text('Flutter Carousel Slider Example'),
        ),
        body:
        CarouselSlider.builder(
          itemCount: 15,
          itemBuilder: (BuildContext context, int itemIndex, int pageViewIndex) =>
              Container(
                child: Text(itemIndex.toString()),
              ),
            options: CarouselOptions(
          height: 400,
          aspectRatio: 16/9,
          viewportFraction: 0.8,
          initialPage: 0,
          enableInfiniteScroll: true,
          reverse: false,
          autoPlay: true,
          autoPlayInterval: Duration(seconds: 3),
          autoPlayAnimationDuration: Duration(milliseconds: 800),
          autoPlayCurve: Curves.fastOutSlowIn,
          enlargeCenterPage: true,
          enlargeFactor: 0.3,
          scrollDirection: Axis.horizontal,
        )
        )
      ),
    );
  }
}