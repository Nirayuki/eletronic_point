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
            title: Row(children: [
              InkWell(
                onTap: (){
                  Navigator.of(context).pushNamed('/');
                },
                child: Icon(Icons.assignment_return),
              ),
              Container(width: 30,),
              Text("Editar Funcionário"),
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
                            "Elenilton Dezengawrsenhrydrmyrtytrmyrtymrtrini",
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
