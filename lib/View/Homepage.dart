// ignore_for_file: prefer_const_constructors, file_names, prefer_const_literals_to_create_immutables, avoid_unnecessary_containers, sized_box_for_whitespace

import 'package:ecomerce_app_3/Models/Categorymodel.dart';
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
                    childAspectRatio: 0.8
                  ),
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
              SizedBox(
                height: 10,
              ),
              GridView.builder(
                physics: BouncingScrollPhysics(),
                shrinkWrap: true,
                itemCount: items.length,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  crossAxisSpacing: 10,
                  mainAxisSpacing: 10,
                  childAspectRatio: 0.44,
                ),
                itemBuilder: (context, index) {
                  var item = items[index];
                  return Container(
                    decoration: BoxDecoration(
                      color: Colors.grey.shade300,
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          height: 240,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(6),
                              image: DecorationImage(
                                  image: AssetImage(item["image"]),
                                  fit: BoxFit.cover)),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Expanded(
                            child: Text(
                              item["title"].toString(),
                              maxLines: 1,
                              style: TextWidget.nametitle(Colors.black),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 8.0),
                          child: Text(
                            item["description"],
                            style: TextWidget.description(),
                            maxLines: 2,
                            overflow: TextOverflow.ellipsis,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 8),
                          child: Text(
                            item["price"],
                            style: TextWidget.description(),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 8),
                          child: Row(
                            children: [
                              Icon(Icons.star_outlined, color: Colors.yellow.shade800,),
                              Icon(Icons.star_outlined, color: Colors.yellow.shade800,),
                              Icon(Icons.star_outlined, color: Colors.yellow.shade800,),
                              Icon(Icons.star_outlined, color: Colors.yellow.shade800,),
                              Icon(Icons.star_half,)
                            ],
                          )
                        )
                      ],
                    ),
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
