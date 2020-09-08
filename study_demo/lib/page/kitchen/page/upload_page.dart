import 'dart:math';

import 'package:flutter/material.dart';
import 'package:study_demo/common/theme/app_theme_tool.dart';
import 'package:study_demo/common/tools/Internationalizing_tools.dart';
import 'package:study_demo/common/tools/screen_tools.dart';
import 'package:study_demo/common/tools/toast_tool.dart';

class UploadPage extends StatelessWidget {

  final List<Map<String, String>> _uploadList = [
    {"imageString": "assets/images/upload/upload_recipe~iphone.png", "title": InternationalizingTool.s.upload_cookbook},
    {"imageString": "assets/images/upload/upload_dish~iphone.png", "title": InternationalizingTool.s.upload_works},
    {"imageString": "assets/images/upload/upload_dish_video~iphone.png", "title": InternationalizingTool.s.upload_video}
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        leading: GestureDetector(
          child: Hero(child: Transform.rotate(child: Icon(Icons.add), angle: pi / 4,), tag: "hero_test",),
          onTap: (() {
            Navigator.pop(context);
          }),
        ),
      ),
      body: _buildContentView(context),
    );
  }

  _buildContentView(BuildContext context) {
    return Column(
      children: <Widget>[
        Container(
          alignment: Alignment.center,
          width: double.infinity,
          height: ScreenFitTool.screenHeight * 0.6,
          child: Text(
            InternationalizingTool.s.upload_share_message,
            style: TextStyle(color: Colors.grey.shade600, fontSize: 16),),
        ),
        Expanded(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: _uploadList.map((item) {
              return GestureDetector(
                child: Column(
                  children: <Widget>[
                    Image.asset(item["imageString"], width: 60, height: 60,),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(item["title"], style: TextStyle(color: ThemeModelTool.textColor),),
                    )
                  ],
                ),
                onTap: () => ToastTool.showText("tap"),
              );
            }).toList(),
          ),
        )
      ],
    );
  }
}
