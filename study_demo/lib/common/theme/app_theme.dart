import 'package:flutter/material.dart';

class ThemeModel {
  final ThemeData themeData;
  final BottomNavigationBarTheme bottomNavigationBarTheme;
  // 常用Text字体颜色
  final Color textColor;

  ThemeModel({
    this.themeData,
    this.bottomNavigationBarTheme,
    this.textColor
  });


  // 默认样式
  static final ThemeData normalThemeData = ThemeData(
      primaryColor: Colors.white,
      appBarTheme: AppBarTheme(
          elevation: 0.0,
          color: Colors.white,
          iconTheme: IconThemeData(
              color: Colors.black
          )
      ),
      scaffoldBackgroundColor: Colors.white,
  );

  // 夜间模式
  static final ThemeData darkThemeData = ThemeData(
      primaryColor: Colors.black,
      appBarTheme: AppBarTheme(
          elevation: 0.0,
          color: Colors.black,
          iconTheme: IconThemeData(
              color: Colors.white
          )
      ),
      scaffoldBackgroundColor: Colors.black,
  );


  static final BottomNavigationBarTheme normalBottomNavigationBarTheme = BottomNavigationBarTheme(
    selectedItemColor: Colors.red,
    unselectedItemColor: Colors.black,
    backgroundColor: Colors.white,
  );


  static final BottomNavigationBarTheme darkBottomNavigationBarTheme = BottomNavigationBarTheme(
    selectedItemColor: Colors.red,
    unselectedItemColor: Colors.white,
    backgroundColor: Colors.black,
  );

  static final Color textColorNormal = Colors.black;
  static final Color textColorDark = Colors.white;
}

class BottomNavigationBarTheme {
  final Color selectedItemColor;
  final Color unselectedItemColor;
  final Color backgroundColor;

  BottomNavigationBarTheme({
    this.selectedItemColor,
    this.unselectedItemColor,
    this.backgroundColor
  });
}