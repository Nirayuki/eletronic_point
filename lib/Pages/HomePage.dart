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
    DateTime.now().hour;
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          appBar: AppBar(
            title: Text("Ponto Eletronico"),
          ),
          body: Card(
              color: (DateTime.now().hour>=8 && DateTime.now().hour<=13)?Colors.red:Colors.green,
              child: InkWell(
                splashColor: Colors.green.withAlpha(50),
                onTap: () {
                  setState(() {
                    print(DateTime.now().hour);
                  });
                },
                child: SizedBox(
                  height: 10000,
                  child: Center(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                         Icons.fingerprint_outlined,size: 120,
                        ),
                        Text(
                          "Ponto Eletronico",
                          style: TextStyle(fontSize:30),
                        ),

                      ],
                    ),

                  ),
                ),
              )),
          floatingActionButton: FloatingActionButton(
            backgroundColor: Colors.grey,
            onPressed: () {
              Navigator.of(context).pushNamed('/addEmployee');
            },
            child: Icon(Icons.announcement_sharp),
          ),
        ));
  }
}
