import 'dart:convert';
import 'package:eletronic_point/Model/SegundaModel.dart';
import 'package:eletronic_point/Model/TercaModel.dart';
import 'package:eletronic_point/Model/QuartaModel.dart';
import 'package:eletronic_point/Model/QuintaModel.dart';
import 'package:eletronic_point/Model/SextaModel.dart';
import 'package:flutter/material.dart';
import 'package:eletronic_point/Pages/EmployeeView.dart';
import 'package:intl/intl.dart';

getSegunda() {
  final jornada = Duration(hours: 8);
  switch (SegundaModel.instance.steps) {
    case 1:
      SegundaModel.instance.manhaEntrada = DateTime.now();
      SegundaModel.instance.steps = 2;
      print(SegundaModel.instance.manhaEntrada);
      break;
    case 2:
      if (DateTime.now().isAfter(SegundaModel.instance.manhaEntrada)) {
        SegundaModel.instance.manhaSaida = DateTime.now();
        SegundaModel.instance.steps = 3;
        print(SegundaModel.instance.manhaSaida);
      } else {
        print("Horario menor que o anterior : " +
            SegundaModel.instance.manhaEntrada.toString());
      }
      break;
    case 3:
      if (DateTime.now().isAfter(SegundaModel.instance.manhaSaida)) {
        SegundaModel.instance.tardeEntrada = DateTime.now();
        SegundaModel.instance.steps = 4;
        print(SegundaModel.instance.tardeEntrada);
      } else {
        print("Horario menor que o anterior : " +
            SegundaModel.instance.manhaSaida.toString());
      }
      break;
    case 4:
      if (DateTime.now().isAfter(SegundaModel.instance.tardeEntrada)) {
        SegundaModel.instance.tardeSaida = DateTime.now();
        SegundaModel.instance.steps = 5;
        SegundaModel.instance.isTotal++;
      } else {
        print("Horario menor que o anterior : " +
            SegundaModel.instance.tardeEntrada.toString());
      }

      break;
    default:
      break;
  }

  if (SegundaModel.instance.isTotal == 2) {
    var manhaTotal = SegundaModel.instance.manhaSaida
        .difference(SegundaModel.instance.manhaEntrada);

    var tardeTotal = SegundaModel.instance.tardeSaida
        .difference(SegundaModel.instance.tardeEntrada);

    SegundaModel.instance.total = manhaTotal + tardeTotal;
    SegundaModel.instance.banco = SegundaModel.instance.total! - jornada;
    SegundaModel.instance.isTotal++;
  }
}

getTerca() {
  final jornada = Duration(hours: 8);
  switch (TercaModel.instance.steps) {
    case 1:
      TercaModel.instance.manhaEntrada = DateTime.now();
      TercaModel.instance.steps = 2;
      print(TercaModel.instance.manhaEntrada);
      break;
    case 2:
      if (DateTime.now().isAfter(TercaModel.instance.manhaEntrada)) {
        TercaModel.instance.manhaSaida = DateTime.now();
        TercaModel.instance.steps = 3;
        print(TercaModel.instance.manhaSaida);
      } else {
        print("Horario menor que o anterior : " +
            TercaModel.instance.manhaEntrada.toString());
      }
      break;
    case 3:
      if (DateTime.now().isAfter(TercaModel.instance.manhaSaida)) {
        TercaModel.instance.tardeEntrada = DateTime.now();
        TercaModel.instance.steps = 4;
        print(TercaModel.instance.tardeEntrada);
      } else {
        print("Horario menor que o anterior : " +
            TercaModel.instance.manhaSaida.toString());
      }
      break;
    case 4:
      if (DateTime.now().isAfter(TercaModel.instance.tardeEntrada)) {
        TercaModel.instance.tardeSaida = DateTime.now();
        TercaModel.instance.steps = 5;
        TercaModel.instance.isTotal++;
      } else {
        print("Horario menor que o anterior : " +
            TercaModel.instance.tardeEntrada.toString());
      }

      break;
    default:
      break;
  }

  if (TercaModel.instance.isTotal == 2) {
    var manhaTotal = TercaModel.instance.manhaSaida
        .difference(TercaModel.instance.manhaEntrada);

    var tardeTotal = TercaModel.instance.tardeSaida
        .difference(TercaModel.instance.tardeEntrada);

    TercaModel.instance.total = manhaTotal + tardeTotal;
    TercaModel.instance.banco = TercaModel.instance.total! - jornada;
    TercaModel.instance.isTotal++;
  }
}

getQuarta() {
  final jornada = Duration(hours: 8);
  switch (QuartaModel.instance.steps) {
    case 1:
      QuartaModel.instance.manhaEntrada = DateTime.now();
      QuartaModel.instance.steps = 2;
      print(QuartaModel.instance.manhaEntrada);
      break;
    case 2:
      if (DateTime.now().isAfter(QuartaModel.instance.manhaEntrada)) {
        QuartaModel.instance.manhaSaida = DateTime.now();
        QuartaModel.instance.steps = 3;
        print(QuartaModel.instance.manhaSaida);
      } else {
        print("Horario menor que o anterior : " +
            QuartaModel.instance.manhaEntrada.toString());
      }
      break;
    case 3:
      if (DateTime.now().isAfter(QuartaModel.instance.manhaSaida)) {
        QuartaModel.instance.tardeEntrada = DateTime.now();
        QuartaModel.instance.steps = 4;
        print(QuartaModel.instance.tardeEntrada);
      } else {
        print("Horario menor que o anterior : " +
            QuartaModel.instance.manhaSaida.toString());
      }
      break;
    case 4:
      if (DateTime.now().isAfter(QuartaModel.instance.tardeEntrada)) {
        QuartaModel.instance.tardeSaida = DateTime.now();
        QuartaModel.instance.steps = 5;
        QuartaModel.instance.isTotal++;
      } else {
        print("Horario menor que o anterior : " +
            QuartaModel.instance.tardeEntrada.toString());
      }

      break;
    default:
      break;
  }

  if (QuartaModel.instance.isTotal == 2) {
    var manhaTotal = QuartaModel.instance.manhaSaida
        .difference(QuartaModel.instance.manhaEntrada);

    var tardeTotal = QuartaModel.instance.tardeSaida
        .difference(QuartaModel.instance.tardeEntrada);

    QuartaModel.instance.total = manhaTotal + tardeTotal;
    QuartaModel.instance.banco = QuartaModel.instance.total! - jornada;
    QuartaModel.instance.isTotal++;
  }
}

getQuinta() {
  final jornada = Duration(hours: 8);
  switch (QuintaModel.instance.steps) {
    case 1:
      QuintaModel.instance.manhaEntrada = DateTime.now();
      QuintaModel.instance.steps = 2;
      print(QuintaModel.instance.manhaEntrada);
      break;
    case 2:
      if (DateTime.now().isAfter(QuintaModel.instance.manhaEntrada)) {
        QuintaModel.instance.manhaSaida = DateTime.now();
        QuintaModel.instance.steps = 3;
        print(QuintaModel.instance.manhaSaida);
      } else {
        print("Horario menor que o anterior : " +
            QuintaModel.instance.manhaEntrada.toString());
      }
      break;
    case 3:
      if (DateTime.now().isAfter(QuintaModel.instance.manhaSaida)) {
        QuintaModel.instance.tardeEntrada = DateTime.now();
        QuintaModel.instance.steps = 4;
        print(QuintaModel.instance.tardeEntrada);
      } else {
        print("Horario menor que o anterior : " +
            QuintaModel.instance.manhaSaida.toString());
      }
      break;
    case 4:
      if (DateTime.now().isAfter(QuintaModel.instance.tardeEntrada)) {
        QuintaModel.instance.tardeSaida = DateTime.now();
        QuintaModel.instance.steps = 5;
        QuintaModel.instance.isTotal++;
      } else {
        print("Horario menor que o anterior : " +
            QuintaModel.instance.tardeEntrada.toString());
      }

      break;
    default:
      break;
  }

  if (QuintaModel.instance.isTotal == 2) {
    var manhaTotal = QuintaModel.instance.manhaSaida
        .difference(QuintaModel.instance.manhaEntrada);

    var tardeTotal = QuintaModel.instance.tardeSaida
        .difference(QuintaModel.instance.tardeEntrada);

    QuintaModel.instance.total = manhaTotal + tardeTotal;
    QuintaModel.instance.banco = QuintaModel.instance.total! - jornada;
    QuintaModel.instance.isTotal++;
  }
}

getSexta() {
  final jornada = Duration(hours: 8);
  switch (SextaModel.instance.steps) {
    case 1:
      SextaModel.instance.manhaEntrada = DateTime.now();
      SextaModel.instance.steps = 2;
      print(SextaModel.instance.manhaEntrada);
      break;
    case 2:
      if (DateTime.now().isAfter(SextaModel.instance.manhaEntrada)) {
        SextaModel.instance.manhaSaida = DateTime.now();
        SextaModel.instance.steps = 3;
        print(SextaModel.instance.manhaSaida);
      } else {
        print("Horario menor que o anterior : " +
            SextaModel.instance.manhaEntrada.toString());
      }
      break;
    case 3:
      if (DateTime.now().isAfter(SextaModel.instance.manhaSaida)) {
        SextaModel.instance.tardeEntrada = DateTime.now();
        SextaModel.instance.steps = 4;
        print(SextaModel.instance.tardeEntrada);
      } else {
        print("Horario menor que o anterior : " +
            SextaModel.instance.manhaSaida.toString());
      }
      break;
    case 4:
      if (DateTime.now().isAfter(SextaModel.instance.tardeEntrada)) {
        SextaModel.instance.tardeSaida = DateTime.now();
        SextaModel.instance.steps = 5;
        SextaModel.instance.isTotal++;
      } else {
        print("Horario menor que o anterior : " +
            SextaModel.instance.tardeEntrada.toString());
      }

      break;
    default:
      break;
  }

  if (SextaModel.instance.isTotal == 2) {
    var manhaTotal = SextaModel.instance.manhaSaida
        .difference(SextaModel.instance.manhaEntrada);

    var tardeTotal = SextaModel.instance.tardeSaida
        .difference(SextaModel.instance.tardeEntrada);

    SextaModel.instance.total = manhaTotal + tardeTotal;
    SextaModel.instance.banco = SextaModel.instance.total! - jornada;
    SextaModel.instance.isTotal++;
  }
}

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  late int day;
  late int now;
  @override
  Widget build(BuildContext context) {
    now = DateTime.now().hour;
    print("tá caindo aqui no buil;d");
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          appBar: AppBar(
            title: Row(
              children: [
                InkWell(
                  onTap: () {
                    setState(() {
                      print("tá caindo aqui");
                    });
                  },
                  child: Icon(Icons.autorenew),
                ),
                Container(
                  width: 30,
                ),
                Text("Ponto Eletrónico"),
              ],
            ),
            actions: [],
          ),
          body: Card(
              color: (now >= 8 && now <= 13) ? Colors.green : Colors.red,
              child: InkWell(
                splashColor: Colors.green.withAlpha(50),
                onTap: () {
                  print("Tá ciando aqui");
                  day = DateTime.now().day;
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
                    default:
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
              Navigator.of(context).pushNamed('/show');
            },
            child: Icon(Icons.announcement_sharp),
          ),
        ));
  }
}
