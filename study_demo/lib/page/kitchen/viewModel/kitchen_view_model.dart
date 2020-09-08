import 'dart:convert';

import 'package:flutter/services.dart';
import 'package:study_demo/page/kitchen/model/recommend_model.dart';

class KitchenViewModel {
  /// 获取服务器端 推荐数据
  static Future<List<Recommendations>> getRecommneServerData(int page) async {
    String recommendationsString = await rootBundle.loadString("assets/json/recommendations.json");
//    print("recommendationsString = $recommendationsString");
    final Map<String, dynamic> mapString = json.decode(recommendationsString);
    RecommendModel recommendModel = RecommendModel.fromJson(mapString);

    List<Recommendations> models = recommendModel.recommendations.where((item) {
      if (item.object.imageInfo != null) {
        return item.object.imageInfo.urlPattern != null;
      }
      return false;
    }).toList();
    return page == 1 ? models : models.reversed.toList();
  }
}