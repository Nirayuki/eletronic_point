import 'package:eletronic_point/Model/MainModel.dart';
import 'package:flutter/material.dart';

class EmployeeView extends StatefulWidget {
  const EmployeeView({Key? key}) : super(key: key);

  @override
  State<EmployeeView> createState() => _EmployeeViewState();
}

class _EmployeeViewState extends State<EmployeeView> {
  @override
  Widget build(BuildContext context) {
    var args = ModalRoute.of(context)!.settings.arguments as Map<String,int>;
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          appBar: AppBar(

            title: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [

              InkWell(
                onTap: (){
                  Navigator.of(context).pushNamed('/');
                },
                child: Icon(Icons.keyboard_return),
              ),
              Container(width: 30,),
              Text("Visualizar Funcionario"),
              Container(width: 30,),
              InkWell(
                onTap: (){
                  Navigator.of(context).pushNamed('/editEmployee');
                },
                child: Icon(Icons.edit),
              ),
            ],),
          ),
          body: ListView.builder(
            itemCount: MainModel.instance.employees.length,
              itemBuilder: (BuildContext build,int index) {

                return Card(
                    color: Colors.green,

                    child: InkWell(
                      splashColor: Colors.red.withAlpha(50),
                      onTap: (){

                      },
                      child: SizedBox(
                        height: 160,

                        child: Center(
                          child: Text(
                            MainModel.instance.employees[args["identifier"]!].name+"Estamos na tela de visualizacao",
                            style: TextStyle(fontSize: 40),
                          ),
                        ),
                      ),
                    )
                );


              }
          ),
        )
    );
  }
}
