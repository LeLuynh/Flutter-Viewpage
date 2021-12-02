import 'package:flutter/material.dart';
import 'package:session3/routes/path.dart';
import 'package:session3/routes/routes.dart';
import 'package:session3/screens/detail.dart';
import 'package:session3/screens/home/home.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(),
      home: const Details(),
      // initialRoute: homePath,
      // routes: routes,
      debugShowCheckedModeBanner: false,
    );
  }
}
