import 'package:flutter/material.dart';

/// 登录信息
class LoginChangeNotifier extends ChangeNotifier {
  bool _isLogin = false;

  bool get isLogin {
    return _isLogin;
  }

  set isLogin(bool value) {
    _isLogin = value;
    notifyListeners();
  }
}