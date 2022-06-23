import 'package:flutter/material.dart';

class MainModel {
  static MainModel instance = MainModel();

  var days = [20, 21, 22, 23, 24, 25];

  final manhaEntrada = [];
  final manhaSaida = [];
  final tardeEntrada = [];
  final tardeSaida = [];

  var segunda = {
    "dia": 20,
    "entradaManha": "",
    "SaidaManha": "",
    "entradaTarde": "",
    "saidaTarde": "",
    "passou": false,
    "steps": 1,
    "total": "",
  };

  var terca = {
    "dia": 21,
    "entradaManha": "",
    "SaidaManha": "",
    "entradaTarde": "",
    "saidaTarde": "",
    "passou": false,
    "steps": 1
  };

  Map<String, int> quarta = {
    "dia": 22,
    "entradaManha": 0,
    "SaidaManha": 0,
    "entradaTarde": 0,
    "saidaTarde": 0,
    "steps": 1,
    "total": 0,
  };

  var quinta = {
    "dia": 23,
    "entradaManha": "",
    "SaidaManha": "",
    "entradaTarde": "",
    "saidaTarde": "",
    "passou": false,
    "steps": 1,
  };

  var sexta = {
    "dia": 24,
    "entradaManha": "",
    "SaidaManha": "",
    "entradaTarde": "",
    "saidaTarde": "",
    "passou": false,
    "steps": 1
  };

  var sabado = {
    "dia": 25,
    "entradaManha": "",
    "SaidaManha": "",
    "entradaTarde": "",
    "saidaTarde": "",
    "passou": false,
    "steps": 1
  };

  var total = [0, 0, 0, 0, 0, 0];
}
