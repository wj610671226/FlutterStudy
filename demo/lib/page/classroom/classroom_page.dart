import 'package:demo/common/tools/debug_tools.dart';
import 'package:flutter/material.dart';
import 'package:demo/common/config/config.dart';
import 'package:demo/common/tools/Internationalizing_tools.dart';
import 'package:demo/common/widgets/common_webview.dart';

class ClassroomPage extends StatefulWidget {
  const ClassroomPage({Key? key}) : super(key: key);

  @override
  State<ClassroomPage> createState() => _ClassroomPageState();
}

class _ClassroomPageState extends State<ClassroomPage> {

  @override
  Widget build(BuildContext context) {
    DebugTools.print("tab_classroom = ${InternationalizingTool.s!.tab_classroom}");
    return Scaffold(
      appBar: AppBar(
        title: Text(InternationalizingTool.s!.tab_classroom),
      ),
      body: CommonWebView(
        urlString: WebViewUrlConfig.classroomUrlString,
      )
    );
  }
}