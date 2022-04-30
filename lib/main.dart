import 'package:flutter/material.dart';
import 'package:netflix_ui/screens/screen.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
        scaffoldBackgroundColor: Colors.black),
    home: const NavScreen(),
  ));
}
