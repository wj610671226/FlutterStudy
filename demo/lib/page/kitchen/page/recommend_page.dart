import 'package:demo/common/tools/debug_tools.dart';
import 'package:demo/common/tools/screen_tools.dart';
import 'package:demo/page/kitchen/model/recommend_model_entity.dart';
import 'package:flutter/material.dart';
import 'package:demo/common/config/config.dart';
import 'package:demo/common/theme/app_theme_tool.dart';
import 'package:demo/common/tools/Internationalizing_tools.dart';
import 'package:demo/page/kitchen/page/kitchen_detail_page.dart';
import 'package:demo/page/kitchen/viewModel/kitchen_view_model.dart';
import 'package:demo/routes/route_config.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
// 推荐页面
class RecommendPage extends StatefulWidget {
  const RecommendPage({Key? key}) : super(key: key);

  @override
  State<RecommendPage> createState() => _RecommendPageState();
}

class _RecommendPageState extends State<RecommendPage> {

  List<RecommendModelRecommendations> _dataLists = [];
  ScrollController? _scrollController;
  int _currentPage = 1;

  @override
  void initState() {
    super.initState();
    _scrollController = ScrollController();
    _scrollController?.addListener(() {
      if (_scrollController!.position.maxScrollExtent == _scrollController!.offset) {
        DebugTools.print("滚动到最底部");
        _loadData(true);
      }
    });
    _loadData();
  }

  void _loadData([isLoadMore = false]) {
    if (isLoadMore) {
      _currentPage ++;
    }
    // 请求数据
    KitchenViewModel.getRecommneServerData(_currentPage).then((recommends) {
      if (mounted) {
        setState(() {
          if (isLoadMore) {
            _dataLists.addAll(recommends);
          } else {
            _dataLists = recommends;
          }
        });
      }
    });
  }

  @override
  void dispose() {
    super.dispose();
    _scrollController?.dispose();
  }

  @override
  Widget build(BuildContext context) {
    DebugTools.print("RecommendPage build");
    return RefreshIndicator(
      onRefresh: _handleRefresh,
      child: Padding(
        padding: const EdgeInsets.fromLTRB(10.0, 0, 10.0, 0),
        child: Column(
          children: <Widget>[
            _buildHeader(context),
            Expanded(
              child: MasonryGridView.extent(
                controller: _scrollController,
//                crossAxisCount: 4,
                itemCount: _dataLists.length,
                itemBuilder: ((BuildContext context, int index) => _buildCellItem(context, index)),
                mainAxisSpacing: 10.0,
                crossAxisSpacing: 10.0, maxCrossAxisExtent: ScreenFitTool.screenWidth! / 2,
              ),
            ),
          ],
        ),
      ),
    );
  }

  _buildCellItem(BuildContext context, int index) {
    final String tag = "${_dataLists[index].object.image.urlPattern}-$index";
    return Column(
      children: <Widget>[
        Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15.0),
            ),
          clipBehavior: Clip.antiAlias,
            child: GestureDetector(
              onTap: (() {
                Navigator.push(context, PageRouteBuilder(
                    pageBuilder: ((ctx, anim1, anim2) {
                      return FadeTransition(
                        opacity: anim1,
                        child: KitchenDetailPage(tag, _dataLists[index]),
                      );
                    })
                ));
              }),
              child: Hero(tag: tag,child: Image.network(_dataLists[index].object.image.urlPattern),),
            ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 5.0),
          child: Text(_dataLists[index].object.title1st,
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
            style: _RecommendStyles.titleTextStyles,
          ),
        ),
        _buildAuthorInfo(index)
      ],
    );
  }

  _buildAuthorInfo(int index) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 0, vertical: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
        Row(children: <Widget>[
          Container(
            width: _RecommendStyles.authorIconWidth,
            height: _RecommendStyles.authorIconWidth,
            clipBehavior: Clip.antiAlias,
            decoration: BoxDecoration(borderRadius: BorderRadius.circular(_RecommendStyles.authorIconWidth / 2)),
            child: Image.network(_dataLists[index].object.author.image.urlPattern),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 5.0),
            child: Text(_dataLists[index].object.title3rd, style: _RecommendStyles.authorTextStyles,),
          )
        ],),
        Row(children: <Widget>[
          const Icon(Icons.favorite_border, color: Colors.grey, size: 20,),
          Padding(
            padding: const EdgeInsets.only(left: 3),
            child: Text("999",style: _RecommendStyles.authorTextStyles),
          )
        ],)
      ]),
    );
  }

  _buildHeader(BuildContext context) {
    return SizedBox(
      height: 60,
      child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Text(InternationalizingTool.s!.recommended_to_you, style: _RecommendStyles.recommendTitleTextStyles,),
            GestureDetector(
              onTap: (() {
                Navigator.pushNamed(
                  context,
                  RouterConfig.commonWebViewPageRouteName,
                  arguments: {
                    "url": WebViewUrlConfig.categoryUrlString,
                    "title": InternationalizingTool.s!.cookbook_category
                  },
                );
              }),
              child: Text(InternationalizingTool.s!.cookbook_category, style: _RecommendStyles.categoryTitleTextStyles),
            ),
          ]),
    );
  }

  Future<void> _handleRefresh() async {
    _currentPage = 1;
    await Future.delayed(const Duration(milliseconds: 2000)).then((_) {
      _loadData();
      return null;
    });
  }
}


class _RecommendStyles {
  static TextStyle authorTextStyles = const TextStyle(fontSize: 12, color: Colors.grey);
  static TextStyle titleTextStyles = TextStyle(fontSize: 15, color: ThemeModelTool.textColor, fontWeight: FontWeight.bold);
  static TextStyle recommendTitleTextStyles = TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: ThemeModelTool.textColor);
  static TextStyle categoryTitleTextStyles = const TextStyle(fontSize: 16, color: Colors.grey);
  static double authorIconWidth = 20;
}
