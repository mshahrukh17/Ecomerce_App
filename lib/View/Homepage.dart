// ignore_for_file: prefer_const_constructors, file_names, prefer_const_literals_to_create_immutables, avoid_unnecessary_containers, sized_box_for_whitespace

import 'package:ecomerce_app_3/Models/Categorymodel.dart';
import 'package:ecomerce_app_3/View/Itemsdetail.dart';
import 'package:ecomerce_app_3/Widgets/Carousalslid.dart';
import 'package:ecomerce_app_3/Widgets/TextField2.dart';
import 'package:ecomerce_app_3/Widgets/TextWidget.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final search = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 25, left: 5, right: 5),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Hii! User",
                      style: TextWidget.nametitle(Colors.black),
                    ),
                    Image.asset(
                      "assets/images/logo.png",
                      height: 40,
                    ),
                    CircleAvatar(
                      backgroundImage: AssetImage("assets/images/user.png"),
                    )
                  ],
                ),
              ),
              SizedBox(height: 15),
              TextFieldWidget2(
                  suffixicon: Icon(Icons.mic),
                  prefixicon: Icon(Icons.search),
                  hinttext: "Search",
                  controller: search),
              Row(
                children: [
                  Text(
                    "All Featured",
                    style: TextWidget.nametitle(Colors.black),
                  ),
                  Spacer(),
                  Material(
                      elevation: 10,
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(8),
                      child: Container(
                        height: 35,
                        width: 70,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              "Sort",
                              style: TextWidget.description(),
                            ),
                            Icon(Icons.compare_arrows)
                          ],
                        ),
                      )),
                  SizedBox(
                    width: 10,
                  ),
                  Material(
                    elevation: 10,
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(8),
                    child: Container(
                      height: 35,
                      width: 70,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "Filter",
                            style: TextWidget.description(),
                          ),
                          Icon(Icons.filter_alt_outlined)
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 5),
              GridView.builder(
                  shrinkWrap: true,
                  itemCount: Category.length,
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 5,
                      crossAxisSpacing: 2,
                      childAspectRatio: 0.8),
                  itemBuilder: (context, index) {
                    return Column(
                      children: [
                        CircleAvatar(
                          radius: 30,
                          backgroundImage:
                              AssetImage(Category[index]["Image"].toString()),
                        ),
                        Text(
                          Category[index]["catname"].toString(),
                          maxLines: 1,
                          style: TextWidget.description(),
                        )
                      ],
                    );
                  }),
              CarouselExample(),
              GridView.builder(
                  physics: NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  itemCount: items.length,
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      mainAxisSpacing: 10,
                      crossAxisSpacing: 5,
                      crossAxisCount: 2,
                      childAspectRatio: 0.7),
                  itemBuilder: (context, index) {
                    return GestureDetector(
                      onTap: () => Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) =>
                                ItemsDetail(itemsinfo: items[index]),
                          )),
                      child: Container(
                        decoration: BoxDecoration(
                            color: Colors.grey.shade300,
                            borderRadius: BorderRadius.circular(12)),
                        child: GridTile(
                            footer: Padding(
                              padding: const EdgeInsets.only(left: 6),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    items[index]["title"],
                                    style: TextWidget.nametitle(Colors.black),
                                    maxLines: 1,
                                  ),
                                  Text(
                                    items[index]["description"],
                                    style: TextWidget.description(),
                                    maxLines: 2,
                                  ),
                                  Text(
                                    items[index]["price"],
                                    style: TextWidget.nametitle(Colors.black),
                                    maxLines: 1,
                                  ),
                                  Text(
                                    "Sold ${items[index]["sold"]}",
                                    style: TextWidget.description(),
                                    maxLines: 1,
                                  ),
                                ],
                              ),
                            ),
                            header: Image.asset(
                              items[index]["image"],
                              height: 130,
                              fit: BoxFit.fitWidth,
                            ),
                            child: Column()),
                      ),
                    );
                  })
            ],
          ),
        ),
      ),
    );
  }
}
