import 'package:flutter/material.dart';
import 'package:foodapp/index.dart';
import 'package:foodapp/pages/home/category.dart';

void main() {
  runApp(
    MaterialApp(
      theme: ThemeData(),
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: {'/': (context) => MyApp(), '/category': (context) => Category()},
    ),
  );
}
