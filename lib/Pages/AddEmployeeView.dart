import 'package:flutter/material.dart';

class AddEmployeeView extends StatefulWidget {
  const AddEmployeeView({Key? key}) : super(key: key);

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
            title: Row(children: [
              InkWell(
                onTap: (){
                  Navigator.of(context).pushNamed('/');
                },
                child: Icon(Icons.assignment_return),
              ),
              Container(width: 30,),
              Text("Adicionar Funcionário"),
            ],),
            actions: [


            ],
          ),
          body: ListView.builder(
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
                            "Elenilton Deddddddddzengrini",
                            style: TextStyle(fontSize: 40),
                          ),
                        ),
                      ),
                    )
                );


              }
          ),
          floatingActionButton: FloatingActionButton(
            backgroundColor: Colors.grey,

            onPressed: (){
            },
            child: Icon(Icons.add),
          ),
        )
    );
  }
}
