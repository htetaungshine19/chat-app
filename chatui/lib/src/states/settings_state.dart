import 'package:chatui/src/services/databases/setting_database_api.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Settings extends ChangeNotifier {
  ThemeMode _theme = ThemeMode.light;
  bool _isLightMode = true;
  Settings() {
    init();
  }
  Future<void> init() async {
    try {
      bool a = await getIsLightMode();
      if (!a) {
        _theme = ThemeMode.dark;
        _isLightMode = false;
        notifyListeners();
      }
    } catch (_) {
      _theme = ThemeMode.light;
      _isLightMode = true;
    }
  }

  ThemeMode get theme => _theme;
  void setTheme(ThemeMode theme) async {
    _theme = theme;
    _isLightMode = _theme == ThemeMode.light ? true : false;
    await setIsLightMode(_isLightMode);
    notifyListeners();
  }

  bool get isLightMode => _isLightMode;
}
