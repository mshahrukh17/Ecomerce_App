// ignore_for_file: file_names, avoid_print, avoid_unnecessary_containers, use_key_in_widget_constructors, prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:carousel_slider/carousel_slider.dart';
import 'package:ecomerce_app_3/Widgets/TextWidget.dart';
import 'package:flutter/material.dart';

class CarouselExample extends StatelessWidget {
  final List<String> imgList = [
    'assets/images/slider.png',
    'assets/images/slider.png',
    'assets/images/slider.png',
  ];

  @override
  Widget build(BuildContext context) {
    return CarouselSlider(
      options: CarouselOptions(
        height: 165.0,
        autoPlayAnimationDuration: Duration(seconds: 1),
        autoPlay: true,
        enlargeCenterPage: true,
        // aspectRatio: 16 / 9,
        onPageChanged: (index, reason) {
          // print('Page changed to $index');
        },
      ),
      items: imgList
          .map((item) => Container(
                child: Stack(
                  children: [
                    Center(
                      child: Image.asset(item, fit: BoxFit.cover, width: 1000),
                    ),
                    Positioned(
                        bottom: 35,
                        left: 20,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "50-40% OFF",
                              style: TextWidget.buttontext(),
                            ),
                            Text(
                              "Now in (product) \nAll colours",
                              style: TextWidget.description(),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Container(
                                height: 28,
                                width: 100,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(4),
                                    color: Colors.transparent,
                                    border: Border.all(
                                        color: Colors.white,
                                        style: BorderStyle.solid)),
                                child: Center(
                                    child: Text(
                                  "Shop Now",
                                  style: TextWidget.description(),
                                ))),
                          ],
                        ))
                  ],
                ),
              ))
          .toList(),
    );
  }
}
