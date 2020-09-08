// 下厨房页面
import 'package:flutter/material.dart';
import 'package:study_demo/common/tools/Internationalizing_tools.dart';
import 'package:study_demo/common/tools/toast_tool.dart';
import 'package:study_demo/page/base/base_page.dart';
import 'package:study_demo/page/kitchen/page/attention_page.dart';
import 'package:study_demo/page/kitchen/page/recommend_page.dart';
import 'package:study_demo/page/kitchen/page/search_page.dart';
import 'package:study_demo/page/kitchen/page/upload_page.dart';
import 'package:study_demo/page/kitchen/page/video_page.dart';

class KitchenPage extends StatefulWidget {
  @override
  _KitchenPageState createState() => _KitchenPageState();
}

class _KitchenPageState extends BasePageState<KitchenPage> with TickerProviderStateMixin {

  final List<String> _tabBarTitles = [InternationalizingTool.s.attention, InternationalizingTool.s.recommend, InternationalizingTool.s.video];
  TabController _tabController;
  int _initialIndex = 0;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(initialIndex:_initialIndex,length: 3, vsync: this);
    _tabController.addListener(() {
      setState(() {
        _initialIndex = _tabController.index;
      });
    });
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {

    print("KitchenPage build");

    return Scaffold(
      appBar: AppBar(
        leading: _buildAppBarLeading(context),
        title: _buildAppBarSearchView(context),
        actions: <Widget>[
          GestureDetector(child: Icon(Icons.video_label), onTap: () {
            ToastTool.showText("暂未实现");
          },),
          // 占位
          Icon(Icons.video_label, color: Colors.transparent,),
        ],
      ),
      body: Column(
          children: <Widget>[
            _buildTabBar(),
            _buildTabBarView()
          ]
      )
    );
  }

  Widget _buildAppBarSearchView(BuildContext context) {
    return GestureDetector(
      onTap: (() {
        print("ss");
        Navigator.push(context, PageRouteBuilder(
            pageBuilder: ((ctx, anim1, anim2) {
              return SearchPage();
            })
        ));
      }),
      child: Container(
        decoration: BoxDecoration(
            color: Colors.grey.shade200,
            borderRadius: BorderRadius.circular(5.0)
        ),
        width: double.infinity,
        height: 40,
        child: Row(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.only(left: 8.0),
              child: Icon(Icons.search, color: Colors.grey,),
            ),
            Text(InternationalizingTool.s.search_place_holder, style: TextStyle(color: Colors.grey, fontSize: 18, fontWeight: FontWeight.w400),)
          ],
        ),
      ),
    );
}

  Widget _buildTabBar() {
    return Container(
        child: Center(
            child: TabBar(
                controller: _tabController,
                isScrollable: true,
                indicatorColor: Colors.red,
                indicatorSize: TabBarIndicatorSize.label,
                unselectedLabelColor: Colors.grey,
                tabs: _tabBarTitles.map((title) {
                  return Tab(text: title);
                }).toList(),
            )
        )
    );
  }

  Widget _buildTabBarView() {
    return Expanded(
      child: TabBarView(
        controller: _tabController,
        children: [
          AttentionPage(),
          RecommendPage(),
          VideoPage()
        ],
      ),
    );
  }

  _buildAppBarLeading(BuildContext context) {
    return GestureDetector(
      child: Hero(child: Icon(Icons.add), tag: "hero_test",),
      onTap: (() {
        Navigator.push(context, PageRouteBuilder(
            pageBuilder: ((ctx, anim1, anim2) {
              return FadeTransition(
                child: UploadPage(),
                opacity: anim1,
              );
            })
        ));
      }),
    );
  }
}

