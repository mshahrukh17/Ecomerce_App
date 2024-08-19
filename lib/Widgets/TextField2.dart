// ignore_for_file: file_names, prefer_const_constructors, must_be_immutable, prefer_typing_uninitialized_variables, use_full_hex_values_for_flutter_colors

import 'package:flutter/material.dart';

class TextFieldWidget2 extends StatelessWidget {
  TextEditingController controller;
  var suffixicon;
  var prefixicon;
  var hinttext;
  TextFieldWidget2({
    super.key,
    required this.controller,
    this.prefixicon,
    this.suffixicon,
    this.hinttext,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: TextFormField(
        controller: controller,
        cursorColor: Color(0xfffF83758),
        decoration: InputDecoration(
          suffixIcon: suffixicon,
          prefixIcon: prefixicon,
          hintText: hinttext,
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide: BorderSide(color: Colors.red, width: 4),
          ),
          focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
              borderSide: BorderSide(
                color: Color(0xfffF83758),
                width: 4,
              )),
        ),
      ),
    );
  }
}
