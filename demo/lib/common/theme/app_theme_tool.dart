import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:demo/common/theme/app_theme.dart';
import 'package:demo/provider/theme_notifier.dart';

class ThemeModelTool {

  static ThemeModel? _themeModel;

  static void initialize(BuildContext context) {
    _themeModel = Provider.of<ThemeChangeNotifier>(context).themeModel;
  }


  static Color get textColor {
    return _themeModel!.textColor;
  }

  /// 更多扩展
}