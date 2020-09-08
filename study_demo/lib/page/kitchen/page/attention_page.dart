// 关注页面
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:study_demo/common/theme/app_theme_tool.dart';
import 'package:study_demo/common/tools/Internationalizing_tools.dart';
import 'package:study_demo/page/login/login_page.dart';
import 'package:study_demo/provider/login_change_notifier.dart';

class AttentionPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    print("AttentionPage build");
    return Consumer<LoginChangeNotifier>(
        builder: ((BuildContext context, LoginChangeNotifier loginNotifier, Widget child) {
          return loginNotifier.isLogin ? Center(child: Text("关注页面", style: TextStyle(color: ThemeModelTool.textColor),)) : child;
        }),
      child: LoginPage(title: InternationalizingTool.s.fun_because_of_kitchen_friends),
    );
  }
}
