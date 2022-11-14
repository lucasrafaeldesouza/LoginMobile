import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class Carousel extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text("Soluções"),
        ),
        body: CarouselSlider(
          options: CarouselOptions(
            viewportFraction: 0.8,
            // height: 250.0,
            autoPlay: true,
          ),
          items: ["images/crm.png", "images/dash.png", "images/whats.png"]
              .map((e) {
            return Builder(
              builder: (BuildContext context) {
                return Container(
                  // width: MediaQuery.of(context).size.width,
                  child: Image.asset(
                    e,
                    fit: BoxFit.cover,
                  ),
                );
              },
            );
          }).toList(),
        ),
      ),
    );
  }
}
