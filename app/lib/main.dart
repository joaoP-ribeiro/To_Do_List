import 'package:flutter/material.dart';

import 'Screns/HomePage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'TO DO',
      theme: ThemeData(

      ),
      home: const MyHomePage(title: 'To Do'),
    );
  }
}

