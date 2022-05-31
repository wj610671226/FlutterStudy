import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:demo/common/tools/screen_tools.dart';
import 'package:demo/page/kitchen/model/detail_model_entity.dart';
import 'package:demo/page/kitchen/model/recommend_model_entity.dart';
import 'package:demo/page/kitchen/viewModel/detail_view_model.dart';
import 'package:demo/provider/collect_notifier.dart';
import 'package:demo/provider/login_change_notifier.dart';
import 'package:demo/routes/route_config.dart';

class KitchenDetailPage extends StatefulWidget {

  final String heroTag;
  final RecommendModelRecommendations model;

  const KitchenDetailPage(this.heroTag, this.model, {Key? key}) : super(key: key);

  @override
  State<KitchenDetailPage> createState() => _KitchenDetailPageState();
}

class _KitchenDetailPageState extends State<KitchenDetailPage> {

  DetailModelEntity? _detailModelEntity;
  Color _appBarColor = const Color.fromRGBO(255, 0, 0, 0);
  Color _iconColor = const Color.fromRGBO(255, 255, 255, 1);
  ScrollController? _scrollController;

  @override
  void initState() {
    super.initState();
    DetailViewModel.getDetailModelData().then((value) {
      setState(() {
        _detailModelEntity = value;
      });
    });

    _scrollController = ScrollController();
    _scrollController?.addListener(() {

      double alpha = _scrollController!.offset / _KitchenDetailPageStyle.topImageHeight;
      double rga = 255.0 / _KitchenDetailPageStyle.topImageHeight * _scrollController!.offset;
      if (alpha < 0) {
        alpha = 0;
      } else if (alpha > 1) {
        alpha = 1;
      }
      if (rga < 0) {
        rga = 0;
      } else if (rga > 255) {
        rga = 255;
      }
      rga = 255 - rga;
      setState(() {
        _appBarColor = Color.fromRGBO(255, 255, 255, alpha);
        _iconColor = Color.fromRGBO(rga.toInt(), rga.toInt(), rga.toInt(), 1);
      });

    });
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    _scrollController?.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _buildContentView(),
      backgroundColor: Colors.white,
    );
  }

  _buildContentView() {
    if (_detailModelEntity == null) {
      return const Center(child: CircularProgressIndicator());
    }
    return Stack(
      children: <Widget>[
        Padding(
          padding: EdgeInsets.only(bottom: _KitchenDetailPageStyle.bottomViewHeight + ScreenFitTool.bottomPadding!),
          child: CustomScrollView(
            controller: _scrollController,
            slivers: <Widget>[
              _buildHeaderView(),
              _buildIngredientsListView(),
              _buildDetailHandleListView(),
            ],
          ),
        ),
        _buildAppBarView(),
        _buildBottomView()
      ],
    );
  }

  _buildAppBarView() {
    return Container(
      color: _appBarColor,
      child: Padding(
        padding: EdgeInsets.only(top: ScreenFitTool.topPadding!),
        child: SizedBox(
          height: _KitchenDetailPageStyle.appBarContentViewHeight,
          child: Row(
            children: <Widget>[
              GestureDetector(
                onTap: (() {
                  Navigator.pop(context);
                }),
                child: SizedBox(
                  height: 44,
                  width: 50,
                  child: Icon(Icons.arrow_back_ios, color: _iconColor,),
                ),
              ),
              Row(
                children: <Widget>[
                  const SizedBox(width: 30),
                  Image.asset("assets/images/detail/convenient_share_wx~iphone.png", width: 25, color: _iconColor,),
                  const SizedBox(width: 30,),
                  Image.asset("assets/images/detail/convenient_share_pyq~iphone.png", width: 25, color: _iconColor),
                  const SizedBox(width: 30,),
                  Image.asset("assets/images/detail/convenient_share_other~iphone.png", width: 25, color: _iconColor)
                ],
              )
            ],
          ),
        ),
      ),
    );
  }

  _buildHeaderView() {
    return SliverToBoxAdapter(
      child: Column(
        children: <Widget>[
          _buildTopImageView(),
          _buildTopTitleView(),
        ],
      ),
    );
  }

  _buildTopImageView() {
    return SizedBox(
      width: double.infinity,
      height: _KitchenDetailPageStyle.topImageHeight,
      child: Hero(
        tag: widget.heroTag,
        child: Image.network(widget.model.object.image.urlPattern, fit: BoxFit.cover, width: double.infinity,),
      )
    );
  }

  _buildTopTitleView() {
    return Padding(
      padding: const EdgeInsets.only(left: 20.0, top: 20.0, right: 20.0),
      child: Column(
        children: <Widget>[
          Text(_detailModelEntity!.content.recipe.name, style: const TextStyle(fontSize: 28, fontWeight: FontWeight.bold), textAlign: TextAlign.center,),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
                "${_detailModelEntity!.content.recipe.score}综合评分 · ${_detailModelEntity!.content.recipe.stats.nCollects}收藏 · ${_detailModelEntity!.content.recipe.stats.nCollects}次收藏",
              style: const TextStyle(fontWeight: FontWeight.bold),
            ),
          ),
          // 下划线
          Container(height: 0.5, color: Colors.grey.shade400, width: double.infinity,child: const Text(""),),
          // 用户信息
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 20.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Row(
                  children: <Widget>[
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30)
                      ),
                      clipBehavior: Clip.antiAlias,
                      child: Image.network("${_detailModelEntity?.content.recipe.author.photo60}", width: 60, height: 60,),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 10.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Row(children: <Widget>[
                            Text(_detailModelEntity!.content.recipe.author.name, style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 16),),
                            Image.asset("assets/images/detail/myVoucher~iphone.png", width: 25, height: 18,)
                          ],),
                          Padding(
                            padding: const EdgeInsets.only(top: 3.0),
                            child: Text(_detailModelEntity!.content.recipe.friendlyCreateTime, style: TextStyle(color: Colors.grey.shade400, fontSize: 14),),
                          )
                        ],
                      ),
                    )
                  ],
                ),
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5.0),
                    border: Border.all(color: Colors.deepOrange)
                  ),
                  child: const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 15.0, vertical: 5),
                    child: Text("关注"),
                  ),
                )
              ],
            ),
          ),
          // 详细介绍
          Text("${_detailModelEntity?.content.recipe.summary}", style: const TextStyle(fontSize: 16),),
          // 用料
          Padding(
            padding: const EdgeInsets.only(top: 20),
            child: Row(children: <Widget>[
              const Text("用料", style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),),
              Padding(
                padding: const EdgeInsets.only(left: 10),
                child: Image.asset("assets/images/detail/kitchenscale~iphone.png", width: 25, height: 25,),
              )
            ],),
          )
        ],
      ),
    );
  }

  _buildIngredientsListView() {
    List<DetailModelContentRecipeIngredient> ingredient = _detailModelEntity!.content.recipe.ingredient;
    return SliverFixedExtentList(
      itemExtent: 50.0,
      delegate: SliverChildBuilderDelegate((BuildContext context, int index) {
            return Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Container(
                decoration: BoxDecoration(
                  border: Border(bottom: BorderSide(color: Colors.grey.shade400, width: 0.5))
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Text(ingredient[index].name),
                    Text(ingredient[index].amount),
                  ],
                ),
              ),
            );
          },
          childCount: ingredient.length
      ),
    );
  }

  _buildDetailHandleListView() {
    List<DetailModelContentRecipeInstruction> instruction = _detailModelEntity!.content.recipe.instruction;
    return SliverFixedExtentList(
      itemExtent: 400.0,
      delegate: SliverChildBuilderDelegate((BuildContext context, int index) {
            return Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 8.0),
                    child: Text("步骤 ${int.parse(instruction[index].step) + 1}", style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),),
                  ),
                  Expanded(
                      child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5.0)
                          ),
                          clipBehavior: Clip.antiAlias,
                          child: Image.network(instruction[index].url, fit: BoxFit.cover, width: double.infinity,)
                      )
                  ),
                  Container(
                    width: double.infinity,
                    decoration: BoxDecoration(
                        border: Border(bottom: BorderSide(color: Colors.grey.shade400, width: 0.5))
                    ),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(vertical: 8.0),
                      child: Text(instruction[index].text, style: const TextStyle(fontSize: 18),),
                    ),
                  )
                ],
              ),
            );
          },
          childCount: instruction.length
      ),
    );
  }

  _buildBottomView() {
    return Positioned(
      bottom: ScreenFitTool.bottomPadding,
      child: SizedBox(
        width: ScreenFitTool.screenWidth,
        height: _KitchenDetailPageStyle.bottomViewHeight,
        child: Row(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Consumer2<LoginChangeNotifier, CollectChangeNotifier>(
                builder: ((BuildContext context, LoginChangeNotifier login, CollectChangeNotifier collect, Widget? child) {
                  IconData icons = Icons.favorite_border;
                  if (login.isLogin && collect.isCollected(widget.model)) {
                    icons = Icons.favorite;
                  }
                  return GestureDetector(
                    onTap: (() {
                      if (!login.isLogin) {
                        Navigator.pushNamed(
                            context,
                            RouterConfig.loginPageRouteName,
                            arguments: {"isShowAppBar": true, "loginSuccessPop": true}
                            );
                        return;
                      }
                      collect.isCollected(widget.model) ? collect.removeModel(widget.model): collect.addModel(widget.model);
                    }),
                    child: Row(children: <Widget>[
                      Icon(icons, color: Colors.deepOrange,),
                      const Padding(
                        padding: EdgeInsets.only(left: 8.0),
                        child: Text("收藏", style: TextStyle(color: Colors.deepOrange),),
                      )
                    ],),
                  );
                }),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Row(children: <Widget>[
              Image.asset("assets/images/detail/recipe_message~iphone.png", width: 25,),
                const Padding(
                  padding: EdgeInsets.only(left: 8.0),
                  child: Text("传作品"),
                )
              ],),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Row(children: <Widget>[
                Image.asset("assets/images/detail/addPhotoStyle3~iphone.png", width: 25,),
                const Padding(
                  padding: EdgeInsets.only(left: 8.0),
                  child: Text("64"),
                )
              ],),
            )
          ],
        ),
      ),
    );
  }
}


class _KitchenDetailPageStyle {
  static double bottomViewHeight = 50;
  static double appBarContentViewHeight = 44;
  static double topImageHeight = 300;
}
