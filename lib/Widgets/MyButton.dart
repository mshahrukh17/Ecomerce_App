// ignore_for_file: prefer_const_constructors, file_names, prefer_typing_uninitialized_variables, must_be_immutable, avoid_unnecessary_containers, sized_box_for_whitespace, use_full_hex_values_for_flutter_colors

import 'package:ecomerce_app_3/Widgets/TextWidget.dart';
import 'package:flutter/material.dart';

class MyButton extends StatelessWidget {
  final void Function() onpress;
  var buttontext;
  var buybutton;
  MyButton(
      {super.key,
      required this.onpress,
      required this.buttontext,
      this.buybutton});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      width: 300,
      child: ElevatedButton(
          style: ElevatedButton.styleFrom(
              backgroundColor: Color(0xfffF83758),
              foregroundColor: Colors.white,
              elevation: 20,
              disabledForegroundColor: Colors.white,
              disabledBackgroundColor: Color(0xfffF83758),
              shadowColor: Color(0xfffF83758),
              side: BorderSide(
                  color: Color(0xfffF83758),
                  width: 1,
                  style: BorderStyle.solid)),
          onPressed: () {
            onpress();
          },
          child: Text(buttontext, style: TextWidget.buttontext())),
    );
  }
}
