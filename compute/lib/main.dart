import 'dart:math';

import 'package:compute/config.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: '重量计算'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  double _result = 0;

  final TextEditingController _needTextEditingController =
      TextEditingController();
  final TextEditingController _smallREditingController =
      TextEditingController();
  final TextEditingController _pTextEditingController = TextEditingController();
  final TextEditingController _hTextEditingController = TextEditingController();

  @override
  void initState() {
    super.initState();
    Future.delayed(Duration.zero, () {
      getDensity();
    });
  }

  getDensity() async {
    final prefs = await SharedPreferences.getInstance();
    double? density = prefs.getDouble(ConfigKey.densityKey);
    debugPrint("densityKey = $density");
    _pTextEditingController.text = "${density ?? ""}";
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            // mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Row(
                children: [
                  const SizedBox(
                    width: 80,
                    child: Text("重量"),
                  ),
                  Expanded(
                    child: TextField(
                        decoration: const InputDecoration(
                            border: OutlineInputBorder(),
                            hintText: '输入需要的重量',
                            labelText: "需要切的重量"),
                        controller: _needTextEditingController,
                        keyboardType: TextInputType.number),
                  ),
                  const Padding(
                    padding: EdgeInsets.only(left: 8.0),
                    child: Text("单位：kg"),
                  ),
                ],
              ),
              const SizedBox(
                height: 10,
              ),

              /// 大R
              // Row(
              //   children: [
              //     const SizedBox(
              //       width: 80,
              //       child: Text("外圈半径R"),
              //     ),
              //     Expanded(
              //       child: TextField(
              //           decoration: const InputDecoration(
              //               border: OutlineInputBorder(),
              //               hintText: '输入外圈R',
              //               labelText: "外圈半径"),
              //           controller: _bigRTextEditingController,
              //           keyboardType: TextInputType.number),
              //     ),
              //     const Padding(
              //       padding: EdgeInsets.only(left: 8.0),
              //       child: Text("单位：m"),
              //     ),
              //   ],
              // ),
              // const SizedBox(
              //   height: 10,
              // ),

              /// xiao r
              Row(
                children: [
                  const SizedBox(
                    width: 80,
                    child: Text("内圈半径r"),
                  ),
                  Expanded(
                    child: TextField(
                        decoration: const InputDecoration(
                            border: OutlineInputBorder(),
                            hintText: '输入内圈r',
                            labelText: "内圈半径"),
                        controller: _smallREditingController,
                        keyboardType: TextInputType.number),
                  ),
                  const Padding(
                    padding: EdgeInsets.only(left: 8.0),
                    child: Text("单位：m"),
                  ),
                ],
              ),
              const SizedBox(
                height: 10,
              ),

              /// 密度
              Row(
                children: [
                  const SizedBox(
                    width: 80,
                    child: Text("密度ρ"),
                  ),
                  Expanded(
                    child: TextField(
                        decoration: const InputDecoration(
                            border: OutlineInputBorder(),
                            hintText: '输入密度ρ',
                            labelText: "密度"),
                        controller: _pTextEditingController,
                        keyboardType: TextInputType.number),
                  ),
                  const Padding(
                    padding: EdgeInsets.only(left: 8.0),
                    child: Text("单位：kg/m³"),
                  ),
                ],
              ),
              const SizedBox(
                height: 10,
              ),

              /// 宽度
              Row(
                children: [
                  const SizedBox(
                    width: 80,
                    child: Text("宽度"),
                  ),
                  Expanded(
                    child: TextField(
                        decoration: const InputDecoration(
                            border: OutlineInputBorder(),
                            hintText: '输入材料宽度h',
                            labelText: "材料宽度"),
                        controller: _hTextEditingController,
                        keyboardType: TextInputType.number),
                  ),
                  const Padding(
                    padding: EdgeInsets.only(left: 8.0),
                    child: Text("单位：m"),
                  ),
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              TextButton(onPressed: _computeResult, child: const Text("计算")),
              const SizedBox(
                height: 10,
              ),
              // total - p * 3.1415926 * (bigR * bigR - smallR * smallR) * h
              _renderComputeText(),
              const SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text("需要切的厚度："),
                  Text("$_result"),
                ],
              )
            ],
          ),
        ),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }

  @override
  void dispose() {
    _needTextEditingController.dispose();
    _smallREditingController.dispose();
    _pTextEditingController.dispose();
    _hTextEditingController.dispose();
    super.dispose();
  }

  Future<void> _computeResult() async {
    debugPrint(
        "_needTextEditingController.text = ${_needTextEditingController.text}");
    debugPrint(
        "_smallREditingController.text = ${_smallREditingController.text}");
    debugPrint(
        "_pTextEditingController.text = ${_pTextEditingController.text}");
    debugPrint(
        "_hTextEditingController.text = ${_hTextEditingController.text}");

    if (_hTextEditingController.text.isEmpty ||
        _smallREditingController.text.isEmpty ||
        _pTextEditingController.text.isEmpty ||
        _hTextEditingController.text.isEmpty) {
      debugPrint("不能为空");
      return;
    }

    double need = double.parse(_needTextEditingController.text);
    double smallR = double.parse(_smallREditingController.text);
    double p = double.parse(_pTextEditingController.text);
    double h = double.parse(_hTextEditingController.text);

    debugPrint("need = $need - smallR = $smallR - p = $p - h = $h");

    double result = sqrt(need / (3.1415926 * p * h) + smallR * smallR) - smallR;
    debugPrint("result = $result");

    setState(() {
      _result = result;
    });

    final prefs = await SharedPreferences.getInstance();
    await prefs.setDouble(ConfigKey.densityKey, p);
  }

  _renderComputeText() {
    if (_result != 0) {
      return Text(
          "sqrt(${_needTextEditingController.text} / (3.1415926 * ${_pTextEditingController.text} * ${_hTextEditingController.text}) + ${_smallREditingController.text} * ${_smallREditingController.text}) - ${_smallREditingController.text}");
    }
    return Container();
  }
}
