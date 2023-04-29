import 'package:flutter/material.dart';
import '../models/thememodel.dart';

class ThemeProvider extends ChangeNotifier {
  Light light = Light(isDark: false);

  void changeTheme() {
    light.isDark = !light.isDark;
    notifyListeners();
  }
}
