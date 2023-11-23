import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';

import 'Screens/HomePage.dart';

void main() async {
  // init the hive
  await Hive.initFlutter();

  try {
    // open a box
    var box = await Hive.openBox('mybox');

    runApp(const MyApp());
  } catch (e) {
    print(e);
  }
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'TO DO',
      theme: ThemeData(),
      home: const MyHomePage(title: 'To Do'),
    );
  }
}
