import 'dart:convert';

import 'package:flutter/services.dart';
import 'package:study_demo/page/kitchen/model/detail_model_entity.dart';

class DetailViewModel {
  static Future<DetailModelEntity> getDetailModelData() async {
    String videoString = await rootBundle.loadString("assets/json/detail.json");
    final Map<String, dynamic> mapString = json.decode(videoString);
    DetailModelEntity modelEntity = DetailModelEntity().fromJson(mapString);
    return modelEntity;
  }
}