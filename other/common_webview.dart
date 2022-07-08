import 'dart:async';
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_webview_plugin/flutter_webview_plugin.dart';
import 'package:url_launcher/url_launcher.dart';
//import 'package:webview_flutter/webview_flutter.dart';

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
//  WebViewController _controller;
  DateTime _lastPressedAt;

  final _flutterWebviewPlugin = new FlutterWebviewPlugin();
  StreamSubscription<WebViewStateChanged> _onStateChanged;

  @override
  void initState() {
    _onStateChanged = _flutterWebviewPlugin.onStateChanged.listen((event) async {
      print("event.url = ${event.url}");
      if (event.type == WebViewState.shouldStart) {//拦截即将展现的页面
        if (event.url.contains("weixin://")) {
          _flutterWebviewPlugin.stopLoading();//停止加载
          await _launchURL(event.url);
          return;
        }
      }
    });
    super.initState();
  }

  @override
  void dispose() {
    _onStateChanged.cancel();
    _flutterWebviewPlugin.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: widget.title.length != 0 ? AppBar(
        title: Text(widget.title),
      ): null,
      body: _buildContentView2()
    );
  }

  _buildContentView2() {
    return WillPopScope(
      onWillPop: () async {
        print("onWillPop");
        if (await _flutterWebviewPlugin.canGoBack()) {
          print("canGoBack");
          await _flutterWebviewPlugin.goBack();
        } else {
          print("no canGoBack diff ${DateTime.now().difference(_lastPressedAt) > Duration(seconds: 1)}");
          if (_lastPressedAt == null ||
              DateTime.now().difference(_lastPressedAt) > Duration(seconds: 1)) {
            //两次点击间隔超过1秒则重新计时
            _lastPressedAt = DateTime.now();
            print("no canGoBack false");
            return false;
          } else {
            print("no canGoBack true");
            return true;
          }

        }
        return false;
      },
      child: Stack(
        children: <Widget>[
          WebviewScaffold(
            url: widget.urlString,
            withJavascript: true,
            clearCache: true,
            ignoreSSLErrors: Platform.isAndroid ? true: false,
          ),
//          _buildLoadingView()
        ],
      ),
    );
  }

//  _buildContentView() {
//    return WillPopScope(
//      onWillPop: () async {
//        print("onWillPop");
//        if (await _controller.canGoBack()) {
//          await _controller.goBack();
//          print("canGoBack");
//        } else {
//          print("no  canGoBack");
//          if (_lastPressedAt == null ||
//              DateTime.now().difference(_lastPressedAt) > Duration(seconds: 1)) {
//            //两次点击间隔超过1秒则重新计时
//            _lastPressedAt = DateTime.now();
//            return false;
//          }
//          return true;
//        }
//        return false;
//      },
//      child: Stack(
//        children: <Widget>[
//          WebView(
//            initialUrl: widget.urlString,
////            initialUrl: Uri.dataFromString('<html><body><iframe src=${widget.urlString}></iframe></body></html>', mimeType: 'text/html').toString(),
//            javascriptMode: JavascriptMode.unrestricted,
//            onWebViewCreated:(WebViewController webViewController) {
//              _controller = webViewController;
//            },
//            onPageStarted: (String url) {
//              print('Page started');
//            },
//            onPageFinished: (String url) {
//              print('Page finished');
//              setState(() {
//                _isLoading = false;
//              });
//            },
//            navigationDelegate: (NavigationRequest request) {
//              print('url = ${request.url}');
//              if (request.url.contains('weixin')) {
//                _launchURL(request.url);
//                return NavigationDecision.prevent;
//              }
////              if (request.url.contains('wx.tenpay.com')) {
////                _launchURL(request.url);
////                return NavigationDecision.prevent;
////              }
//              return NavigationDecision.navigate;
//            },
//          ),
//          _buildLoadingView()
//        ],
//      ),
//    );
//  }

  _buildLoadingView() {
    return _isLoading ? Center(child: CircularProgressIndicator()) : Text("");
  }

  _launchURL(url) async {
//    if (await canLaunch(url)) {
//      print("launch");
//      await launch(
//        url,
//        forceSafariVC: false,
//        forceWebView: false
//      );
//    } else {
//      throw 'Could not launch $url';
//    }

    await launch(
      url,
      forceSafariVC: false,
      forceWebView: false,
    );
  }
}