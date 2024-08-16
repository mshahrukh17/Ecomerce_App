// ignore_for_file: prefer_const_constructors, file_names, avoid_print

import 'package:ecomerce_app_3/Widgets/MyButton.dart';
import 'package:ecomerce_app_3/Widgets/TextFieldWidget.dart';
import 'package:ecomerce_app_3/Widgets/TextWidget.dart';
import 'package:flutter/material.dart';

class Forgotpass extends StatefulWidget {
  const Forgotpass({super.key});

  @override
  State<Forgotpass> createState() => _ForgotpassState();
}

class _ForgotpassState extends State<Forgotpass> {
   final email = TextEditingController();
  final _formkey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
       body: SafeArea(
      child: Padding(
        padding: const EdgeInsets.only(left: 10, right: 10, top: 20),
        child: Form(
          key: _formkey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Forgot \nPassword?",
                style: TextWidget.title(Colors.black),
              ),
              SizedBox(
                height: 15,
              ),
              TextFormFieldWidget(
                  labeltext: "Email",
                  prefixicon: Icon(Icons.mail),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return "Email Required";
                    } else {
                      return null;
                    }
                  },
                  controller: email),
              
                  SizedBox(height: 10,),
                  Padding(
                    padding: const EdgeInsets.only(top: 5.0, left: 10.0, right: 10.0),
                    child: Text("* We will send you a message to set or reset your new password",
                    style: TextWidget.description(),
                    textAlign: TextAlign.start,
                    ),
                  ),
              SizedBox(height: MediaQuery.of(context).size.height * 0.04),
              Center(
                child: MyButton(
                    onpress: () {
                      if (_formkey.currentState!.validate()) {
                        print("valid");
                      }
                    },
                    buttontext: "Submit"),
              ),
            ],
          ),
        ),
      ),
    )
    );
  }
}