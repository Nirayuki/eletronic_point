import 'package:flutter/material.dart';
import 'Pages/AddEmployeeView.dart';
import 'Pages/EditEmployeeView.dart';
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
          '/addEmployee': (context) => AddEmployeeView(),
          '/seeEmployee': (context) => EmployeeView(),
          '/editEmployee': (context) => EditEmployeeView(),
        });
  }
}
