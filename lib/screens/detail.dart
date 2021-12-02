import 'package:flutter/material.dart';
import 'package:session3/components/build_box.dart';
import 'package:session3/routes/path.dart';
import 'package:session3/screens/home/home.dart';

import '../constants.dart';

class Details extends StatefulWidget {
  static String path = detailPath;
  const Details({Key? key}) : super(key: key);

  @override
  State<Details> createState() => _DetailsState();
}

class _DetailsState extends State<Details> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kWhiteColor,
      appBar: BuidAppBar(context),
      body: const BuildBody(),
    );
  }

  AppBar BuidAppBar(BuildContext context) {
    return AppBar(
      backgroundColor: kWhiteColor,
      elevation: 0,
      leading: IconButton(
        onPressed: () {
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => const Home()));
        },
        icon: const Icon(
          Icons.navigate_before,
          size: 24,
          color: kBlackColor,
        ),
      ),
      title: const Text(
        "Detail",
        style: TextStyle(
            fontSize: 16, color: kBlackColor, fontWeight: FontWeight.w500),
      ),
      centerTitle: true,
      actions: <Widget>[
        IconButton(
          onPressed: () {},
          icon: const Icon(
            Icons.favorite_border,
            size: 24,
            color: kBlackColor,
          ),
        )
      ],
    );
  }
}
