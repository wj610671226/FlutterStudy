import 'dart:convert';
import 'package:demo/generated/json/base/json_field.dart';
import 'package:demo/generated/json/video_model_entity.g.dart';

@JsonSerializable()
class VideoModelEntity {

	late List<VideoModelPortals> portals;
	late VideoModelContent content;
  
  VideoModelEntity();

  factory VideoModelEntity.fromJson(Map<String, dynamic> json) => $VideoModelEntityFromJson(json);

  Map<String, dynamic> toJson() => $VideoModelEntityToJson(this);

  @override
  String toString() {
    return jsonEncode(this);
  }
}

@JsonSerializable()
class VideoModelPortals {

	late String label;
	late VideoModelPortalsObject object;
	late VideoModelPortalsTracking tracking;
  
  VideoModelPortals();

  factory VideoModelPortals.fromJson(Map<String, dynamic> json) => $VideoModelPortalsFromJson(json);

  Map<String, dynamic> toJson() => $VideoModelPortalsToJson(this);

  @override
  String toString() {
    return jsonEncode(this);
  }
}

@JsonSerializable()
class VideoModelPortalsObject {

	@JSONField(name: "title_1st")
	late String title1st;
	@JSONField(name: "title_2nd")
	late String title2nd;
	@JSONField(name: "title_3rd")
	late String title3rd;
	late String url;
	late VideoModelPortalsObjectImage image;
  
  VideoModelPortalsObject();

  factory VideoModelPortalsObject.fromJson(Map<String, dynamic> json) => $VideoModelPortalsObjectFromJson(json);

  Map<String, dynamic> toJson() => $VideoModelPortalsObjectToJson(this);

  @override
  String toString() {
    return jsonEncode(this);
  }
}

@JsonSerializable()
class VideoModelPortalsObjectImage {

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
  
  VideoModelPortalsObjectImage();

  factory VideoModelPortalsObjectImage.fromJson(Map<String, dynamic> json) => $VideoModelPortalsObjectImageFromJson(json);

  Map<String, dynamic> toJson() => $VideoModelPortalsObjectImageToJson(this);

  @override
  String toString() {
    return jsonEncode(this);
  }
}

@JsonSerializable()
class VideoModelPortalsTracking {

	@JSONField(name: "xcf_expose_urls")
	late List<String> xcfExposeUrls;
	@JSONField(name: "xcf_click_urls")
	late List<String> xcfClickUrls;
	@JSONField(name: "third_party_expose_urls")
	late List<dynamic> thirdPartyExposeUrls;
	@JSONField(name: "third_party_click_urls")
	late List<dynamic> thirdPartyClickUrls;
  
  VideoModelPortalsTracking();

  factory VideoModelPortalsTracking.fromJson(Map<String, dynamic> json) => $VideoModelPortalsTrackingFromJson(json);

  Map<String, dynamic> toJson() => $VideoModelPortalsTrackingToJson(this);

  @override
  String toString() {
    return jsonEncode(this);
  }
}

@JsonSerializable()
class VideoModelContent {

	late List<VideoModelContentRecommendations> recommendations;
  
  VideoModelContent();

  factory VideoModelContent.fromJson(Map<String, dynamic> json) => $VideoModelContentFromJson(json);

  Map<String, dynamic> toJson() => $VideoModelContentToJson(this);

  @override
  String toString() {
    return jsonEncode(this);
  }
}

@JsonSerializable()
class VideoModelContentRecommendations {

	@JSONField(name: "recommend_content")
	late VideoModelContentRecommendationsRecommendContent recommendContent;
	@JSONField(name: "display_distance")
	late String displayDistance;
	late VideoModelContentRecommendationsTracking tracking;
	late String title;
	@JSONField(name: "sensor_tracking")
	late VideoModelContentRecommendationsSensorTracking sensorTracking;
  
  VideoModelContentRecommendations();

  factory VideoModelContentRecommendations.fromJson(Map<String, dynamic> json) => $VideoModelContentRecommendationsFromJson(json);

  Map<String, dynamic> toJson() => $VideoModelContentRecommendationsToJson(this);

  @override
  String toString() {
    return jsonEncode(this);
  }
}

@JsonSerializable()
class VideoModelContentRecommendationsRecommendContent {

	late String identification;
	@JSONField(name: "title_1st")
	late String title1st;
	@JSONField(name: "title_2nd")
	late String title2nd;
	@JSONField(name: "title_3rd")
	late String title3rd;
	@JSONField(name: "title_4th")
	late String title4th;
	late VideoModelContentRecommendationsRecommendContentImage image;
	late String url;
	late String label;
	late int width;
	late int height;
	late VideoModelContentRecommendationsRecommendContentAuthor author;
	late VideoModelContentRecommendationsRecommendContentExtra extra;
	@JSONField(name: "extra_images")
	late List<dynamic> extraImages;
	@JSONField(name: "target_info")
	late VideoModelContentRecommendationsRecommendContentTargetInfo targetInfo;
  
  VideoModelContentRecommendationsRecommendContent();

  factory VideoModelContentRecommendationsRecommendContent.fromJson(Map<String, dynamic> json) => $VideoModelContentRecommendationsRecommendContentFromJson(json);

  Map<String, dynamic> toJson() => $VideoModelContentRecommendationsRecommendContentToJson(this);

  @override
  String toString() {
    return jsonEncode(this);
  }
}

@JsonSerializable()
class VideoModelContentRecommendationsRecommendContentImage {

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
  
  VideoModelContentRecommendationsRecommendContentImage();

  factory VideoModelContentRecommendationsRecommendContentImage.fromJson(Map<String, dynamic> json) => $VideoModelContentRecommendationsRecommendContentImageFromJson(json);

  Map<String, dynamic> toJson() => $VideoModelContentRecommendationsRecommendContentImageToJson(this);

  @override
  String toString() {
    return jsonEncode(this);
  }
}

@JsonSerializable()
class VideoModelContentRecommendationsRecommendContentAuthor {

	late String id;
	late String name;
	late String photo;
	late String photo60;
	late String photo160;
	late VideoModelContentRecommendationsRecommendContentAuthorImage image;
	late String mail;
	@JSONField(name: "is_expert")
	late bool isExpert;
	@JSONField(name: "expert_info_str")
	late String expertInfoStr;
	@JSONField(name: "is_mp")
	late bool isMp;
	late String url;
	@JSONField(name: "has_user_been_prime")
	late bool hasUserBeenPrime;
	@JSONField(name: "is_prime_avaliable")
	late bool isPrimeAvaliable;
	late String desc;
	late String gender;
	late String birthday;
	@JSONField(name: "hometown_location")
	late String hometownLocation;
	@JSONField(name: "current_location")
	late String currentLocation;
	late String profession;
	@JSONField(name: "create_time")
	late String createTime;
	@JSONField(name: "n_follow")
	late String nFollow;
	@JSONField(name: "n_followed")
	late String nFollowed;
	late String nequipments;
	late String nrecipes;
	late String ndishes;
	late String ncollects;
	late String nposts;
	late String ncourses;
	late String nbuybuybuy;
	@JSONField(name: "tp_nickname")
	dynamic tpNickname;
	@JSONField(name: "n_total_recipe_collects")
	late String nTotalRecipeCollects;
	@JSONField(name: "n_total_recipe_dishes")
	late String nTotalRecipeDishes;
	@JSONField(name: "n_total_dish_digges")
	late String nTotalDishDigges;
	@JSONField(name: "is_following")
	late bool isFollowing;
	late String nfollow;
	late String nfollowed;
	late String nessays;
	@JSONField(name: "extra_info")
	dynamic extraInfo;
	@JSONField(name: "equipment_related_info")
	dynamic equipmentRelatedInfo;
	@JSONField(name: "is_social_verified")
	late bool isSocialVerified;
	@JSONField(name: "social_verified_reason")
	late String socialVerifiedReason;
  
  VideoModelContentRecommendationsRecommendContentAuthor();

  factory VideoModelContentRecommendationsRecommendContentAuthor.fromJson(Map<String, dynamic> json) => $VideoModelContentRecommendationsRecommendContentAuthorFromJson(json);

  Map<String, dynamic> toJson() => $VideoModelContentRecommendationsRecommendContentAuthorToJson(this);

  @override
  String toString() {
    return jsonEncode(this);
  }
}

@JsonSerializable()
class VideoModelContentRecommendationsRecommendContentAuthorImage {

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
  
  VideoModelContentRecommendationsRecommendContentAuthorImage();

  factory VideoModelContentRecommendationsRecommendContentAuthorImage.fromJson(Map<String, dynamic> json) => $VideoModelContentRecommendationsRecommendContentAuthorImageFromJson(json);

  Map<String, dynamic> toJson() => $VideoModelContentRecommendationsRecommendContentAuthorImageToJson(this);

  @override
  String toString() {
    return jsonEncode(this);
  }
}

@JsonSerializable()
class VideoModelContentRecommendationsRecommendContentExtra {

	@JSONField(name: "n_collects")
	late String nCollects;
	@JSONField(name: "is_video_recipe")
	late bool isVideoRecipe;
	@JSONField(name: "extra_icon_value")
	late String extraIconValue;
	@JSONField(name: "is_digged_by_me")
	late bool isDiggedByMe;
	@JSONField(name: "is_collect_by_me")
	late bool isCollectByMe;
	@JSONField(name: "extra_icon_type")
	late int extraIconType;
  
  VideoModelContentRecommendationsRecommendContentExtra();

  factory VideoModelContentRecommendationsRecommendContentExtra.fromJson(Map<String, dynamic> json) => $VideoModelContentRecommendationsRecommendContentExtraFromJson(json);

  Map<String, dynamic> toJson() => $VideoModelContentRecommendationsRecommendContentExtraToJson(this);

  @override
  String toString() {
    return jsonEncode(this);
  }
}

@JsonSerializable()
class VideoModelContentRecommendationsRecommendContentTargetInfo {

	@JSONField(name: "target_id")
	late String targetId;
	@JSONField(name: "target_type")
	late int targetType;
  
  VideoModelContentRecommendationsRecommendContentTargetInfo();

  factory VideoModelContentRecommendationsRecommendContentTargetInfo.fromJson(Map<String, dynamic> json) => $VideoModelContentRecommendationsRecommendContentTargetInfoFromJson(json);

  Map<String, dynamic> toJson() => $VideoModelContentRecommendationsRecommendContentTargetInfoToJson(this);

  @override
  String toString() {
    return jsonEncode(this);
  }
}

@JsonSerializable()
class VideoModelContentRecommendationsTracking {

	@JSONField(name: "xcf_click_urls")
	late List<String> xcfClickUrls;
	@JSONField(name: "third_party_click_urls")
	late List<dynamic> thirdPartyClickUrls;
	@JSONField(name: "xcf_expose_urls")
	late List<String> xcfExposeUrls;
	@JSONField(name: "third_party_expose_urls")
	late List<dynamic> thirdPartyExposeUrls;
  
  VideoModelContentRecommendationsTracking();

  factory VideoModelContentRecommendationsTracking.fromJson(Map<String, dynamic> json) => $VideoModelContentRecommendationsTrackingFromJson(json);

  Map<String, dynamic> toJson() => $VideoModelContentRecommendationsTrackingToJson(this);

  @override
  String toString() {
    return jsonEncode(this);
  }
}

@JsonSerializable()
class VideoModelContentRecommendationsSensorTracking {

	late List<VideoModelContentRecommendationsSensorTrackingDigg> digg;
  
  VideoModelContentRecommendationsSensorTracking();

  factory VideoModelContentRecommendationsSensorTracking.fromJson(Map<String, dynamic> json) => $VideoModelContentRecommendationsSensorTrackingFromJson(json);

  Map<String, dynamic> toJson() => $VideoModelContentRecommendationsSensorTrackingToJson(this);

  @override
  String toString() {
    return jsonEncode(this);
  }
}

@JsonSerializable()
class VideoModelContentRecommendationsSensorTrackingDigg {

	@JSONField(name: "event_name")
	late String eventName;
	late VideoModelContentRecommendationsSensorTrackingDiggProperties properties;
  
  VideoModelContentRecommendationsSensorTrackingDigg();

  factory VideoModelContentRecommendationsSensorTrackingDigg.fromJson(Map<String, dynamic> json) => $VideoModelContentRecommendationsSensorTrackingDiggFromJson(json);

  Map<String, dynamic> toJson() => $VideoModelContentRecommendationsSensorTrackingDiggToJson(this);

  @override
  String toString() {
    return jsonEncode(this);
  }
}

@JsonSerializable()
class VideoModelContentRecommendationsSensorTrackingDiggProperties {

	@JSONField(name: "pool_id")
	late int poolId;
	@JSONField(name: "resource_id")
	late int resourceId;
	@JSONField(name: "material_id")
	late int materialId;
	@JSONField(name: "target_id")
	late int targetId;
	@JSONField(name: "resource_type")
	late int resourceType;
	@JSONField(name: "target_type")
	late int targetType;
	late String pos;
	@JSONField(name: "xcf_user_id")
	late String xcfUserId;
	late String origin;
	late String section;
  
  VideoModelContentRecommendationsSensorTrackingDiggProperties();

  factory VideoModelContentRecommendationsSensorTrackingDiggProperties.fromJson(Map<String, dynamic> json) => $VideoModelContentRecommendationsSensorTrackingDiggPropertiesFromJson(json);

  Map<String, dynamic> toJson() => $VideoModelContentRecommendationsSensorTrackingDiggPropertiesToJson(this);

  @override
  String toString() {
    return jsonEncode(this);
  }
}