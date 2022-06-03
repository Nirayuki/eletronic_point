import 'package:flutter/material.dart';

class MainModel extends ChangeNotifier {
  static MainModel instance = MainModel();

  int TempoEntrada = 0;
  int TempoSaida = 0;
}
