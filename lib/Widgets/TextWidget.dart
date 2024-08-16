// ignore_for_file: prefer_const_constructors, file_names, non_constant_identifier_names, avoid_types_as_parameter_names

import 'package:flutter/material.dart';

class TextWidget {
   static TextStyle nametitle(color) {
    return TextStyle(
      color: color,
      fontFamily: "semibold",
      fontWeight: FontWeight.bold,
      fontSize: 20.0
    );
  }

  static TextStyle title(Color) {
    return TextStyle(
      color: Color,
      fontFamily: "semibold",
      fontWeight: FontWeight.bold,
      fontSize: 30.0
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

  static TextStyle buttontext() {
    return TextStyle(
      color: Colors.white,
      fontFamily: "semibold",
      fontWeight: FontWeight.bold,
      fontSize: 20.0
    );
  }
}
