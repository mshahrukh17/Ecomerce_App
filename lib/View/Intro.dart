// ignore_for_file: prefer_const_constructors, file_names, sized_box_for_whitespace, avoid_unnecessary_containers

import 'package:ecomerce_app_3/Widgets/BottomNavbar.dart';
import 'package:ecomerce_app_3/Widgets/MyButton.dart';
import 'package:ecomerce_app_3/Widgets/TextWidget.dart';
import 'package:flutter/material.dart';

class Intro extends StatelessWidget {
  const Intro({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            height: MediaQuery.of(context).size.height * 1,
            width: MediaQuery.of(context).size.width * 1,
            child: Image.asset(
              "assets/images/intro.png",
              fit: BoxFit.cover,
            ),
          ),
          Center(
              child: Padding(
            padding: const EdgeInsets.only(bottom: 25),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text(
                  "You want \nAuthentic, here \nyou go!",
                  style: TextWidget.title(Colors.white),
                  textAlign: TextAlign.center,
                ),
                SizedBox(
                  height: 20,
                ),
                Text(
                  "Find it here, buy it now!",
                  style: TextWidget.buttontext(),
                ),
                SizedBox(
                  height: 20,
                ),
                MyButton(
                    onpress: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => Navbar(),
                          ));
                    },
                    buttontext: "Get Started")
              ],
            ),
          ))
        ],
      ),
    );
  }
}
