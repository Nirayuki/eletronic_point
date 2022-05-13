import 'package:eletronic_point/Model/MainModel.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text("Ponto Eletronico"),
        ),
        body: ListView.builder(
          itemCount: MainModel.instance.employees.length,
    itemBuilder: (BuildContext build,int index) {

    return Card(
      color: Colors.green,

      child: InkWell(
        splashColor: Colors.red.withAlpha(50),
        onTap: (){
          Navigator.of(context).pushNamed('/seeEmployee', arguments: {'identifier': index});
        },
        child: SizedBox(
          height: 160,

          child: Center(
            child: Text(
               MainModel.instance.employees[index].name,
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
          Navigator.of(context).pushNamed('/addEmployee');
        },
        child: Icon(Icons.add),
      ),
      )
    );
  }
}
