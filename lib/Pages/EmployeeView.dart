import 'package:eletronic_point/Model/MainModel.dart';
import 'package:eletronic_point/Pages/HomePage.dart';
import 'package:eletronic_point/Model/SegundaModel.dart';
import 'package:eletronic_point/Model/TercaModel.dart';
import 'package:eletronic_point/Model/QuartaModel.dart';
import 'package:eletronic_point/Model/QuintaModel.dart';
import 'package:eletronic_point/Model/SextaModel.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'HomePage.dart';

getTotal() {
  final jornada = Duration(hours: 8);
  if (SegundaModel.instance.total == null && SegundaModel.instance.steps > 2) {
    var manhaTotal = SegundaModel.instance.manhaSaida
        .difference(SegundaModel.instance.manhaEntrada);

    if (SegundaModel.instance.steps == 4) {
      var tardeTotal = SegundaModel.instance.tardeSaida
          .difference(SegundaModel.instance.tardeEntrada);
      SegundaModel.instance.total = manhaTotal + tardeTotal;
      SegundaModel.instance.banco = SegundaModel.instance.total! - jornada;
    } else {
      SegundaModel.instance.total = manhaTotal;
      SegundaModel.instance.banco = SegundaModel.instance.total! - jornada;
    }
  }

  if (TercaModel.instance.total == null && TercaModel.instance.steps > 2) {
    var manhaTotal = TercaModel.instance.manhaSaida
        .difference(TercaModel.instance.manhaEntrada);

    if (TercaModel.instance.steps == 4) {
      var tardeTotal = TercaModel.instance.tardeSaida
          .difference(TercaModel.instance.tardeEntrada);
      TercaModel.instance.total = manhaTotal + tardeTotal;
      TercaModel.instance.banco = TercaModel.instance.total! - jornada;
    } else {
      TercaModel.instance.total = manhaTotal;
      TercaModel.instance.banco = TercaModel.instance.total! - jornada;
    }
  }

  if (QuartaModel.instance.total == null && QuartaModel.instance.steps > 2) {
    var manhaTotal = QuartaModel.instance.manhaSaida
        .difference(QuartaModel.instance.manhaEntrada);

    if (QuartaModel.instance.steps == 4) {
      var tardeTotal = QuartaModel.instance.tardeSaida
          .difference(QuartaModel.instance.tardeEntrada);
      QuartaModel.instance.total = manhaTotal + tardeTotal;
      QuartaModel.instance.banco = QuartaModel.instance.total! - jornada;
    } else {
      QuartaModel.instance.total = manhaTotal;
      QuartaModel.instance.banco = QuartaModel.instance.total! - jornada;
    }
  }

  if (QuintaModel.instance.total == null && QuintaModel.instance.steps > 2) {
    var manhaTotal = QuintaModel.instance.manhaSaida
        .difference(QuintaModel.instance.manhaEntrada);

    if (QuintaModel.instance.steps == 4) {
      var tardeTotal = QuintaModel.instance.tardeSaida
          .difference(QuintaModel.instance.tardeEntrada);
      QuintaModel.instance.total = manhaTotal + tardeTotal;
      QuintaModel.instance.banco = QuintaModel.instance.total! - jornada;
    } else {
      QuintaModel.instance.total = manhaTotal;
      QuintaModel.instance.banco = QuintaModel.instance.total! - jornada;
    }
  }

  if (SextaModel.instance.total == null && SextaModel.instance.steps > 2) {
    var manhaTotal = SextaModel.instance.manhaSaida
        .difference(SextaModel.instance.manhaEntrada);

    if (SextaModel.instance.steps == 4) {
      var tardeTotal = SextaModel.instance.tardeSaida
          .difference(SextaModel.instance.tardeEntrada);
      SextaModel.instance.total = manhaTotal + tardeTotal;
      SextaModel.instance.banco = SextaModel.instance.total! - jornada;
    } else {
      SextaModel.instance.total = manhaTotal;
      SextaModel.instance.banco = SextaModel.instance.total! - jornada;
    }
  }
}

class EmployeeView extends StatefulWidget {
  final TempoEntrada;
  const EmployeeView({Key? key, this.TempoEntrada}) : super(key: key);
  @override
  State<EmployeeView> createState() => _EmployeeViewState();
}

class _EmployeeViewState extends State<EmployeeView> {
  @override
  Widget build(BuildContext context) {
    getTotal();
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
                Text("Horas Trabalhadas"),
              ],
            ),
            actions: [],
          ),
          body: Padding(
            padding: const EdgeInsets.only(top: 20, left: 10, right: 10),
            child: Column(
              children: [
                Container(
                  height: 10,
                ),
                Card(
                  child: Padding(
                    padding: const EdgeInsets.all(12),
                    child: Column(
                      children: [
                        Text("Segunda"),
                        Text(SegundaModel.instance.total == null
                            ? "Total de horas: 0:00"
                            : "Total de horas: " +
                                SegundaModel.instance.total
                                    .toString()
                                    .substring(0, 8)),
                        Text(SegundaModel.instance.banco == null
                            ? "Banco de horas: 0:00:00"
                            : "Banco de horas: " +
                                SegundaModel.instance.banco
                                    .toString()
                                    .substring(0, 8)),
                      ],
                    ),
                  ),
                ),
                Container(
                  height: 10,
                ),
                Card(
                  child: Padding(
                    padding: const EdgeInsets.all(12),
                    child: Column(
                      children: [
                        Text("Terça"),
                        Text(TercaModel.instance.total == null
                            ? "Total de horas: 0:00"
                            : "Total de horas: " +
                                TercaModel.instance.total
                                    .toString()
                                    .substring(0, 8)),
                        Text(TercaModel.instance.banco == null
                            ? "Banco de horas: 0:00:00"
                            : "Banco de horas: " +
                                TercaModel.instance.banco
                                    .toString()
                                    .substring(0, 8)),
                      ],
                    ),
                  ),
                ),
                Container(
                  height: 10,
                ),
                Card(
                  child: Padding(
                    padding: const EdgeInsets.all(12),
                    child: Column(
                      children: [
                        Text("Quarta"),
                        Text(QuartaModel.instance.total == null
                            ? "Total de horas: 0:00"
                            : "Total de horas: " +
                                QuartaModel.instance.total
                                    .toString()
                                    .substring(0, 8)),
                        Text(QuartaModel.instance.banco == null
                            ? "Banco de horas: 0:00:00"
                            : "Banco de horas: " +
                                QuartaModel.instance.banco
                                    .toString()
                                    .substring(0, 8)),
                      ],
                    ),
                  ),
                ),
                Container(
                  height: 10,
                ),
                Card(
                  child: Padding(
                    padding: const EdgeInsets.all(12),
                    child: Column(
                      children: [
                        Text("Quinta"),
                        Text(QuintaModel.instance.total == null
                            ? "Total de horas: 0:00"
                            : "Total de horas: " +
                                QuintaModel.instance.total
                                    .toString()
                                    .substring(0, 8)),
                        Text(QuintaModel.instance.banco == null
                            ? "Banco de horas: 0:00:00"
                            : "Banco de horas: " +
                                QuintaModel.instance.banco
                                    .toString()
                                    .substring(0, 8)),
                      ],
                    ),
                  ),
                ),
                Container(
                  height: 10,
                ),
                Card(
                  child: Padding(
                    padding: const EdgeInsets.all(12),
                    child: Column(
                      children: [
                        Text("Sexta"),
                        Text(SextaModel.instance.total == null
                            ? "Total de horas: 0:00"
                            : "Total de horas: " +
                                SextaModel.instance.total
                                    .toString()
                                    .substring(0, 8)),
                        Text(SextaModel.instance.banco == null
                            ? "Banco de horas: 0:00:00"
                            : "Banco de horas: " +
                                SextaModel.instance.banco
                                    .toString()
                                    .substring(0, 8)),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ));
  }
}
