import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import './common_webview.dart';
import 'package:connectivity/connectivity.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  bool _connectionStatus = true;
  final Connectivity _connectivity = Connectivity();
  StreamSubscription<ConnectivityResult> _connectivitySubscription;

  @override
  void initState() {
    super.initState();
    initConnectivity();
    _connectivitySubscription = Connectivity().onConnectivityChanged.listen((ConnectivityResult result) {
      print("ConnectivityResult = " + result.toString());
      switch (result) {
        case ConnectivityResult.none:
          setState(() => _connectionStatus = false);
          break;
        default:
          setState(() => _connectionStatus = true);
          break;
      }
    });
  }

  Future<Null> initConnectivity() async {
    ConnectivityResult result;
    try {
      result = await _connectivity.checkConnectivity();
      print("result = " + result.toString());
    } on PlatformException catch (e) {
      print(e.toString());
    }
  }

  @override
  Widget build(BuildContext context) {
    return _connectionStatus ? CommonWebView(
      urlString: "https://yijijinfu.com/h5",
    ): _buildNoNetWorkView();
  }
  
  _buildNoNetWorkView() {
    return Scaffold(
        body: Center(
          child: Container(
            height: 600,
            child: Column(
              children: [
                Image.asset("assets/images/no_wifi.png"),
                Text("网络开小差了", style: TextStyle(fontSize: 18, color: Colors.grey),)
              ],
            ),
          ),
        )
    );
  }

  @override
  void dispose() {
    _connectivitySubscription.cancel();
    super.dispose();
  }
}