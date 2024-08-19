// ignore_for_file: prefer_const_constructors, file_names, prefer_const_literals_to_create_immutables, avoid_unnecessary_containers, use_full_hex_values_for_flutter_colors

import 'package:ecomerce_app_3/View/CartPage.dart';
import 'package:ecomerce_app_3/View/Homepage.dart';
import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

class Navbar extends StatefulWidget {
  const Navbar({super.key});

  @override
  State<Navbar> createState() => _NavbarState();
}

class _NavbarState extends State<Navbar> {
  int _selectedIndex = 0;
  final PageController _pageController = PageController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        controller: _pageController,
        onPageChanged: (index) {
          setState(() {
            _selectedIndex = index;
          });
        },
        children: [
          HomePage(),
          Center(child: Text("Favourite")),
          CartPage(),
          Center(child: Text("Settigns"))
        ],
      ),
      bottomNavigationBar: Container(
        color: Colors.white,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 10.0),
          child: GNav(
              rippleColor:
                  Colors.black38, 
              hoverColor: Colors.grey.shade700,
              backgroundColor: Colors.white,
              color: Colors.black,
              activeColor: Colors.white,
              tabBackgroundColor: Color(0xfffF83758),
              gap: 8.0,
              padding: EdgeInsets.all(16.0),
              selectedIndex: _selectedIndex,
              onTabChange: (index) {
                setState(() {
                  _selectedIndex = index;
                  _pageController.animateToPage(
                    index,
                    duration: Duration(milliseconds: 300),
                    curve: Curves.easeInOut,
                  );
                });
              },
              tabs: [
                GButton(
                  icon: Icons.home,
                  iconSize: 20,
                  text: "Home",
                ),
                GButton(icon: Icons.favorite, iconSize: 20, text: "Favourite"),
                GButton(
                    icon: Icons.shopping_bag_rounded,
                    iconSize: 20,
                    text: "Cart"),
                GButton(icon: Icons.settings, iconSize: 20, text: "settings")
              ]),
        ),
      ),
    );
  }
}
