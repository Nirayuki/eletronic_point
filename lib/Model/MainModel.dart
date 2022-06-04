import 'package:flutter/material.dart';

class MainModel {
  static  MainModel instance = MainModel();

  String? mes;
  int? dia;
  int? manhaEntrada;
  int? manhaSaida;
  int? tardeEntrada;
  int? tardeSaida;

  MainModel(
      {this.mes,
        this.dia,
        this.manhaEntrada,
        this.manhaSaida,
        this.tardeEntrada,
        this.tardeSaida});

  MainModel.fromJson(Map<String, dynamic> json) {
    mes = json['mes'];
    dia = json['dia'];
    manhaEntrada = json['manhaEntrada'];
    manhaSaida = json['manhaSaida'];
    tardeEntrada = json['tardeEntrada'];
    tardeSaida = json['tardeSaida'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['mes'] = this.mes;
    data['dia'] = this.dia;
    data['manhaEntrada'] = this.manhaEntrada;
    data['manhaSaida'] = this.manhaSaida;
    data['tardeEntrada'] = this.tardeEntrada;
    data['tardeSaida'] = this.tardeSaida;
    return data;
  }

}

