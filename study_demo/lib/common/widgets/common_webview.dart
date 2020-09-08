import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class CommonWebView extends StatefulWidget {

  final String urlString;
  final String title;

  CommonWebView({Key key,
    this.urlString = "",
    this.title = "",
  }) : super(key: key);

  @override
  _CommonWebViewState createState() => _CommonWebViewState();
}

class _CommonWebViewState extends State<CommonWebView> {

  bool _isLoading = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: widget.title.length != 0 ? AppBar(
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
            print('Page started');
          },
          onPageFinished: (String url) {
            print('Page finished');
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
    return _isLoading ? Center(child: CircularProgressIndicator()) : Text("");
  }
}