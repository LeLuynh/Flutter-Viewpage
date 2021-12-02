import 'dart:core';

import 'package:flutter/material.dart';
import 'package:session3/components/list_horizontal.dart';
import 'package:session3/components/list_vertical.dart';
import 'package:session3/constants.dart';
import 'package:session3/models/item_horizontal.dart';
import 'package:session3/models/item_list.dart';
import 'package:session3/routes/path.dart';
import 'package:session3/screens/detail.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final _formKey = GlobalKey<FormState>();
  int Active = 0;

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final List<String> group = <String>[
      'Chair',
      'Table',
      'Bed',
      'Sofa',
    ];
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(30),
          child: Column(
            children: <Widget>[
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      Text(
                        "My Furniture",
                        style: TextStyle(
                          color: Color(0xFF404040),
                          fontSize: 24,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      Text(
                        "Your partner interior design",
                        style: TextStyle(
                          color: Color(0xFF404040),
                          fontSize: 16,
                          fontWeight: FontWeight.w400,
                          fontStyle: FontStyle.italic,
                        ),
                      ),
                    ],
                  ),
                  Image.asset(
                    "images/Chat.png",
                    width: 20,
                    height: 20,
                  ),
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              Container(
                child: Form(
                  key: _formKey,
                  child: Row(
                    children: [
                      Expanded(
                        child: TextFormField(
                          style: TextStyle(
                            color: kBlackColor.withOpacity(0.4),
                            fontSize: 14,
                            fontWeight: FontWeight.w400,
                          ),
                          decoration: InputDecoration(
                            // filled: true,
                            // fillColor: Colors.white,
                            enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(15),
                              borderSide: const BorderSide(
                                color: kLineStroke,
                              ),
                            ),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                            contentPadding: const EdgeInsets.all(24),
                            prefixIcon: const Padding(
                              padding: EdgeInsets.only(left: 22, right: 8),
                              child: Icon(Icons.search_outlined),
                            ),
                            hintText: "Try search “Computer Table”",
                          ),
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return 'Please enter some text';
                            }
                            return null;
                          },
                        ),
                      ),
                      IconButton(
                        icon: Image.asset("images/listt6.png"),
                        iconSize: 54,
                        onPressed: () {},
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              Container(
                height: 38,
                width: size.width,
                child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: group.length,
                    itemBuilder: (BuildContext context, int index) {
                      return Container(
                        height: double.infinity,
                        width: 87,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: index == Active ? kPrimaryColor : kWhiteDart,
                        ),
                        child: TextButton(
                          onPressed: () {
                            setState(() {
                              Active = index;
                            });
                          },
                          child: Text(
                            group[index],
                            style: TextStyle(
                                color:
                                    index == Active ? kWhiteColor : kBlackColor,
                                fontSize: 14,
                                fontWeight: FontWeight.w400),
                          ),
                        ),
                      );
                    }),
              ),
              const SizedBox(
                height: 25,
              ),
              const Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  "Best for you",
                  style: TextStyle(
                      color: kBlackColor,
                      fontSize: 16,
                      fontWeight: FontWeight.w600),
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              Container(
                height: 209,
                width: size.width,
                child: ListH(
                  items: Active == 1 ? itemsTable : itemsList,
                  click: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const Details()));
                  },
                ),
              ),
              const SizedBox(
                height: 25,
              ),
              const Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  "Best for you",
                  style: TextStyle(
                      color: Color(0xFF404040),
                      fontSize: 16,
                      fontWeight: FontWeight.w600),
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              Container(
                height: 300,
                child: ListV(
                  items: Active == 1 ? ItemsHTable : ItemsH,
                  click: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const Details()));
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
