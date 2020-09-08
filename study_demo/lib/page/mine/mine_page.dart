import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:study_demo/common/theme/app_theme_tool.dart';
import 'package:study_demo/common/tools/Internationalizing_tools.dart';
import 'package:study_demo/page/base/base_page.dart';
import 'package:study_demo/page/login/login_page.dart';
import 'package:study_demo/provider/login_change_notifier.dart';
import 'package:study_demo/routes/route_config.dart';

class MinePage extends StatefulWidget {
  @override
  _MinePageState createState() => _MinePageState();
}

class _MinePageState extends BasePageState<MinePage> {
  @override
  Widget build(BuildContext context) {

    print("MinePage - build");

    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.add),
        title: Text(InternationalizingTool.s.tab_mine),
        actions: <Widget>[
          GestureDetector(
            child: Padding(
              padding: const EdgeInsets.only(right: 20),
              child: Icon(Icons.settings),
            ),
            onTap: (() {
              Navigator.pushNamed(context, RouterConfig.SettingPageRouteName);
            }),
          )
        ],
      ),
      body: _buildMineContentView(context),
    );
  }

  _buildMineContentView(BuildContext context) {
    return Consumer<LoginChangeNotifier>(
      builder: ((BuildContext context, LoginChangeNotifier loginNotifier, Widget child) {
        return loginNotifier.isLogin ? child : LoginPage();
      }),
      child: _buildMineView(),
    );
  }

  _buildMineView() {
    return Center(
      child: Text("我的页面", style: TextStyle(color: ThemeModelTool.textColor),),
    );
  }
}
