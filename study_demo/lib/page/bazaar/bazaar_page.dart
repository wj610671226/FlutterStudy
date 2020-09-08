import 'package:flutter/material.dart';
import 'package:study_demo/common/config/config.dart';
import 'package:study_demo/common/tools/Internationalizing_tools.dart';
import 'package:study_demo/common/widgets/common_webview.dart';
import 'package:study_demo/page/base/base_page.dart';

// 市集页面
class BazaarPage extends StatefulWidget {
  @override
  _BazaarPageState createState() => _BazaarPageState();
}

class _BazaarPageState extends BasePageState<BazaarPage> {
  @override
  Widget build(BuildContext context) {
    print("BazaarPage - build");
    return Scaffold(
      appBar: AppBar(
        title: Text("${InternationalizingTool.s.tab_bazaar}"),
      ),
      body: CommonWebView(
        urlString: WebViewUrlConfig.bazaarUrlString,
      )
    );
  }
}

