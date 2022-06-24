import 'dart:collection';

import 'package:flutter/material.dart';

class QuartaModel {
  static QuartaModel instance = QuartaModel();

  late DateTime manhaEntrada;
  late DateTime manhaSaida;
  late DateTime tardeEntrada;
  late DateTime tardeSaida;

  Duration? total;

  Duration? banco;

  int isTotal = 1;

  int steps = 1;
}
