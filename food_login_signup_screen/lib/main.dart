import 'package:flutter/material.dart';
import 'constants.dart';
import 'login_page.dart';

void main()=> runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: login_screen(),
      title: appName,
    );
  }
}