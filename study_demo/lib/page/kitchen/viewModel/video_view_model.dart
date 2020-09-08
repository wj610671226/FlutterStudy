import 'dart:convert';

import 'package:flutter/services.dart';
import 'package:study_demo/page/kitchen/model/video_model_entity.dart';

class VideoViewModel {
  static Future<VideoModelEntity> getVideoModelData() async {
    String videoString = await rootBundle.loadString("assets/json/video.json");
    final Map<String, dynamic> mapString = json.decode(videoString);
    VideoModelEntity modelEntity = VideoModelEntity().fromJson(mapString);
    List<VideoModelPortal> portals = modelEntity.portals.map((item) {
      String urlPattern = item.object.image.urlPattern;
      urlPattern = urlPattern.replaceAll("{width}", "640");
      urlPattern = urlPattern.replaceAll("{height}", "440");
      urlPattern = urlPattern.replaceAll("{format}", item.object.image.ident);
      item.object.image.urlPattern = urlPattern;
      return item;
    }).toList();
    modelEntity.portals = portals;

    List<VideoModelContentRecommandations> recommendations = modelEntity.content.recommendations.map((item) {
      String urlPattern = item.recommendContent.image.urlPattern;
      urlPattern = urlPattern.replaceAll("{width}", "${item.recommendContent.image.originalWidth}");
      urlPattern = urlPattern.replaceAll("{height}", "${item.recommendContent.image.originalHeight}");
      urlPattern = urlPattern.replaceAll("{format}", item.recommendContent.image.ident);
      item.recommendContent.image.urlPattern = urlPattern;


      String iconUrl = item.recommendContent.author.image.urlPattern;
      iconUrl = iconUrl.replaceAll("{width}", "30");
      iconUrl = iconUrl.replaceAll("{height}", "30");
      iconUrl = iconUrl.replaceAll("{format}", item.recommendContent.author.image.ident);
      item.recommendContent.author.image.urlPattern = iconUrl;

      return item;
    }).toList();
    modelEntity.content.recommendations = recommendations;
    return modelEntity;
  }
}