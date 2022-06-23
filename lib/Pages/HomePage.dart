import 'dart:convert';
import 'package:eletronic_point/Model/MainModel.dart';
import 'package:flutter/material.dart';
import 'package:eletronic_point/Pages/AddEmployeeView.dart';
import 'package:intl/intl.dart';

getSegunda() {
  if (MainModel.instance.segunda["manhaEntrada"] == "" &&
      MainModel.instance.segunda["passou"] == true) {
    limparDados();
  }

  switch (MainModel.instance.segunda["steps"]) {
    case 1:
      MainModel.instance.segunda["manhaEntrada"] == DateTime.now();
      MainModel.instance.segunda["steps"] = 2;
      break;
    case 2:
      MainModel.instance.segunda["manhaSaida"] == DateTime.now();
      MainModel.instance.segunda["steps"] = 3;
      break;
    case 3:
      if (DateTime.now().hour >= 13) {
        MainModel.instance.segunda["tardeEntrada"] == DateTime.now();
        MainModel.instance.segunda["steps"] = 4;
      }

      break;
    case 4:
      if (DateTime.now().hour >= 13) {
        MainModel.instance.segunda["tardeSaida"] == DateTime.now();
      }
      break;
  }
}

getTerca() {
  if (MainModel.instance.terca["manhaEntrada"] == "" &&
      MainModel.instance.terca["passou"] == true) {
    limparDados();
  }

  switch (MainModel.instance.terca["steps"]) {
    case 1:
      MainModel.instance.terca["manhaEntrada"] == DateTime.now();
      MainModel.instance.terca["steps"] = 2;
      break;
    case 2:
      MainModel.instance.terca["manhaSaida"] == DateTime.now();
      MainModel.instance.terca["steps"] = 3;
      break;
    case 3:
      MainModel.instance.terca["tardeEntrada"] == DateTime.now();
      MainModel.instance.terca["steps"] = 4;
      break;
    case 4:
      MainModel.instance.terca["tardeSaida"] == DateTime.now();
      break;
  }
}

getQuarta() {
  switch (MainModel.instance.quarta["steps"]) {
    case 1:
      MainModel.instance.quarta["manhaEntrada"] == DateTime.now();
      MainModel.instance.quarta["steps"] = 2;
      break;
    case 2:
      MainModel.instance.quarta["manhaSaida"] == DateTime.now();
      MainModel.instance.quarta["steps"] = 3;
      break;
    case 3:
      MainModel.instance.quarta["tardeEntrada"] == DateTime.now();
      MainModel.instance.quarta["steps"] = 4;
      break;
    case 4:
      MainModel.instance.quarta["tardeSaida"] == DateTime.now();
      break;
  }

  if (MainModel.instance.quarta["manhaEntrada"] != 0 &&
      MainModel.instance.quarta["tardeSaida"] != 0) {
    final manhaEntrada = MainModel.instance.quarta["manhaEntrada"];
    final manhaSaida = MainModel.instance.quarta["manhaSaida"];
    final tardeEntrada = MainModel.instance.quarta["tardeEntrada"];
    final tardeSaida = MainModel.instance.quarta["tardeSaida"];

    final manhaTotal = DateTime(manhaEntrada).difference(manhaSaida);
  }
}

getQuinta() {
  if (MainModel.instance.quinta["manhaEntrada"] == "" &&
      MainModel.instance.quinta["passou"] == true) {
    limparDados();
  }

  switch (MainModel.instance.quinta["steps"]) {
    case 1:
      MainModel.instance.quinta["manhaEntrada"] == DateTime.now();
      MainModel.instance.quinta["steps"] = 2;
      break;
    case 2:
      MainModel.instance.quinta["manhaSaida"] == DateTime.now();
      MainModel.instance.quinta["steps"] = 3;
      break;
    case 3:
      MainModel.instance.quinta["tardeEntrada"] == DateTime.now();
      MainModel.instance.quinta["steps"] = 4;
      break;
    case 4:
      MainModel.instance.quinta["tardeSaida"] == DateTime.now();
      break;
  }
}

getSexta() {
  if (MainModel.instance.sexta["manhaEntrada"] == "" &&
      MainModel.instance.sexta["passou"] == true) {
    limparDados();
  }

  switch (MainModel.instance.sexta["steps"]) {
    case 1:
      MainModel.instance.sexta["manhaEntrada"] == DateTime.now();
      MainModel.instance.sexta["steps"] = 2;
      break;
    case 2:
      MainModel.instance.sexta["manhaSaida"] == DateTime.now();
      MainModel.instance.sexta["steps"] = 3;
      break;
    case 3:
      MainModel.instance.sexta["tardeEntrada"] == DateTime.now();
      MainModel.instance.sexta["steps"] = 4;
      break;
    case 4:
      MainModel.instance.sexta["tardeSaida"] == DateTime.now();
      break;
  }
}

getSabado() {
  if (MainModel.instance.sabado["manhaEntrada"] == "" &&
      MainModel.instance.sabado["passou"] == true) {
    limparDados();
  }

  switch (MainModel.instance.sabado["steps"]) {
    case 1:
      MainModel.instance.sabado["manhaEntrada"] == DateTime.now();
      MainModel.instance.sabado["steps"] = 2;
      break;
    case 2:
      MainModel.instance.sabado["manhaSaida"] == DateTime.now();
      MainModel.instance.sabado["steps"] = 3;
      break;
    case 3:
      MainModel.instance.sabado["tardeEntrada"] == DateTime.now();
      MainModel.instance.sabado["steps"] = 4;
      break;
    case 4:
      MainModel.instance.sabado["tardeSaida"] == DateTime.now();
      break;
  }
}

limparDados() {
  MainModel.instance.segunda["manhaEntrada"] = "";
  MainModel.instance.segunda["manhaSaida"] = "";
  MainModel.instance.segunda["tardeEntrada"] = "";
  MainModel.instance.segunda["tardeSaida"] = "";
  MainModel.instance.segunda["passou"] = false;
}

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
              color: (DateTime.now().hour >= 8 && DateTime.now().hour <= 13)
                  ? Colors.green
                  : Colors.red,
              child: InkWell(
                splashColor: Colors.green.withAlpha(50),
                onTap: () {
                  int day = DateTime.now().day;

                  switch (day) {
                    case 20:
                      getSegunda();
                      break;
                    case 21:
                      getTerca();
                      break;
                    case 22:
                      getQuarta();
                      break;
                    case 23:
                      getQuinta();
                      break;
                    case 24:
                      getSexta();
                      break;
                    case 25:
                      getSabado();
                      break;
                  }
                },
                child: SizedBox(
                  height: 10000,
                  child: Center(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.fingerprint_outlined,
                          size: 120,
                        ),
                        Text(
                          "Ponto Eletronico",
                          style: TextStyle(fontSize: 30),
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
