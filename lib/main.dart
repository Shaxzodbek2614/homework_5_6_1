import 'package:flutter/material.dart';
import 'package:omework_5_6_1/pages/checkout_page.dart';
import 'package:omework_5_6_1/pages/comments_page.dart';
import 'package:omework_5_6_1/pages/finally_page.dart';
import 'package:omework_5_6_1/pages/home_page.dart';
import 'package:omework_5_6_1/pages/payment.dart';
import 'package:omework_5_6_1/pages/products_page.dart';
import 'package:omework_5_6_1/pages/review_page.dart';
import 'package:omework_5_6_1/pages/shipping_page.dart';
import 'package:omework_5_6_1/pages/signin_page.dart';
import 'package:omework_5_6_1/pages/signup_page.dart';
import 'package:omework_5_6_1/pages/success.dart';
import 'package:omework_5_6_1/pages/your_cart_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SigninPage(),
    );
  }
}

