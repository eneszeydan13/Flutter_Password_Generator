import 'package:flutter/material.dart';
import 'view/homepage.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(title: 'PW-Gen', home: new HomePage());
  }
}
