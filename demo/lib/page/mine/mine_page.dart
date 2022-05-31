import 'package:demo/common/theme/app_theme_tool.dart';
import 'package:demo/common/tools/Internationalizing_tools.dart';
import 'package:demo/page/login/login_page.dart';
import 'package:demo/provider/login_change_notifier.dart';
import 'package:demo/routes/route_config.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class MinePage extends StatefulWidget {
  const MinePage({Key? key}) : super(key: key);

  @override
  State<MinePage> createState() => _MinePageState();
}

class _MinePageState extends State<MinePage> {
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        leading: const Icon(Icons.add),
        title: Text(InternationalizingTool.s!.tab_mine),
        actions: <Widget>[
          GestureDetector(
            onTap: (() {
              Navigator.pushNamed(context, RouterConfig.settingPageRouteName);
            }),
            child: const Padding(
              padding: EdgeInsets.only(right: 20),
              child: Icon(Icons.settings),
            ),
          )
        ],
      ),
      body: _buildMineContentView(context),
    );
  }

  _buildMineContentView(BuildContext context) {
    return Consumer<LoginChangeNotifier>(
      builder: ((BuildContext context, LoginChangeNotifier loginNotifier, Widget? child) {
        if (loginNotifier.isLogin) {
          return child!;
        } else {
          return LoginPage();
        }
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
