import 'dart:collection';

import 'package:flutter/material.dart';

class QuintaModel {
  static QuintaModel instance = QuintaModel();

  late DateTime manhaEntrada;
  late DateTime manhaSaida;
  late DateTime tardeEntrada;
  late DateTime tardeSaida;

  Duration? total;

  Duration? banco;

  int isTotal = 1;

  int steps = 1;
}
