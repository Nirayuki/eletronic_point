import 'package:flutter/material.dart';

class EditEmployeeView extends StatefulWidget {
  const EditEmployeeView({Key? key}) : super(key: key);

  @override
  State<EditEmployeeView> createState() => _EditEmployeeViewState();
}

class _EditEmployeeViewState extends State<EditEmployeeView> {
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
                Text("Editar Funcionário"),
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
                    //newEmployee.name = text;
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

            },
            child: Icon(Icons.save),
          ),
        ));
  }
}
