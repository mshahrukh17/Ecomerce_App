// ignore_for_file: prefer_const_constructors, file_names, prefer_const_literals_to_create_immutables, avoid_print

import 'package:ecomerce_app_3/View/Auth/Loginpage.dart';
import 'package:ecomerce_app_3/View/Intro.dart';
import 'package:ecomerce_app_3/Widgets/MyButton.dart';
import 'package:ecomerce_app_3/Widgets/TextFieldWidget.dart';
import 'package:ecomerce_app_3/Widgets/TextWidget.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

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
        body: SafeArea(
      child: Padding(
        padding: const EdgeInsets.only(left: 10, right: 10, top: 20),
        child: Form(
          key: _formkey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Create an\naccount",
                style: TextWidget.title(
                  Colors.black
                ),
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
              TextFormFieldWidget(
                  labeltext: "Password",
                  prefixicon: Icon(Icons.lock),
                  suffixicon: IconButton(
                      onPressed: () {}, icon: Icon(Icons.remove_red_eye)),
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
                  suffixicon: IconButton(
                      onPressed: () {}, icon: Icon(Icons.remove_red_eye)),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return "Email Required";
                    } else {
                      return null;
                    }
                  },
                  controller: confirmpassword),
              SizedBox(height: MediaQuery.of(context).size.height * 0.05),
              Center(
                child: MyButton(
                    onpress: () {
                      if (_formkey.currentState!.validate()) {
                        print("valid");
                      }
                    },
                    buttontext: "Create Account"),
              ),
              SizedBox(
                height: 25.0,
              ),
              Center(
                child: Column(
                  children: [
                    Text(
                      "- OR Continue With -",
                      style: TextWidget.description(),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        GestureDetector(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => Intro(),
                                ));
                          },
                          child: Container(
                            height: 60,
                            width: 60,
                            decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: Color.fromARGB(255, 255, 234, 242),
                                border: Border.all(
                                  color: Colors.pink.shade600,
                                )),
                            child: Center(
                                child: Image.asset(
                              "assets/images/google.png",
                              height: 35,
                            )),
                          ),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Container(
                          height: 60,
                          width: 60,
                          decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: Color.fromARGB(255, 255, 234, 242),
                              border: Border.all(
                                color: Colors.pink.shade600,
                              )),
                          child: Center(
                              child: Image.asset(
                            "assets/images/apple.png",
                            height: 35,
                          )),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Container(
                          height: 60,
                          width: 60,
                          decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: Color.fromARGB(255, 255, 234, 242),
                              border: Border.all(
                                color: Colors.pink.shade600,
                              )),
                          child: Icon(
                            Icons.facebook,
                            color: Colors.blue,
                            size: 35,
                          ),
                        )
                      ],
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => Loginpage()));
                      },
                      child: Text(
                        "I Already Have an Account Login",
                        style: TextWidget.description(),
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    ));
  }
}
