import 'dart:io';

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:study_demo/common/theme/app_theme_tool.dart';
import 'package:study_demo/common/tools/Internationalizing_tools.dart';
import 'package:study_demo/common/tools/screen_tools.dart';
import 'package:study_demo/common/tools/toast_tool.dart';
import 'package:study_demo/common/widgets/common_button.dart';
import 'package:study_demo/provider/login_change_notifier.dart';
import 'package:study_demo/provider/theme_notifier.dart';

class LoginPage extends StatelessWidget {

  final List<String> _imageNameList = [
    "assets/images/mine/apple_login_logo~iphone.png",
    "assets/images/mine/login_via_weibo~iphone.png",
    "assets/images/mine/login_via_QQ~iphone.png",
    "assets/images/mine/login_via_douban~iphone.png",
    "assets/images/mine/login_via_mail~iphone.png",
  ];

  String title;
  final bool isShowAppBar;
  final bool loginSuccessPop;

  LoginPage({
    Key key,
    this.title = "",
    this.isShowAppBar = false,
    this.loginSuccessPop = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    title = this.title == "" ? InternationalizingTool.s.ready_eat: this.title;
    return Scaffold(
      appBar: this.isShowAppBar ? AppBar(title: Text(InternationalizingTool.s.login),) : null,
      body: _buildLoginContentView(context),
    );
  }


  _buildLoginContentView(BuildContext context) {
    return Column(
      children: <Widget>[
        _buildTopView(context),
        _buildOtherLoginView(context)
      ],
    );
  }


  _buildTopView(BuildContext context) {
    return Container(
        width: double.infinity,
        height: 280.px,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Column(
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.only(left: 20, top: 40),
                  child: Container(
                    child: Text(this.title, style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold, color: ThemeModelTool.textColor)),
                    width: double.infinity,
                  ),
                ),
                _buildLoginProtocolView()
              ],
            ),
            Column(
              children: <Widget>[
                Consumer<LoginChangeNotifier>(
                  builder: ((BuildContext context, LoginChangeNotifier value, Widget child) {
                    return Padding(
                      padding: const EdgeInsets.only(top: 10),
                      child: CommonButton(
                        title: InternationalizingTool.s.we_chat_login,
                        backgroundColor: Colors.green.shade400,
                        onTap: (() => _login(value, context)),
                        titleStyle: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 18),
                      ),
                    );
                  }),
                ),
                Consumer<LoginChangeNotifier>(
                  builder: ((BuildContext context, LoginChangeNotifier value, Widget child) {
                    return Padding(
                      padding: const EdgeInsets.only(top: 10),
                      child: CommonButton(
                        title: InternationalizingTool.s.phone_login,
                        backgroundColor: Color.fromRGBO(233, 233, 233, 1),
                        onTap: (() {
                          _login(value, context);
                        }),
                      ),
                    );
                  }),
                ),
              ],
            )
          ],
        )
    );
  }


  _buildOtherLoginView(BuildContext context) {
    return Expanded(
      child: Stack(
        children: <Widget>[
          _buildOtherLoginButton(context)
        ],
      ),
    );
  }

  _buildOtherLoginButton(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.end,
      children: <Widget>[
        Text(InternationalizingTool.s.other_login, style: TextStyle(color: Colors.grey.shade600)),
        Padding(
          padding: EdgeInsets.only(left: 40, right: 40, top: 10, bottom: Platform.isIOS ? 50 : 30),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: _imageNameList.map((title) {
              return GestureDetector(
                child: ClipOval(child: Image.asset(title, width: 56, height: 56,),),
                onTap: () => ToastTool.showText(InternationalizingTool.s.other_login),);
            }).toList(),
          ),
        ),
      ],
    );
  }

  _buildLoginProtocolView() {
    return Padding(
      padding: const EdgeInsets.only(left: 20.0, top: 10),
      child: Container(
        width: double.infinity,
        child: Wrap(
          children: <Widget>[
            Text(InternationalizingTool.s.agree_user_agreement, style: TextStyle(color: Colors.grey.shade500),),
            GestureDetector(
              child: Text(InternationalizingTool.s.user_agreement, style: TextStyle(decoration: TextDecoration.underline, color: ThemeModelTool.textColor)),
              onTap: (() {
                ToastTool.showText(InternationalizingTool.s.click_user_agreement);
              }),
            ),
            Text(InternationalizingTool.s.and, style: TextStyle(color: Colors.grey.shade500),),
            Text(InternationalizingTool.s.privacy_policy, style: TextStyle(decoration: TextDecoration.underline, color: ThemeModelTool.textColor)),
          ],
        ),
      ),
    );
  }

  _login(LoginChangeNotifier loginChangeNotifier, BuildContext context) {
    loginChangeNotifier.isLogin = true;
    ToastTool.showText("登录成功");
    if (loginSuccessPop) {
      Navigator.pop(context);
    }
  }
}
