import 'package:flutter/material.dart';

class BringhtnessController extends ChangeNotifier {

  static BringhtnessController instance = BringhtnessController();

  bool isDark = false;

  changeTheme() {
    isDark = !isDark;
    notifyListeners();
  }
}
