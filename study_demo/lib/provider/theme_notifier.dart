import 'package:flutter/material.dart';
import 'package:study_demo/common/theme/app_theme.dart';

class ThemeChangeNotifier extends ChangeNotifier {
  ThemeModel _themeModel = ThemeModel(
    themeData: ThemeModel.normalThemeData,
    bottomNavigationBarTheme: ThemeModel.normalBottomNavigationBarTheme,
    textColor: ThemeModel.textColorNormal
  );

  bool _isNormalTheme = true;

  ThemeModel get themeModel {
    return _themeModel;
  }

  bool get isNormalTheme {
    return _isNormalTheme;
  }

  void changeTheme() {
    _themeModel = _isNormalTheme ? ThemeModel(
        themeData: ThemeModel.darkThemeData,
        bottomNavigationBarTheme: ThemeModel.darkBottomNavigationBarTheme,
        textColor: ThemeModel.textColorDark
    ) : ThemeModel(
        themeData: ThemeModel.normalThemeData,
        bottomNavigationBarTheme: ThemeModel.normalBottomNavigationBarTheme,
        textColor: ThemeModel.textColorNormal
    );
    _isNormalTheme = !_isNormalTheme;
    notifyListeners();
  }
}