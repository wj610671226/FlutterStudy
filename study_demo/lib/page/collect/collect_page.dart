import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:study_demo/common/theme/app_theme_tool.dart';
import 'package:study_demo/common/tools/Internationalizing_tools.dart';
import 'package:study_demo/page/base/base_page.dart';
import 'package:study_demo/page/kitchen/model/recommend_model.dart';
import 'package:study_demo/page/login/login_page.dart';
import 'package:study_demo/provider/collect_notifier.dart';
import 'package:study_demo/provider/login_change_notifier.dart';

class CollectPage extends StatefulWidget {
  @override
  _CollectPageState createState() => _CollectPageState();
}

class _CollectPageState extends BasePageState<CollectPage> {
  @override
  Widget build(BuildContext context) {

    print("CollectPage - build");

    return Scaffold(
      appBar: AppBar(
        title: Text(InternationalizingTool.s.tab_collect),
      ),
      body: _buildCollectContentView(),
    );
  }

  _buildCollectContentView() {
    return Consumer<LoginChangeNotifier>(
      builder: ((BuildContext context, LoginChangeNotifier loginNotifier, Widget child) {
        return loginNotifier.isLogin ? _buildCollectedListView() : child;
      }),
      child: LoginPage(title: InternationalizingTool.s.save_food),
    );
  }

  _buildCollectedListView() {
    return Consumer<CollectChangeNotifier>(
      builder: ((BuildContext context, CollectChangeNotifier collect, Widget child) {
        return collect.collectedModels.length != 0 ? ListView.builder(
            padding: EdgeInsets.all(10),
            itemExtent: 200,
            itemCount: collect.collectedModels.length,
            itemBuilder: (BuildContext context, int index) {
              return _buildCollectItem(collect.collectedModels[index]);
            }) : Center(child: Text(InternationalizingTool.s.empty_data, style: TextStyle(color: ThemeModelTool.textColor),));
      }),
    );
  }

  _buildCollectItem(Recommendations model) {
    return Container(
      padding: EdgeInsets.only(bottom: 10.0),
      child: Row(
        children: <Widget>[
          Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10)
              ),
              clipBehavior: Clip.antiAlias,
              child: Image.network("${model.object.imageInfo.url}", width: 180, fit: BoxFit.cover,)
          ),
          Expanded(
              child: Padding(
                padding: const EdgeInsets.only(left: 10.0),
                child: Text(
                  "${model.object.title1st}",
                  overflow: TextOverflow.ellipsis,
                  maxLines: 5,
                  style: TextStyle(color: ThemeModelTool.textColor),
                ),
              )
          )
        ],
      ),
    );
  }
}