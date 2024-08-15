// ignore_for_file: library_private_types_in_public_api, use_key_in_widget_constructors, file_names, prefer_const_constructors, use_full_hex_values_for_flutter_colors, non_constant_identifier_names

import 'package:ecomerce_app_3/View/Auth/Signup.dart';
import 'package:ecomerce_app_3/Widgets/TextWidget.dart';
import 'package:flutter/material.dart';

class OnboardingScreen extends StatefulWidget {
  @override
  _OnboardingScreenState createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  final PageController _pageController =
      PageController(); 
  int _currentPage = 0; 

  List<Widget> _buildPageContent() {
    return [
      _buildPage(
        image: 'assets/images/onboard1.png',
        title: 'Choose Products', 
        description:
            'Amet minim mollit non deserunt ullamco est sit aliqua dolor do amet sint. Velit officia consequat duis enim velit mollit.',
      ),
      _buildPage(
        image: 'assets/images/onboard2.png',
        title: 'Make Payment',
        description:
            'Amet minim mollit non deserunt ullamco est sit aliqua dolor do amet sint. Velit officia consequat duis enim velit mollit.',
      ),
      _buildPage(
        image: 'assets/images/onboard3.png',
        title: 'Get Your Order',
        description:
            'Amet minim mollit non deserunt ullamco est sit aliqua dolor do amet sint. Velit officia consequat duis enim velit mollit.',
      ),
    ];
  }

  
  Widget _buildPage(
      {required String image,
      required String title,
      required String description}) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Image.asset(image, height: 270),
        SizedBox(height: 30),
        Text(
          title,
          style: TextWidget.title(),
          textAlign: TextAlign.center,
        ),
        SizedBox(height: 15),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30),
          child: Text(
            description,
            style: TextWidget.description(),
            textAlign: TextAlign.center,
          ),
        ),
      ],
    );
  }

  // Page change hotay waqt state update karne ke liye
  void _onPageChanged(int index) {
    setState(() {
      _currentPage = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          PageView(
            controller: _pageController,
            onPageChanged: _onPageChanged,
            children: _buildPageContent(),
          ),
          _buildIndicator(),
          _buildNextButton(),
          Skipbutton()
        ],
      ),
    );
  }

  Widget _buildIndicator() {
    return Positioned(
      bottom: 50,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: List.generate(
          _buildPageContent().length, 
          (index) => Container(
            margin: EdgeInsets.symmetric(horizontal: 5),
            width: _currentPage == index ? 20 : 8, 
            height: _currentPage == index ? 10 : 8,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: _currentPage == index ? Color(0xfffF83758) : Colors.grey,
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildNextButton() {
    return Positioned(
        bottom: 45,
        right: 20,
        child: GestureDetector(
          onTap: () {
            if (_currentPage == _buildPageContent().length - 1) {
              Navigator.push(context, MaterialPageRoute(builder: (context) => Signup(),));
            } else {
              _pageController.nextPage(
                  duration: Duration(milliseconds: 500),
                  curve: Curves.easeInOut);
            }
          },
          child: Text(
            _currentPage == _buildPageContent().length - 1
                ? "Get Started"
                : "Next",
            style: TextWidget.nametitle(
              Color(0xfffF83758),
            ),
          ),
        ));
  }

  Widget Skipbutton() {
    return Positioned(
      top: 40,
        right: 20,
        child: GestureDetector(
          onTap: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) => Signup(),));
          },
          child: Text("Skip",
          style: TextWidget.description(),),
        )
        );
  }
}
