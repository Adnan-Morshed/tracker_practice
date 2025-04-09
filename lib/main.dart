import 'package:flutter/material.dart';
import 'package:tracker_practice/problem1.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Tracker Practice',
      home: Problem1(),
    );
  }
}
