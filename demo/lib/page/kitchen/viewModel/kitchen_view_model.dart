import 'dart:convert';

import 'package:demo/common/tools/debug_tools.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';
import 'package:demo/page/kitchen/model/recommend_model_entity.dart';

class KitchenViewModel {
  /// 获取服务器端 推荐数据
  static Future<List<RecommendModelRecommendations>> getRecommneServerData(int page) async {
    String recommendationsString = await rootBundle.loadString("assets/json/recommendations.json");
    // DebugTools.print("recommendationsString = $recommendationsString");
    final Map<String, dynamic> mapString = json.decode(recommendationsString);
    RecommendModelEntity recommendModel = RecommendModelEntity.fromJson(mapString);


    // List<RecommendModelRecommendations> models = recommendModel.recommendations.where((item) {
    //   debugPrint(item.object.image.urlPattern);
    //   RecommendModelRecommendations newItem = item;
    //   // newItem.object.image.urlPattern = item
    //   return item.object.image.urlPattern.isNotEmpty;
    // }).toList();


    List<RecommendModelRecommendations> models = recommendModel.recommendations.map((item) {
        String urlPattern = item.object.image.urlPattern;
        urlPattern = urlPattern.replaceAll("{width}", "640");
        urlPattern = urlPattern.replaceAll("{height}", "440");
        urlPattern = urlPattern.replaceAll("{format}", item.object.image.ident);
        item.object.image.urlPattern = urlPattern;

        // http://i2.chuimg.com/9a23115ca6094703a107fac520bdecc9_1280w_1280h.jpg?imageView2/1/w/{width}/h/{height}/q/90/format/{format}
        String iconUrl = item.object.author.image.urlPattern;
        iconUrl = iconUrl.replaceAll("{width}", "30");
        iconUrl = iconUrl.replaceAll("{height}", "30");
        iconUrl = iconUrl.replaceAll("{format}", item.object.author.image.ident);
        // print("iconUrl = $iconUrl");
        item.object.author.image.urlPattern = iconUrl;
        return item;
    }).toList();
    return page == 1 ? models : models.reversed.toList();
  }
}