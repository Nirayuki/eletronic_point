import 'dart:collection';

import 'package:flutter/material.dart';

class TercaModel {
  static TercaModel instance = TercaModel();

  late DateTime manhaEntrada;
  late DateTime manhaSaida;
  late DateTime tardeEntrada;
  late DateTime tardeSaida;

  Duration? total;

  Duration? banco;

  int isTotal = 1;

  int steps = 1;
}
