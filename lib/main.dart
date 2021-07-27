import 'package:flutter/material.dart';
import 'package:food_delivery/screens/food_detail.dart';
import 'package:food_delivery/screens/home.dart';
import 'package:food_delivery/screens/login.dart';
import 'package:food_delivery/screens/register.dart';
import 'package:food_delivery/screens/welcome.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Food Delivery',
      theme: ThemeData(
        scaffoldBackgroundColor: Color(0xff2b2b2b),
        appBarTheme: AppBarTheme(
          color: Color(0xff2b2b2b),
        ),
      ),
      home: FoodDetail(),
    );
  }
}