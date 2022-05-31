import 'package:flutter/material.dart';

class ThemeModel {
  final ThemeData themeData;
  final BottomNavigationBarThemeCustom bottomNavigationBarTheme;
  // 常用Text字体颜色
  final Color textColor;

  ThemeModel({
    required this.themeData,
    required this.bottomNavigationBarTheme,
    required this.textColor
  });


  // 默认样式
  static final ThemeData normalThemeData = ThemeData(
      primaryColor: Colors.white,
      appBarTheme: const AppBarTheme(
          elevation: 0.0,
          color: Colors.white,
          foregroundColor: Colors.black,
          iconTheme: IconThemeData(
              color: Colors.black
          )
      ),
      scaffoldBackgroundColor: Colors.white,
  );

  // 夜间模式
  static final ThemeData darkThemeData = ThemeData(
      primaryColor: Colors.black,
      appBarTheme: const AppBarTheme(
          elevation: 0.0,
          color: Colors.black,
          foregroundColor: Colors.white,
          iconTheme: IconThemeData(
              color: Colors.white
          )
      ),
      scaffoldBackgroundColor: Colors.black,
  );


  static final BottomNavigationBarThemeCustom normalBottomNavigationBarTheme = BottomNavigationBarThemeCustom(
    selectedItemColor: Colors.red,
    unselectedItemColor: Colors.black,
    backgroundColor: Colors.white,
  );


  static final BottomNavigationBarThemeCustom darkBottomNavigationBarTheme = BottomNavigationBarThemeCustom(
    selectedItemColor: Colors.red,
    unselectedItemColor: Colors.white,
    backgroundColor: Colors.black,
  );

  static const Color textColorNormal = Colors.black;
  static const Color textColorDark = Colors.white;
}

class BottomNavigationBarThemeCustom {
  final Color selectedItemColor;
  final Color unselectedItemColor;
  final Color backgroundColor;

  BottomNavigationBarThemeCustom({
    required this.selectedItemColor,
    required this.unselectedItemColor,
    required this.backgroundColor
  });
}