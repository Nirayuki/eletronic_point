import 'package:eletronic_point/Model/MainModel.dart';
import 'package:flutter/material.dart';

class AddEmployeeView extends StatefulWidget {
  const AddEmployeeView({Key? key}) : super(key: key);

  @override
  State<AddEmployeeView> createState() => _AddEmployeeViewState();
}

class _AddEmployeeViewState extends State<AddEmployeeView> {
  @override
  Widget build(BuildContext context) {
    Employee newEmployee= new Employee(name: "");
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
                TextField(
                  onChanged: (String text){
                    newEmployee.name = text;
                  },
                  decoration: InputDecoration(
                    hintText: "Digite o nome aqui",
                    labelText: "Nome do colaborador",
                    labelStyle: TextStyle(fontSize: 17),
                    border: OutlineInputBorder(),
                  ),
                ),
                Container(
                  height: 10,
                ),
                TextField(
                  decoration: InputDecoration(
                    hintText: "Teste",
                    labelText: "teste",
                    labelStyle: TextStyle(fontSize: 17),
                    border: OutlineInputBorder(),
                  ),
                ),
              ],
            ),
          ),
          floatingActionButton: FloatingActionButton(
            backgroundColor: Colors.grey,
            onPressed: () {
              MainModel.instance.employees.add(newEmployee);
              Navigator.of(context).pushNamed('/');
            },
            child: Icon(Icons.save),
          ),
        ));
  }
}
