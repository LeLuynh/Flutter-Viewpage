import 'package:flutter/material.dart';

import '../constants.dart';

class Cart extends StatefulWidget {
  const Cart({Key? key}) : super(key: key);

  @override
  _CartState createState() => _CartState();
}

class _CartState extends State<Cart> {
  int numOfItems = 1;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        Container(
          padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(5), color: kBlueCart),
          child: Row(children: <Widget>[
            buildOutlineButton(icon: Icons.remove, press: () {}),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Text(
                "01",
                style: Theme.of(context).textTheme.headline6,
              ),
            ),
            buildOutlineButton(icon: Icons.add, press: () {}),
          ]),
        )
      ],
    );
  }

  SizedBox buildOutlineButton(
      {required IconData icon, required Function press}) {
    return SizedBox(
      width: 24,
      height: 24,
      child: OutlinedButton(
        child: Icon(icon),
        style: OutlinedButton.styleFrom(
            padding: EdgeInsets.zero,
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(5))),
        onPressed: press(),
      ),
    );
  }
}
