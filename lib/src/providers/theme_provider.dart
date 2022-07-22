import 'package:flutter/material.dart';

class ThemeChanger extends ChangeNotifier {
  late ThemeMode? _mode;

  ThemeChanger(this._mode);

  ThemeMode get mode => _mode!;

  void setTheme(ThemeMode mode) {
    _mode = mode;
    notifyListeners();
  }
}
