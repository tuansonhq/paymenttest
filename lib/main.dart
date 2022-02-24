import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:payment/pages/my_home_page.dart';
import 'package:payment/pages/payment_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'payment',
      home: MyHomePage(),
    );
  }
}

