// ignore_for_file: camel_case_types, prefer_const_constructors, must_be_immutable, prefer_typing_uninitialized_variables, file_names, use_full_hex_values_for_flutter_colors

import 'package:flutter/material.dart';

class TextFormFieldWidget extends StatelessWidget {
  var labeltext;
  TextEditingController controller;
  var suffixicon;
  var prefixicon;
  bool obscuretext;
  final String? Function(String?)? validator;
   TextFormFieldWidget({super.key,
   this.labeltext,
   required this.controller,
   this.prefixicon,
   this.suffixicon,
   this.obscuretext = false, 
   this.validator,
   });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: TextFormField(
        controller: controller,
        validator: validator,
        obscureText: obscuretext,
        cursorColor: Color(0xfffF83758),
        decoration: InputDecoration(
          suffixIcon:suffixicon,
          prefixIcon: prefixicon,
          labelText: labeltext,
          labelStyle: TextStyle(
            fontFamily: "light",
            color: Colors.black38
          ),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide: BorderSide(
              color: Colors.red,
              width: 4
            ),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide: BorderSide(
              color: Color(0xfffF83758),
              width: 4,
            )
          ),
        ),
      ),
    );
  }
}