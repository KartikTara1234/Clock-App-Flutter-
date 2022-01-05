import 'package:flutter/material.dart';

class MyThemeModel extends ChangeNotifier {
  bool _islightTheme = true;

  void changeTheme() {
    _islightTheme = !_islightTheme;
    notifyListeners();
  }

  bool get isLightTheme => _islightTheme;
}
