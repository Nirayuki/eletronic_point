import 'package:flutter/material.dart';

class MainModel extends ChangeNotifier {
  static MainModel instance = MainModel();

  List<Employee> employees = <Employee>[];
}

class Employee {
  String name;

  Employee({Key? key, required this.name}) ;

}
