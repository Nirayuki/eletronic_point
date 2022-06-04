import 'package:eletronic_point/Model/MainModel.dart';
import 'package:eletronic_point/Pages/HomePage.dart';
import 'package:flutter/material.dart';
import 'HomePage.dart';
class AddEmployeeView extends StatefulWidget {
  final TempoEntrada;
  const AddEmployeeView({Key? key, this.TempoEntrada}) : super(key: key);
  @override
  State<AddEmployeeView> createState() => _AddEmployeeViewState();
}

class _AddEmployeeViewState extends State<AddEmployeeView> {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          appBar: AppBar(
            title: Row(
              children: [
                InkWell(
                  onTap: () {
                    Navigator.of(context).pushNamed('/');
                  },
                  child: Icon(Icons.keyboard_return),
                ),
                Container(
                  width: 30,
                ),
                Text("Adicionar Funcionário"),
              ],
            ),
            actions: [],
          ),
          body: Padding(
            padding: const EdgeInsets.only(top: 20, left: 10, right: 10),
            child: Column(
              children: [
                Container(
                  height: 10,
                ),

              ],
            ),
          ),
          floatingActionButton: FloatingActionButton(
            backgroundColor: Colors.green,
            onPressed: () {
              //print(MainModel.instance.TempoEntrada);
            },
            child: Icon(Icons.save),
          ),
        ));
  }
}
