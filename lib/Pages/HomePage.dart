import 'package:eletronic_point/Model/MainModel.dart';
import 'package:flutter/material.dart';
import 'package:eletronic_point/Pages/AddEmployeeView.dart';


class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    int TempoEntrada;
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
                  if(MainModel.instance.TempoEntrada == 0){
                    setState(() {
                      MainModel.instance.TempoEntrada = DateTime.now().hour;
                      MainModel.instance.TempoSaida = 0;
                    });
                  } else {
                    setState(() {
                      MainModel.instance.TempoSaida = DateTime.now().hour;
                      MainModel.instance.TempoEntrada = 0;
                    });
                  }
                  print(MainModel.instance.TempoSaida);
                  print(MainModel.instance.TempoEntrada);
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
