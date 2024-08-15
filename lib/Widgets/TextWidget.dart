// ignore_for_file: prefer_const_constructors, file_names

import 'package:flutter/material.dart';

class TextWidget {
   static TextStyle nametitle(color) {
    return TextStyle(
      color: color,
      fontFamily: "semibold",
      fontWeight: FontWeight.bold,
    );
  }

  static TextStyle title() {
    return TextStyle(
      color: Colors.black,
      fontFamily: "semibold",
      fontWeight: FontWeight.bold,
      fontSize: 24.0
    );
  }

  static TextStyle description() {
    return TextStyle(
      color: Colors.black38,
      fontFamily: "semibold",
      fontWeight: FontWeight.w500,
      fontSize: 15.0
    );
  }
}
