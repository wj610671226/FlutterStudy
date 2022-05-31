import 'dart:convert';
import 'package:demo/generated/json/base/json_field.dart';
import 'package:demo/generated/json/recommend_model_entity.g.dart';

@JsonSerializable()
class RecommendModelEntity {

	late List<RecommendModelRecommendations> recommendations;
  
  RecommendModelEntity();

  factory RecommendModelEntity.fromJson(Map<String, dynamic> json) => $RecommendModelEntityFromJson(json);

  Map<String, dynamic> toJson() => $RecommendModelEntityToJson(this);

  @override
  String toString() {
    return jsonEncode(this);
  }
}

@JsonSerializable()
class RecommendModelRecommendations {

	late RecommendModelRecommendationsObject object;
	late RecommendModelRecommendationsTracking tracking;
	@JSONField(name: "sensor_tracking")
	late RecommendModelRecommendationsSensorTracking sensorTracking;
	late RecommendModelRecommendationsPlaceholder placeholder;
  
  RecommendModelRecommendations();

  factory RecommendModelRecommendations.fromJson(Map<String, dynamic> json) => $RecommendModelRecommendationsFromJson(json);

  Map<String, dynamic> toJson() => $RecommendModelRecommendationsToJson(this);

  @override
  String toString() {
    return jsonEncode(this);
  }
}

@JsonSerializable()
class RecommendModelRecommendationsObject {

	late String identification;
	@JSONField(name: "title_1st")
	late String title1st;
	@JSONField(name: "title_2nd")
	late String title2nd;
	@JSONField(name: "title_3rd")
	late String title3rd;
	@JSONField(name: "title_4th")
	late String title4th;
	late RecommendModelRecommendationsObjectImage image;
	late String url;
	late String label;
	late int width;
	late int height;
	late RecommendModelRecommendationsObjectAuthor author;
	late RecommendModelRecommendationsObjectExtra extra;
	@JSONField(name: "extra_images")
	late List<dynamic> extraImages;
	@JSONField(name: "target_info")
	late RecommendModelRecommendationsObjectTargetInfo targetInfo;
  
  RecommendModelRecommendationsObject();

  factory RecommendModelRecommendationsObject.fromJson(Map<String, dynamic> json) => $RecommendModelRecommendationsObjectFromJson(json);

  Map<String, dynamic> toJson() => $RecommendModelRecommendationsObjectToJson(this);

  @override
  String toString() {
    return jsonEncode(this);
  }
}

@JsonSerializable()
class RecommendModelRecommendationsObjectImage {

	late String ident;
	@JSONField(name: "original_width")
	late int originalWidth;
	@JSONField(name: "original_height")
	late int originalHeight;
	@JSONField(name: "max_width")
	late int maxWidth;
	@JSONField(name: "max_height")
	late int maxHeight;
	@JSONField(name: "url_pattern")
	late String urlPattern;
  
  RecommendModelRecommendationsObjectImage();

  factory RecommendModelRecommendationsObjectImage.fromJson(Map<String, dynamic> json) => $RecommendModelRecommendationsObjectImageFromJson(json);

  Map<String, dynamic> toJson() => $RecommendModelRecommendationsObjectImageToJson(this);

  @override
  String toString() {
    return jsonEncode(this);
  }
}

@JsonSerializable()
class RecommendModelRecommendationsObjectAuthor {

	late RecommendModelRecommendationsObjectAuthorImage image;
	late String url;
  
  RecommendModelRecommendationsObjectAuthor();

  factory RecommendModelRecommendationsObjectAuthor.fromJson(Map<String, dynamic> json) => $RecommendModelRecommendationsObjectAuthorFromJson(json);

  Map<String, dynamic> toJson() => $RecommendModelRecommendationsObjectAuthorToJson(this);

  @override
  String toString() {
    return jsonEncode(this);
  }
}

@JsonSerializable()
class RecommendModelRecommendationsObjectAuthorImage {

	late String ident;
	@JSONField(name: "original_width")
	late int originalWidth;
	@JSONField(name: "original_height")
	late int originalHeight;
	@JSONField(name: "max_width")
	late int maxWidth;
	@JSONField(name: "max_height")
	late int maxHeight;
	@JSONField(name: "url_pattern")
	late String urlPattern;
  
  RecommendModelRecommendationsObjectAuthorImage();

  factory RecommendModelRecommendationsObjectAuthorImage.fromJson(Map<String, dynamic> json) => $RecommendModelRecommendationsObjectAuthorImageFromJson(json);

  Map<String, dynamic> toJson() => $RecommendModelRecommendationsObjectAuthorImageToJson(this);

  @override
  String toString() {
    return jsonEncode(this);
  }
}

@JsonSerializable()
class RecommendModelRecommendationsObjectExtra {

	@JSONField(name: "n_collects")
	late int nCollects;
	@JSONField(name: "is_video_recipe")
	late bool isVideoRecipe;
	@JSONField(name: "extra_icon_type")
	late int extraIconType;
	@JSONField(name: "extra_icon_value")
	late String extraIconValue;
	@JSONField(name: "is_fullscreen")
	late bool isFullscreen;
  
  RecommendModelRecommendationsObjectExtra();

  factory RecommendModelRecommendationsObjectExtra.fromJson(Map<String, dynamic> json) => $RecommendModelRecommendationsObjectExtraFromJson(json);

  Map<String, dynamic> toJson() => $RecommendModelRecommendationsObjectExtraToJson(this);

  @override
  String toString() {
    return jsonEncode(this);
  }
}

@JsonSerializable()
class RecommendModelRecommendationsObjectTargetInfo {

	@JSONField(name: "target_type")
	late int targetType;
	@JSONField(name: "target_id")
	late int targetId;
  
  RecommendModelRecommendationsObjectTargetInfo();

  factory RecommendModelRecommendationsObjectTargetInfo.fromJson(Map<String, dynamic> json) => $RecommendModelRecommendationsObjectTargetInfoFromJson(json);

  Map<String, dynamic> toJson() => $RecommendModelRecommendationsObjectTargetInfoToJson(this);

  @override
  String toString() {
    return jsonEncode(this);
  }
}

@JsonSerializable()
class RecommendModelRecommendationsTracking {

	@JSONField(name: "xcf_expose_urls")
	late List<String> xcfExposeUrls;
	@JSONField(name: "xcf_click_urls")
	late List<String> xcfClickUrls;
	@JSONField(name: "third_party_expose_urls")
	late List<dynamic> thirdPartyExposeUrls;
	@JSONField(name: "third_party_click_urls")
	late List<dynamic> thirdPartyClickUrls;
  
  RecommendModelRecommendationsTracking();

  factory RecommendModelRecommendationsTracking.fromJson(Map<String, dynamic> json) => $RecommendModelRecommendationsTrackingFromJson(json);

  Map<String, dynamic> toJson() => $RecommendModelRecommendationsTrackingToJson(this);

  @override
  String toString() {
    return jsonEncode(this);
  }
}

@JsonSerializable()
class RecommendModelRecommendationsSensorTracking {

	late List<RecommendModelRecommendationsSensorTrackingImpression> impression;
	late List<RecommendModelRecommendationsSensorTrackingClick> click;
	late List<dynamic> digg;
  
  RecommendModelRecommendationsSensorTracking();

  factory RecommendModelRecommendationsSensorTracking.fromJson(Map<String, dynamic> json) => $RecommendModelRecommendationsSensorTrackingFromJson(json);

  Map<String, dynamic> toJson() => $RecommendModelRecommendationsSensorTrackingToJson(this);

  @override
  String toString() {
    return jsonEncode(this);
  }
}

@JsonSerializable()
class RecommendModelRecommendationsSensorTrackingImpression {

	@JSONField(name: "event_name")
	late String eventName;
	late RecommendModelRecommendationsSensorTrackingImpressionProperties properties;
  
  RecommendModelRecommendationsSensorTrackingImpression();

  factory RecommendModelRecommendationsSensorTrackingImpression.fromJson(Map<String, dynamic> json) => $RecommendModelRecommendationsSensorTrackingImpressionFromJson(json);

  Map<String, dynamic> toJson() => $RecommendModelRecommendationsSensorTrackingImpressionToJson(this);

  @override
  String toString() {
    return jsonEncode(this);
  }
}

@JsonSerializable()
class RecommendModelRecommendationsSensorTrackingImpressionProperties {

	late String section;
	@JSONField(name: "target_type")
	late String targetType;
	@JSONField(name: "target_id")
	late int targetId;
	late String url;
	late String pos;
	@JSONField(name: "ab_group")
	late String abGroup;
	@JSONField(name: "recipe_origin")
	late String recipeOrigin;
	@JSONField(name: "planout_group")
	late String planoutGroup;
	@JSONField(name: "feature_log_id")
	late int featureLogId;
  
  RecommendModelRecommendationsSensorTrackingImpressionProperties();

  factory RecommendModelRecommendationsSensorTrackingImpressionProperties.fromJson(Map<String, dynamic> json) => $RecommendModelRecommendationsSensorTrackingImpressionPropertiesFromJson(json);

  Map<String, dynamic> toJson() => $RecommendModelRecommendationsSensorTrackingImpressionPropertiesToJson(this);

  @override
  String toString() {
    return jsonEncode(this);
  }
}

@JsonSerializable()
class RecommendModelRecommendationsSensorTrackingClick {

	@JSONField(name: "event_name")
	late String eventName;
	late RecommendModelRecommendationsSensorTrackingClickProperties properties;
  
  RecommendModelRecommendationsSensorTrackingClick();

  factory RecommendModelRecommendationsSensorTrackingClick.fromJson(Map<String, dynamic> json) => $RecommendModelRecommendationsSensorTrackingClickFromJson(json);

  Map<String, dynamic> toJson() => $RecommendModelRecommendationsSensorTrackingClickToJson(this);

  @override
  String toString() {
    return jsonEncode(this);
  }
}

@JsonSerializable()
class RecommendModelRecommendationsSensorTrackingClickProperties {

	late String section;
	@JSONField(name: "target_type")
	late String targetType;
	@JSONField(name: "target_id")
	late int targetId;
	late String url;
	late String pos;
	@JSONField(name: "ab_group")
	late String abGroup;
	@JSONField(name: "recipe_origin")
	late String recipeOrigin;
	@JSONField(name: "planout_group")
	late String planoutGroup;
	@JSONField(name: "feature_log_id")
	late int featureLogId;
  
  RecommendModelRecommendationsSensorTrackingClickProperties();

  factory RecommendModelRecommendationsSensorTrackingClickProperties.fromJson(Map<String, dynamic> json) => $RecommendModelRecommendationsSensorTrackingClickPropertiesFromJson(json);

  Map<String, dynamic> toJson() => $RecommendModelRecommendationsSensorTrackingClickPropertiesToJson(this);

  @override
  String toString() {
    return jsonEncode(this);
  }
}

@JsonSerializable()
class RecommendModelRecommendationsPlaceholder {


  
  RecommendModelRecommendationsPlaceholder();

  factory RecommendModelRecommendationsPlaceholder.fromJson(Map<String, dynamic> json) => $RecommendModelRecommendationsPlaceholderFromJson(json);

  Map<String, dynamic> toJson() => $RecommendModelRecommendationsPlaceholderToJson(this);

  @override
  String toString() {
    return jsonEncode(this);
  }
}