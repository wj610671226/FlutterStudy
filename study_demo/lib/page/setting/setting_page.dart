import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:study_demo/common/tools/Internationalizing_tools.dart';
import 'package:study_demo/provider/theme_notifier.dart';

class SettingPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("${InternationalizingTool.s.setting}"),
      ),
      body: _buildSettingContentView(),
    );
  }

  _buildSettingContentView() {
    return Column(
      children: <Widget>[
        Container(
          color: Colors.grey.shade300,
          child: ListTile(
            title: Text("${InternationalizingTool.s.night_mode}"),
            trailing: Consumer<ThemeChangeNotifier>(
              builder: ((ctx, theme, child) {
                return Switch(
                  value: !theme.isNormalTheme,
                  onChanged: ((value) {
                    theme.changeTheme();
                  }),
                );
              }),
            ),
          ),
        )
      ],
    );
  }
}
