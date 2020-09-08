
import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:study_demo/common/theme/app_theme_tool.dart';
import 'package:study_demo/common/tools/Internationalizing_tools.dart';
import 'package:study_demo/common/tools/screen_tools.dart';
import 'package:study_demo/common/tools/toast_tool.dart';
import 'package:study_demo/page/kitchen/model/video_model_entity.dart';
import 'package:study_demo/page/kitchen/viewModel/video_view_model.dart';
import 'package:study_demo/routes/route_config.dart';

/// 视频页面
class VideoPage extends StatefulWidget {
  @override
  _VideoPageState createState() => _VideoPageState();
}

class _VideoPageState extends State<VideoPage> {

  List<VideoModelPortal> _portals = [];
  List<VideoModelContentRecommandations> _recommendations = [];
  double _headerListViewHeight = 200;
  double _headerTitleViewHeight = 50;

  @override
  void initState() {
    super.initState();
    VideoViewModel.getVideoModelData().then((value) {
      setState(() {
        _portals = value.portals;
        _recommendations = value.content.recommendations;
      });
    });
  }

  @override
  Widget build(BuildContext context) {

    print("VideoPage - build");

    return CustomScrollView(
      slivers: <Widget>[
        SliverToBoxAdapter(
          child: Container(
            alignment: Alignment.centerLeft,
            height: _headerTitleViewHeight,
//            padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 15),
            child: Padding(
              padding: const EdgeInsets.only(left: 10.0),
              child: Text(InternationalizingTool.s.kitchen_activity, style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: ThemeModelTool.textColor),),
            ),
          ),
        ),
        _buildHeaderListView(),
        _buildGridView(),
      ],
    );
  }

  _buildHeaderListView() {
    return SliverToBoxAdapter(
      child: Container(
        height: _headerListViewHeight,
        child: ListView.builder(
            scrollDirection: Axis.horizontal,
            padding: EdgeInsets.symmetric(horizontal: 5.0),
            itemExtent: 250,
            itemCount: _portals.length,
            itemBuilder: (BuildContext context, int index) {
              return _buildHeaderListViewItem(index);
            }),
      ),
    );
  }

  _buildHeaderListViewItem(int index) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: GestureDetector(
        onTap: (() {
          Navigator.pushNamed(
              context,
              RouterConfig.CommonWebViewPageRouteName,
              arguments: {
                "url": "https://www.baidu.com/",
                "title": "视频详情",
              });
        }),
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(5.0),
          ),
          clipBehavior: Clip.antiAlias,
          child: Stack(
            children: <Widget>[
              Image.network("${_portals[index].object.image.urlPattern}",
                fit: BoxFit.cover, height: 250,),
              Positioned(
                child: Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5.0),
                      color: Colors.white
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(4.0),
                    child: Text("${_portals[index].label}", style: TextStyle(fontSize: 14),),
                  ),
                ),
                left: 20,
                bottom: 20,
              )
            ],
          ),
        ),
      ),
    );
  }
  
  _buildGridView() {
    return SliverToBoxAdapter(
      child: Container(
        margin: EdgeInsets.symmetric(horizontal: 10.0),
        height: ScreenFitTool.screenHeight - _headerListViewHeight - _headerTitleViewHeight - 84 - 80,
        child: StaggeredGridView.countBuilder(
          crossAxisCount: 4,
          itemCount: _recommendations.length,
          itemBuilder: ((BuildContext context, int index) => _buildCellItem(context, index)),
          mainAxisSpacing: 10.0,
          crossAxisSpacing: 10.0,
          staggeredTileBuilder: (int index) => StaggeredTile.fit(2),
        ),
      ),
    );
  }

  _buildCellItem(BuildContext context, int index) {
    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          GestureDetector(
            child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15.0),
                ),
                clipBehavior: Clip.antiAlias,
                child: Stack(children: <Widget>[
                  Image.network(_recommendations[index].recommendContent.image.urlPattern),
                  Positioned(
                    child: Image.asset("assets/images/upload/playButton~iphone.png", width: 30, height: 30,),
                    left: 10.0,
                    bottom: 10.0,
                  )
                ],)
            ),
            onTap: () => ToastTool.showText("tap"),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 5.0),
            child: Container(
              width: double.infinity,
              child: Text("${_recommendations[index].recommendContent.title1st}",
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
                style: TextStyle(fontSize: 15, color: Colors.black, fontWeight: FontWeight.bold),
              ),
            ),
          ),
          _buildAuthorInfo(index)
        ],
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15.0),
      ),
      clipBehavior: Clip.antiAlias,
    );
  }

  _buildAuthorInfo(int index) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 0, vertical: 10),
      child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Row(
              children: <Widget>[
              Container(
                width: _RecommendStyles.authorIconWidth,
                height: _RecommendStyles.authorIconWidth,
                clipBehavior: Clip.antiAlias,
                decoration: BoxDecoration(borderRadius: BorderRadius.circular(_RecommendStyles.authorIconWidth / 2)),
                child: Image.network("${_recommendations[index].recommendContent.author.image.urlPattern}"),
              ),
              Container(
                width: 70,
                child: Padding(
                  padding: const EdgeInsets.only(left: 5.0),
                  child: Container(
                      child: Text(
                        "${_recommendations[index].recommendContent.title3rd}",
                        style: _RecommendStyles.authorTextStyles,
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                      ),
                  ),
                ),
              )
            ],),
            Row(children: <Widget>[
              Icon(Icons.favorite_border, color: Colors.grey, size: 20,),
              Padding(
                padding: const EdgeInsets.only(left: 3),
                child: Text("999",style: _RecommendStyles.authorTextStyles),
              )
            ],)
          ]),
    );
  }
}

class _RecommendStyles {
  static TextStyle authorTextStyles = TextStyle(fontSize: 12, color: Colors.grey);
  static TextStyle titleTextStyles = TextStyle(fontSize: 15, color: Colors.black, fontWeight: FontWeight.bold);
  static TextStyle recommendTitleTextStyles = TextStyle(fontSize: 20, color: Colors.black, fontWeight: FontWeight.bold);
  static TextStyle categoryTitleTextStyles = TextStyle(fontSize: 16, color: Colors.grey);
  static double authorIconWidth = 20;
}
