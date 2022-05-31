import 'package:demo/common/tools/debug_tools.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:demo/common/theme/app_theme_tool.dart';
import 'package:demo/common/tools/Internationalizing_tools.dart';
import 'package:demo/page/kitchen/model/recommend_model_entity.dart';
import 'package:demo/page/login/login_page.dart';
import 'package:demo/provider/collect_notifier.dart';
import 'package:demo/provider/login_change_notifier.dart';


class CollectPage extends StatefulWidget {
  const CollectPage({Key? key}) : super(key: key);

  @override
  State<CollectPage> createState() => _CollectPageState();
}

class _CollectPageState extends State<CollectPage> {
  @override
  Widget build(BuildContext context) {

    DebugTools.print("CollectPage - build");

    return Scaffold(
      appBar: AppBar(
        title: Text(InternationalizingTool.s!.tab_collect),
      ),
      body: _buildCollectContentView(),
    );
  }

  _buildCollectContentView() {
    return Consumer<LoginChangeNotifier>(
      builder: ((BuildContext context, LoginChangeNotifier loginNotifier, Widget? child) {
        return loginNotifier.isLogin ? _buildCollectedListView() : child;
      }),
      child: LoginPage(title: InternationalizingTool.s!.save_food),
    );
  }

  _buildCollectedListView() {
    return Consumer<CollectChangeNotifier>(
      builder: ((BuildContext context, CollectChangeNotifier collect, Widget? child) {
        return collect.collectedModels.isNotEmpty ? ListView.builder(
            padding: const EdgeInsets.all(10),
            itemExtent: 200,
            itemCount: collect.collectedModels.length,
            itemBuilder: (BuildContext context, int index) {
              return _buildCollectItem(collect.collectedModels[index]);
            }) : Center(child: Text(InternationalizingTool.s!.empty_data, style: TextStyle(color: ThemeModelTool.textColor)));
      }),
    );
  }

  _buildCollectItem(RecommendModelRecommendations model) {
    return Container(
      padding: const EdgeInsets.only(bottom: 10.0),
      child: Row(
        children: <Widget>[
          Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10)
              ),
              clipBehavior: Clip.antiAlias,
              child: Image.network(model.object.image.urlPattern, width: 180, fit: BoxFit.cover,)
          ),
          Expanded(
              child: Padding(
                padding: const EdgeInsets.only(left: 10.0),
                child: Text(
                  model.object.title1st,
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