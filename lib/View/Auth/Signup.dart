// ignore_for_file: prefer_const_constructors, file_names, prefer_const_literals_to_create_immutables, avoid_print

import 'package:ecomerce_app_3/Widgets/MyButton.dart';
import 'package:ecomerce_app_3/Widgets/TextFieldWidget.dart';
import 'package:ecomerce_app_3/Widgets/TextWidget.dart';
import 'package:flutter/material.dart';

class Signup extends StatefulWidget {
  const Signup({super.key});

  @override
  State<Signup> createState() => _SignupState();
}

class _SignupState extends State<Signup> {
  final email = TextEditingController();
  final password = TextEditingController();
  final confirmpassword = TextEditingController();
  final _formkey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(left: 10, right: 10, top: 10),
          child: Form(
            key: _formkey,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("Create an\naccount",
                style: TextWidget.title(),
                ),
                SizedBox(height: 10,),
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
                  TextFormFieldWidget(
                  labeltext: "Password",
                  prefixicon: Icon(Icons.lock),
                  suffixicon: IconButton(onPressed: (){}, icon: Icon(Icons.remove_red_eye)),
                  validator: (value) {
                  if (value == null || value.isEmpty) {
                    return "Email Required";
                  } else {
                    return null;
                  }
                  },
                  controller: password),
                  TextFormFieldWidget(
                  labeltext: "Confirm Password",
                  prefixicon: Icon(Icons.lock),
                  suffixicon: IconButton(onPressed: (){}, icon: Icon(Icons.remove_red_eye)),
                  validator: (value) {
                  if (value == null || value.isEmpty) {
                    return "Email Required";
                  } else {
                    return null;
                  }
                  },
                  controller: confirmpassword),
                  SizedBox(height: 20,),
                  Center(
                    child: MyButton(onpress: (){
                      if (_formkey.currentState!.validate()) {
                        print("valid");
                      }
                    }, buttontext: "Create Account"),
                  ),
                  SizedBox(height: 15.0,),
                  Center(
                    child: Column(
                      children: [
                        Text("- OR Continue With -",
                        style: TextWidget.description(),
                        ),
                        SizedBox(height: 10,),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Container(
                              height: 60,
                              width: 60,
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: Color.fromARGB(255, 255, 234, 242),
                                border: Border.all(
                                  color: Colors.pink.shade600,
                                )
                              ),
                            ),
                            SizedBox(width: 10,),
                            Container(
                              height: 60,
                              width: 60,
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: Color.fromARGB(255, 255, 234, 242),
                                border: Border.all(
                                  color: Colors.pink.shade600,
                                )
                              ),
                            ),
                            SizedBox(width: 10,),
                            Container(
                              height: 60,
                              width: 60,
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: Color.fromARGB(255, 255, 234, 242),
                                border: Border.all(
                                  color: Colors.pink.shade600,
                                )
                              ),
                            )
                          ],
                        ),
                        Text("I Already Have an Account Login",
                        style: TextWidget.description(),
                        ),
                      ],
                    ),
                  )
              ],
            ),
          ),
        ),
      )
    );
  }
}