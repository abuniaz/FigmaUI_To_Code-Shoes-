import 'package:figmaui_to_code/home.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primaryIconTheme: const IconThemeData(color: Colors.black),
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(),
    );
  }
}
