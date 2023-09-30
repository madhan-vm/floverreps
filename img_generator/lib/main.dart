import 'package:flutter/material.dart';
import 'package:img_generator/screens/home_screen.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    theme: ThemeData(
      useMaterial3: true,
    ),
    home: HomeScreen(),
  ));
}
