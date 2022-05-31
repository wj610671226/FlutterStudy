// 下厨房页面
import 'package:demo/common/tools/Internationalizing_tools.dart';
import 'package:demo/common/tools/debug_tools.dart';
import 'package:demo/common/tools/toast_tool.dart';
import 'package:demo/page/kitchen/page/attention_page.dart';
import 'package:demo/page/kitchen/page/recommend_page.dart';
import 'package:demo/page/kitchen/page/search_page.dart';
import 'package:demo/page/kitchen/page/upload_page.dart';
import 'package:demo/page/kitchen/page/video_page.dart';
import 'package:flutter/material.dart';

class KitchenPage extends StatefulWidget {
  const KitchenPage({Key? key}) : super(key: key);

  @override
  State<KitchenPage> createState() => _KitchenPageState();
}

class _KitchenPageState extends State<KitchenPage> with TickerProviderStateMixin {

  final List<String> _tabBarTitles = [InternationalizingTool.s!.attention, InternationalizingTool.s!.recommend, InternationalizingTool.s!.video];
  TabController? _tabController;
  int _initialIndex = 0;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(initialIndex:_initialIndex,length: 3, vsync: this);
    _tabController?.addListener(() {
      setState(() {
        _initialIndex = _tabController!.index;
      });
    });
  }

  @override
  void dispose() {
    _tabController?.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {

    DebugTools.print("KitchenPage build");

    return Scaffold(
      appBar: AppBar(
        leading: _buildAppBarLeading(context),
        title: _buildAppBarSearchView(context),
        actions: <Widget>[
          GestureDetector(child: const Icon(Icons.video_label), onTap: () {
            ToastTool.showText("暂未实现");
          },),
          // 占位
          const Icon(Icons.video_label, color: Colors.transparent,),
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
        Navigator.push(context, PageRouteBuilder(
            pageBuilder: ((ctx, anim1, anim2) {
              return const SearchPage();
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
            const Padding(
              padding: EdgeInsets.only(left: 8.0),
              child: Icon(Icons.search, color: Colors.grey,),
            ),
            Text(InternationalizingTool.s!.search_place_holder, style: const TextStyle(color: Colors.grey, fontSize: 18, fontWeight: FontWeight.w400),)
          ],
        ),
      ),
    );
}

  Widget _buildTabBar() {
    return Center(
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
    );
  }

  Widget _buildTabBarView() {
    return Expanded(
      child: TabBarView(
        controller: _tabController,
        children: const [
          AttentionPage(),
          RecommendPage(),
          VideoPage()
        ],
      ),
    );
  }

  _buildAppBarLeading(BuildContext context) {
    return GestureDetector(
      onTap: (() {
        Navigator.push(context, PageRouteBuilder(
            pageBuilder: ((ctx, anim1, anim2) {
              return FadeTransition(
                opacity: anim1,
                child: UploadPage(),
              );
            })
        ));
      }),
      child: const Hero(tag: "hero_test",child: Icon(Icons.add),),
    );
  }
}

