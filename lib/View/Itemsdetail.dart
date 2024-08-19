// ignore_for_file: prefer_const_constructors, file_names, must_be_immutable, prefer_typing_uninitialized_variables, prefer_const_literals_to_create_immutables, avoid_unnecessary_containers, sized_box_for_whitespace

import 'package:ecomerce_app_3/Widgets/MyButton.dart';
import 'package:ecomerce_app_3/Widgets/TextWidget.dart';
import 'package:flutter/material.dart';

class ItemsDetail extends StatefulWidget {
  var itemsinfo;
 ItemsDetail({super.key,
 required this.itemsinfo
 });

  @override
  State<ItemsDetail> createState() => _ItemsDetailState();
}

class _ItemsDetailState extends State<ItemsDetail> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            height: 300,
            width: MediaQuery.of(context).size.width * 1,
            child: Image.asset(widget.itemsinfo["image"],fit: BoxFit.fitWidth,)),
            Padding(
              padding: const EdgeInsets.only(top: 10, left: 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Text(widget.itemsinfo["title"],
                      style: TextWidget.nametitle(Colors.black),
                      ),
                      Spacer(),
                      IconButton(onPressed: (){}, icon: Icon(Icons.favorite_outline))
                    ],
                  ),
                  SizedBox(height: 10,),
                  Text(widget.itemsinfo["description"],
                  style: TextWidget.description(),
                  maxLines: 8,
                  ),
                  SizedBox(height: 10,),
                  Text("Price ${widget.itemsinfo["price"]}",
                  style: TextWidget.nametitle(Colors.black87),
                  ),
                  SizedBox(height: 10,),
                  Center(child: MyButton(onpress: (){}, buttontext: "Add to Cart")),
                  SizedBox(height: 10,),
                ],
              ),
            )
        ],
      )
    );
  }
}