import 'dart:convert';

import 'package:flutter/services.dart';
import 'package:demo/page/kitchen/model/search_keyword_model_entity.dart';

class SearchKeywordViewModel {
  static Future<List<String>> getSearchKeywordModelData() async {
    String recommendationsString = await rootBundle.loadString("assets/json/search_key.json");
    final Map<String, dynamic> mapString = json.decode(recommendationsString);
    SearchKeywordModelEntity model = SearchKeywordModelEntity.fromJson(mapString);
    return model.keywords.sublist(0, 20);
  }
}