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

  final TextEditingController _totalTextEditingController =
      TextEditingController();
  final TextEditingController _bigRTextEditingController =
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
                    child: Text("总重量"),
                  ),
                  Expanded(
                    child: TextField(
                        decoration: const InputDecoration(
                            border: OutlineInputBorder(),
                            hintText: '输入总重量',
                            labelText: "总重量"),
                        controller: _totalTextEditingController,
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
              Row(
                children: [
                  const SizedBox(
                    width: 80,
                    child: Text("外圈半径R"),
                  ),
                  Expanded(
                    child: TextField(
                        decoration: const InputDecoration(
                            border: OutlineInputBorder(),
                            hintText: '输入外圈R',
                            labelText: "外圈半径"),
                        controller: _bigRTextEditingController,
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

              /// 高度
              Row(
                children: [
                  const SizedBox(
                    width: 80,
                    child: Text("高度"),
                  ),
                  Expanded(
                    child: TextField(
                        decoration: const InputDecoration(
                            border: OutlineInputBorder(),
                            hintText: '输入高度h',
                            labelText: "高度"),
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
                  const Text("结果："),
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
    _totalTextEditingController.dispose();
    _bigRTextEditingController.dispose();
    _smallREditingController.dispose();
    _pTextEditingController.dispose();
    _hTextEditingController.dispose();
    super.dispose();
  }

  Future<void> _computeResult() async {
    debugPrint(
        "_totalTextEditingController.text = ${_totalTextEditingController.text}");
    debugPrint(
        "_bigRTextEditingController.text = ${_bigRTextEditingController.text}");
    debugPrint(
        "_smallREditingController.text = ${_smallREditingController.text}");
    debugPrint(
        "_pTextEditingController.text = ${_pTextEditingController.text}");
    debugPrint(
        "_hTextEditingController.text = ${_hTextEditingController.text}");

    if (_hTextEditingController.text.isEmpty || _bigRTextEditingController.text.isEmpty || _smallREditingController.text.isEmpty || _pTextEditingController.text.isEmpty || _hTextEditingController.text.isEmpty) {
      debugPrint("不能为空");
      return;
    }

    double total = double.parse(_totalTextEditingController.text);
    double bigR = double.parse(_bigRTextEditingController.text);
    double smallR = double.parse(_smallREditingController.text);
    double p = double.parse(_pTextEditingController.text);
    double h = double.parse(_hTextEditingController.text);

    debugPrint(
        "total = $total - bigR = $bigR - smallR = $smallR - p = $p - h = $h");

    double result = total - p * 3.1415926 * (bigR * bigR - smallR * smallR) * h;
    debugPrint("result = $result");

    setState(() {
      _result = result;
    });

    final prefs = await SharedPreferences.getInstance();
    await prefs.setDouble(ConfigKey.densityKey, p);
  }

  _renderComputeText() {
    if (_result != 0) {
      return Text("${_totalTextEditingController.text} - ${_pTextEditingController
          .text} * 3.1415926 * ${_hTextEditingController
          .text} * (${_bigRTextEditingController
          .text} * ${_bigRTextEditingController
          .text} - ${_smallREditingController.text} * ${_smallREditingController
          .text})");
    }
    return Container();
  }

}
