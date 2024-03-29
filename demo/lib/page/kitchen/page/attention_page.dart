// 关注页面
import 'package:demo/common/tools/debug_tools.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:demo/common/theme/app_theme_tool.dart';
import 'package:demo/common/tools/Internationalizing_tools.dart';
import 'package:demo/page/login/login_page.dart';
import 'package:demo/provider/login_change_notifier.dart';

class AttentionPage extends StatelessWidget {
  const AttentionPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    DebugTools.print("AttentionPage build");
    return Consumer<LoginChangeNotifier>(
        builder: ((BuildContext context, LoginChangeNotifier loginNotifier, Widget? child) {
          if (loginNotifier.isLogin) {
            return Center(child: Text("关注页面", style: TextStyle(color: ThemeModelTool.textColor),));
          } else {
            return child!;
          }
        }),
      child: LoginPage(title: InternationalizingTool.s!.fun_because_of_kitchen_friends),
    );
  }
}
