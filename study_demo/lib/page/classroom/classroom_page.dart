import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:study_demo/common/config/config.dart';
import 'package:study_demo/common/theme/app_theme_tool.dart';
import 'package:study_demo/common/tools/Internationalizing_tools.dart';
import 'package:study_demo/common/widgets/common_webview.dart';
import 'package:study_demo/page/base/base_page.dart';

const APPBAR_SCROLL_OFFSET = 100;

class ClassroomPage extends StatefulWidget {
  @override
  _ClassroomPageState createState() => _ClassroomPageState();
}

class _ClassroomPageState extends BasePageState<ClassroomPage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("${InternationalizingTool.s.tab_classroom}"),
      ),
      body: CommonWebView(
        urlString: WebViewUrlConfig.classroomUrlString,
      )
    );
  }
}