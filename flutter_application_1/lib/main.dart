import 'package:flutter/material.dart';
import 'package:flutter_application_1/views/pages.dart';

void main() {
  runApp(const MyNewApp());
}

class MyNewApp extends StatelessWidget {
  const MyNewApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: {
        '/':(context) => assignment1page(),
        assignment2.routeName: (context) => assignment2(),
        assignment1page.routeName:(context) => assignment1page()
      },
    );
  }
}