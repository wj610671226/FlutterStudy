import 'package:demo/common/tools/debug_tools.dart';
import 'package:flutter/material.dart';
import 'package:demo/common/config/config.dart';
import 'package:demo/common/tools/Internationalizing_tools.dart';
import 'package:demo/common/widgets/common_webview.dart';

// 市集页面
class BazaarPage extends StatefulWidget {
  const BazaarPage({Key? key}) : super(key: key);

  @override
  State<BazaarPage> createState() => _BazaarPageState();
}

class _BazaarPageState extends State<BazaarPage> {

  @override
  Widget build(BuildContext context) {
    DebugTools.print("BazaarPage - build");
    return Scaffold(
      appBar: AppBar(
        title: Text(InternationalizingTool.s!.tab_bazaar),
      ),
      body: CommonWebView(
        urlString: WebViewUrlConfig.bazaarUrlString,
      )
    );
  }
}

