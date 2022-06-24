import 'package:flutter/material.dart';
import 'Pages/EmployeeView.dart';
import 'Pages/HomePage.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        initialRoute: '/',
        routes: {
          '/': (context) => HomePage(),
          '/show': (context) => EmployeeView(),
        });
  }
}
