import 'dart:convert';

import 'package:flutter/services.dart';
import 'package:study_demo/page/kitchen/model/search_keyword_model.dart';

class SearchKeywordViewModel {
  static Future<List<String>> getSearchKeywordModelData() async {
    String recommendationsString = await rootBundle.loadString("assets/json/search_key.json");
    final Map<String, dynamic> mapString = json.decode(recommendationsString);
    SearchKeywordModel model = SearchKeywordModel.fromJson(mapString);
    return model.keywords.sublist(0, 20);
  }
}