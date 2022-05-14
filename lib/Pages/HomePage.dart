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
          body: Card(
              color: Colors.green,
              child: InkWell(
                splashColor: Colors.red.withAlpha(50),
                onTap: () {},
                child: SizedBox(
                  height: 160,
                  child: Center(
                    child: Text(
                      "Sim",
                      style: TextStyle(fontSize: 40),
                    ),
                  ),
                ),
              )),
          floatingActionButton: FloatingActionButton(
            backgroundColor: Colors.grey,
            onPressed: () {
              Navigator.of(context).pushNamed('/addEmployee');
            },
            child: Icon(Icons.add),
          ),
        ));
  }
}
