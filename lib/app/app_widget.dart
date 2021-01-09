import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'presenter/home/home_page.dart';

class AppWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'SpaceX Tripple Pattern',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
    ).modular();
  }
}
