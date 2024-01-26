// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:slicing_ui/pages/first_page.dart';
import 'package:slicing_ui/pages/setting_page.dart';

void main() {
  runApp(const HomePage());
}

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: FirstPage(),
      routes: {
        '/home': (context) => HomePage(),
        '/setting': (context) => SettingPage(),
      },
    );
  }
}
