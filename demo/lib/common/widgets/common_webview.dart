import 'package:demo/common/tools/debug_tools.dart';
import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class CommonWebView extends StatefulWidget {

  final String urlString;
  final String title;

  const CommonWebView({Key? key,
    this.urlString = "",
    this.title = "",
  }) : super(key: key);

  @override
  State<CommonWebView> createState() => _CommonWebViewState();
}

class _CommonWebViewState extends State<CommonWebView> {

  bool _isLoading = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: widget.title.isNotEmpty ? AppBar(
        title: Text(widget.title),
      ): null,
      body: _buildContentView()
    );
  }

  _buildContentView() {
    return Stack(
      children: <Widget>[
        WebView(
          initialUrl: widget.urlString,
          javascriptMode: JavascriptMode.unrestricted,
          onPageStarted: (String url) {
            DebugTools.print('Page started');
          },
          onPageFinished: (String url) {
            DebugTools.print('Page finished');
            setState(() {
              _isLoading = false;
            });
          },
        ),
        _buildLoadingView()
      ],
    );
  }

  _buildLoadingView() {
    return _isLoading ? const Center(child: CircularProgressIndicator()) : const Text("");
  }
}