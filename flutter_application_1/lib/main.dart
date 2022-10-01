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
      home:assignment1page(

      ),
    );
  }
}