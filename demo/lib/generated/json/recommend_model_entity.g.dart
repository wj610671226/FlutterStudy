import 'package:demo/generated/json/base/json_convert_content.dart';
import 'package:demo/page/kitchen/model/recommend_model_entity.dart';

RecommendModelEntity $RecommendModelEntityFromJson(Map<String, dynamic> json) {
	final RecommendModelEntity recommendModelEntity = RecommendModelEntity();
	final List<RecommendModelRecommendations>? recommendations = jsonConvert.convertListNotNull<RecommendModelRecommendations>(json['recommendations']);
	if (recommendations != null) {
		recommendModelEntity.recommendations = recommendations;
	}
	return recommendModelEntity;
}

Map<String, dynamic> $RecommendModelEntityToJson(RecommendModelEntity entity) {
	final Map<String, dynamic> data = <String, dynamic>{};
	data['recommendations'] =  entity.recommendations.map((v) => v.toJson()).toList();
	return data;
}

RecommendModelRecommendations $RecommendModelRecommendationsFromJson(Map<String, dynamic> json) {
	final RecommendModelRecommendations recommendModelRecommendations = RecommendModelRecommendations();
	final RecommendModelRecommendationsObject? object = jsonConvert.convert<RecommendModelRecommendationsObject>(json['object']);
	if (object != null) {
		recommendModelRecommendations.object = object;
	}
	final RecommendModelRecommendationsTracking? tracking = jsonConvert.convert<RecommendModelRecommendationsTracking>(json['tracking']);
	if (tracking != null) {
		recommendModelRecommendations.tracking = tracking;
	}
	final RecommendModelRecommendationsSensorTracking? sensorTracking = jsonConvert.convert<RecommendModelRecommendationsSensorTracking>(json['sensor_tracking']);
	if (sensorTracking != null) {
		recommendModelRecommendations.sensorTracking = sensorTracking;
	}
	final RecommendModelRecommendationsPlaceholder? placeholder = jsonConvert.convert<RecommendModelRecommendationsPlaceholder>(json['placeholder']);
	if (placeholder != null) {
		recommendModelRecommendations.placeholder = placeholder;
	}
	return recommendModelRecommendations;
}

Map<String, dynamic> $RecommendModelRecommendationsToJson(RecommendModelRecommendations entity) {
	final Map<String, dynamic> data = <String, dynamic>{};
	data['object'] = entity.object.toJson();
	data['tracking'] = entity.tracking.toJson();
	data['sensor_tracking'] = entity.sensorTracking.toJson();
	data['placeholder'] = entity.placeholder.toJson();
	return data;
}

RecommendModelRecommendationsObject $RecommendModelRecommendationsObjectFromJson(Map<String, dynamic> json) {
	final RecommendModelRecommendationsObject recommendModelRecommendationsObject = RecommendModelRecommendationsObject();
	final String? identification = jsonConvert.convert<String>(json['identification']);
	if (identification != null) {
		recommendModelRecommendationsObject.identification = identification;
	}
	final String? title1st = jsonConvert.convert<String>(json['title_1st']);
	if (title1st != null) {
		recommendModelRecommendationsObject.title1st = title1st;
	}
	final String? title2nd = jsonConvert.convert<String>(json['title_2nd']);
	if (title2nd != null) {
		recommendModelRecommendationsObject.title2nd = title2nd;
	}
	final String? title3rd = jsonConvert.convert<String>(json['title_3rd']);
	if (title3rd != null) {
		recommendModelRecommendationsObject.title3rd = title3rd;
	}
	final String? title4th = jsonConvert.convert<String>(json['title_4th']);
	if (title4th != null) {
		recommendModelRecommendationsObject.title4th = title4th;
	}
	final RecommendModelRecommendationsObjectImage? image = jsonConvert.convert<RecommendModelRecommendationsObjectImage>(json['image']);
	if (image != null) {
		recommendModelRecommendationsObject.image = image;
	}
	final String? url = jsonConvert.convert<String>(json['url']);
	if (url != null) {
		recommendModelRecommendationsObject.url = url;
	}
	final String? label = jsonConvert.convert<String>(json['label']);
	if (label != null) {
		recommendModelRecommendationsObject.label = label;
	}
	final int? width = jsonConvert.convert<int>(json['width']);
	if (width != null) {
		recommendModelRecommendationsObject.width = width;
	}
	final int? height = jsonConvert.convert<int>(json['height']);
	if (height != null) {
		recommendModelRecommendationsObject.height = height;
	}
	final RecommendModelRecommendationsObjectAuthor? author = jsonConvert.convert<RecommendModelRecommendationsObjectAuthor>(json['author']);
	if (author != null) {
		recommendModelRecommendationsObject.author = author;
	}
	final RecommendModelRecommendationsObjectExtra? extra = jsonConvert.convert<RecommendModelRecommendationsObjectExtra>(json['extra']);
	if (extra != null) {
		recommendModelRecommendationsObject.extra = extra;
	}
	final List<dynamic>? extraImages = jsonConvert.convertListNotNull<dynamic>(json['extra_images']);
	if (extraImages != null) {
		recommendModelRecommendationsObject.extraImages = extraImages;
	}
	final RecommendModelRecommendationsObjectTargetInfo? targetInfo = jsonConvert.convert<RecommendModelRecommendationsObjectTargetInfo>(json['target_info']);
	if (targetInfo != null) {
		recommendModelRecommendationsObject.targetInfo = targetInfo;
	}
	return recommendModelRecommendationsObject;
}

Map<String, dynamic> $RecommendModelRecommendationsObjectToJson(RecommendModelRecommendationsObject entity) {
	final Map<String, dynamic> data = <String, dynamic>{};
	data['identification'] = entity.identification;
	data['title_1st'] = entity.title1st;
	data['title_2nd'] = entity.title2nd;
	data['title_3rd'] = entity.title3rd;
	data['title_4th'] = entity.title4th;
	data['image'] = entity.image.toJson();
	data['url'] = entity.url;
	data['label'] = entity.label;
	data['width'] = entity.width;
	data['height'] = entity.height;
	data['author'] = entity.author.toJson();
	data['extra'] = entity.extra.toJson();
	data['extra_images'] =  entity.extraImages;
	data['target_info'] = entity.targetInfo.toJson();
	return data;
}

RecommendModelRecommendationsObjectImage $RecommendModelRecommendationsObjectImageFromJson(Map<String, dynamic> json) {
	final RecommendModelRecommendationsObjectImage recommendModelRecommendationsObjectImage = RecommendModelRecommendationsObjectImage();
	final String? ident = jsonConvert.convert<String>(json['ident']);
	if (ident != null) {
		recommendModelRecommendationsObjectImage.ident = ident;
	}
	final int? originalWidth = jsonConvert.convert<int>(json['original_width']);
	if (originalWidth != null) {
		recommendModelRecommendationsObjectImage.originalWidth = originalWidth;
	}
	final int? originalHeight = jsonConvert.convert<int>(json['original_height']);
	if (originalHeight != null) {
		recommendModelRecommendationsObjectImage.originalHeight = originalHeight;
	}
	final int? maxWidth = jsonConvert.convert<int>(json['max_width']);
	if (maxWidth != null) {
		recommendModelRecommendationsObjectImage.maxWidth = maxWidth;
	}
	final int? maxHeight = jsonConvert.convert<int>(json['max_height']);
	if (maxHeight != null) {
		recommendModelRecommendationsObjectImage.maxHeight = maxHeight;
	}
	final String? urlPattern = jsonConvert.convert<String>(json['url_pattern']);
	if (urlPattern != null) {
		recommendModelRecommendationsObjectImage.urlPattern = urlPattern;
	}
	return recommendModelRecommendationsObjectImage;
}

Map<String, dynamic> $RecommendModelRecommendationsObjectImageToJson(RecommendModelRecommendationsObjectImage entity) {
	final Map<String, dynamic> data = <String, dynamic>{};
	data['ident'] = entity.ident;
	data['original_width'] = entity.originalWidth;
	data['original_height'] = entity.originalHeight;
	data['max_width'] = entity.maxWidth;
	data['max_height'] = entity.maxHeight;
	data['url_pattern'] = entity.urlPattern;
	return data;
}

RecommendModelRecommendationsObjectAuthor $RecommendModelRecommendationsObjectAuthorFromJson(Map<String, dynamic> json) {
	final RecommendModelRecommendationsObjectAuthor recommendModelRecommendationsObjectAuthor = RecommendModelRecommendationsObjectAuthor();
	final RecommendModelRecommendationsObjectAuthorImage? image = jsonConvert.convert<RecommendModelRecommendationsObjectAuthorImage>(json['image']);
	if (image != null) {
		recommendModelRecommendationsObjectAuthor.image = image;
	}
	final String? url = jsonConvert.convert<String>(json['url']);
	if (url != null) {
		recommendModelRecommendationsObjectAuthor.url = url;
	}
	return recommendModelRecommendationsObjectAuthor;
}

Map<String, dynamic> $RecommendModelRecommendationsObjectAuthorToJson(RecommendModelRecommendationsObjectAuthor entity) {
	final Map<String, dynamic> data = <String, dynamic>{};
	data['image'] = entity.image.toJson();
	data['url'] = entity.url;
	return data;
}

RecommendModelRecommendationsObjectAuthorImage $RecommendModelRecommendationsObjectAuthorImageFromJson(Map<String, dynamic> json) {
	final RecommendModelRecommendationsObjectAuthorImage recommendModelRecommendationsObjectAuthorImage = RecommendModelRecommendationsObjectAuthorImage();
	final String? ident = jsonConvert.convert<String>(json['ident']);
	if (ident != null) {
		recommendModelRecommendationsObjectAuthorImage.ident = ident;
	}
	final int? originalWidth = jsonConvert.convert<int>(json['original_width']);
	if (originalWidth != null) {
		recommendModelRecommendationsObjectAuthorImage.originalWidth = originalWidth;
	}
	final int? originalHeight = jsonConvert.convert<int>(json['original_height']);
	if (originalHeight != null) {
		recommendModelRecommendationsObjectAuthorImage.originalHeight = originalHeight;
	}
	final int? maxWidth = jsonConvert.convert<int>(json['max_width']);
	if (maxWidth != null) {
		recommendModelRecommendationsObjectAuthorImage.maxWidth = maxWidth;
	}
	final int? maxHeight = jsonConvert.convert<int>(json['max_height']);
	if (maxHeight != null) {
		recommendModelRecommendationsObjectAuthorImage.maxHeight = maxHeight;
	}
	final String? urlPattern = jsonConvert.convert<String>(json['url_pattern']);
	if (urlPattern != null) {
		recommendModelRecommendationsObjectAuthorImage.urlPattern = urlPattern;
	}
	return recommendModelRecommendationsObjectAuthorImage;
}

Map<String, dynamic> $RecommendModelRecommendationsObjectAuthorImageToJson(RecommendModelRecommendationsObjectAuthorImage entity) {
	final Map<String, dynamic> data = <String, dynamic>{};
	data['ident'] = entity.ident;
	data['original_width'] = entity.originalWidth;
	data['original_height'] = entity.originalHeight;
	data['max_width'] = entity.maxWidth;
	data['max_height'] = entity.maxHeight;
	data['url_pattern'] = entity.urlPattern;
	return data;
}

RecommendModelRecommendationsObjectExtra $RecommendModelRecommendationsObjectExtraFromJson(Map<String, dynamic> json) {
	final RecommendModelRecommendationsObjectExtra recommendModelRecommendationsObjectExtra = RecommendModelRecommendationsObjectExtra();
	final int? nCollects = jsonConvert.convert<int>(json['n_collects']);
	if (nCollects != null) {
		recommendModelRecommendationsObjectExtra.nCollects = nCollects;
	}
	final bool? isVideoRecipe = jsonConvert.convert<bool>(json['is_video_recipe']);
	if (isVideoRecipe != null) {
		recommendModelRecommendationsObjectExtra.isVideoRecipe = isVideoRecipe;
	}
	final int? extraIconType = jsonConvert.convert<int>(json['extra_icon_type']);
	if (extraIconType != null) {
		recommendModelRecommendationsObjectExtra.extraIconType = extraIconType;
	}
	final String? extraIconValue = jsonConvert.convert<String>(json['extra_icon_value']);
	if (extraIconValue != null) {
		recommendModelRecommendationsObjectExtra.extraIconValue = extraIconValue;
	}
	final bool? isFullscreen = jsonConvert.convert<bool>(json['is_fullscreen']);
	if (isFullscreen != null) {
		recommendModelRecommendationsObjectExtra.isFullscreen = isFullscreen;
	}
	return recommendModelRecommendationsObjectExtra;
}

Map<String, dynamic> $RecommendModelRecommendationsObjectExtraToJson(RecommendModelRecommendationsObjectExtra entity) {
	final Map<String, dynamic> data = <String, dynamic>{};
	data['n_collects'] = entity.nCollects;
	data['is_video_recipe'] = entity.isVideoRecipe;
	data['extra_icon_type'] = entity.extraIconType;
	data['extra_icon_value'] = entity.extraIconValue;
	data['is_fullscreen'] = entity.isFullscreen;
	return data;
}

RecommendModelRecommendationsObjectTargetInfo $RecommendModelRecommendationsObjectTargetInfoFromJson(Map<String, dynamic> json) {
	final RecommendModelRecommendationsObjectTargetInfo recommendModelRecommendationsObjectTargetInfo = RecommendModelRecommendationsObjectTargetInfo();
	final int? targetType = jsonConvert.convert<int>(json['target_type']);
	if (targetType != null) {
		recommendModelRecommendationsObjectTargetInfo.targetType = targetType;
	}
	final int? targetId = jsonConvert.convert<int>(json['target_id']);
	if (targetId != null) {
		recommendModelRecommendationsObjectTargetInfo.targetId = targetId;
	}
	return recommendModelRecommendationsObjectTargetInfo;
}

Map<String, dynamic> $RecommendModelRecommendationsObjectTargetInfoToJson(RecommendModelRecommendationsObjectTargetInfo entity) {
	final Map<String, dynamic> data = <String, dynamic>{};
	data['target_type'] = entity.targetType;
	data['target_id'] = entity.targetId;
	return data;
}

RecommendModelRecommendationsTracking $RecommendModelRecommendationsTrackingFromJson(Map<String, dynamic> json) {
	final RecommendModelRecommendationsTracking recommendModelRecommendationsTracking = RecommendModelRecommendationsTracking();
	final List<String>? xcfExposeUrls = jsonConvert.convertListNotNull<String>(json['xcf_expose_urls']);
	if (xcfExposeUrls != null) {
		recommendModelRecommendationsTracking.xcfExposeUrls = xcfExposeUrls;
	}
	final List<String>? xcfClickUrls = jsonConvert.convertListNotNull<String>(json['xcf_click_urls']);
	if (xcfClickUrls != null) {
		recommendModelRecommendationsTracking.xcfClickUrls = xcfClickUrls;
	}
	final List<dynamic>? thirdPartyExposeUrls = jsonConvert.convertListNotNull<dynamic>(json['third_party_expose_urls']);
	if (thirdPartyExposeUrls != null) {
		recommendModelRecommendationsTracking.thirdPartyExposeUrls = thirdPartyExposeUrls;
	}
	final List<dynamic>? thirdPartyClickUrls = jsonConvert.convertListNotNull<dynamic>(json['third_party_click_urls']);
	if (thirdPartyClickUrls != null) {
		recommendModelRecommendationsTracking.thirdPartyClickUrls = thirdPartyClickUrls;
	}
	return recommendModelRecommendationsTracking;
}

Map<String, dynamic> $RecommendModelRecommendationsTrackingToJson(RecommendModelRecommendationsTracking entity) {
	final Map<String, dynamic> data = <String, dynamic>{};
	data['xcf_expose_urls'] =  entity.xcfExposeUrls;
	data['xcf_click_urls'] =  entity.xcfClickUrls;
	data['third_party_expose_urls'] =  entity.thirdPartyExposeUrls;
	data['third_party_click_urls'] =  entity.thirdPartyClickUrls;
	return data;
}

RecommendModelRecommendationsSensorTracking $RecommendModelRecommendationsSensorTrackingFromJson(Map<String, dynamic> json) {
	final RecommendModelRecommendationsSensorTracking recommendModelRecommendationsSensorTracking = RecommendModelRecommendationsSensorTracking();
	final List<RecommendModelRecommendationsSensorTrackingImpression>? impression = jsonConvert.convertListNotNull<RecommendModelRecommendationsSensorTrackingImpression>(json['impression']);
	if (impression != null) {
		recommendModelRecommendationsSensorTracking.impression = impression;
	}
	final List<RecommendModelRecommendationsSensorTrackingClick>? click = jsonConvert.convertListNotNull<RecommendModelRecommendationsSensorTrackingClick>(json['click']);
	if (click != null) {
		recommendModelRecommendationsSensorTracking.click = click;
	}
	final List<dynamic>? digg = jsonConvert.convertListNotNull<dynamic>(json['digg']);
	if (digg != null) {
		recommendModelRecommendationsSensorTracking.digg = digg;
	}
	return recommendModelRecommendationsSensorTracking;
}

Map<String, dynamic> $RecommendModelRecommendationsSensorTrackingToJson(RecommendModelRecommendationsSensorTracking entity) {
	final Map<String, dynamic> data = <String, dynamic>{};
	data['impression'] =  entity.impression.map((v) => v.toJson()).toList();
	data['click'] =  entity.click.map((v) => v.toJson()).toList();
	data['digg'] =  entity.digg;
	return data;
}

RecommendModelRecommendationsSensorTrackingImpression $RecommendModelRecommendationsSensorTrackingImpressionFromJson(Map<String, dynamic> json) {
	final RecommendModelRecommendationsSensorTrackingImpression recommendModelRecommendationsSensorTrackingImpression = RecommendModelRecommendationsSensorTrackingImpression();
	final String? eventName = jsonConvert.convert<String>(json['event_name']);
	if (eventName != null) {
		recommendModelRecommendationsSensorTrackingImpression.eventName = eventName;
	}
	final RecommendModelRecommendationsSensorTrackingImpressionProperties? properties = jsonConvert.convert<RecommendModelRecommendationsSensorTrackingImpressionProperties>(json['properties']);
	if (properties != null) {
		recommendModelRecommendationsSensorTrackingImpression.properties = properties;
	}
	return recommendModelRecommendationsSensorTrackingImpression;
}

Map<String, dynamic> $RecommendModelRecommendationsSensorTrackingImpressionToJson(RecommendModelRecommendationsSensorTrackingImpression entity) {
	final Map<String, dynamic> data = <String, dynamic>{};
	data['event_name'] = entity.eventName;
	data['properties'] = entity.properties.toJson();
	return data;
}

RecommendModelRecommendationsSensorTrackingImpressionProperties $RecommendModelRecommendationsSensorTrackingImpressionPropertiesFromJson(Map<String, dynamic> json) {
	final RecommendModelRecommendationsSensorTrackingImpressionProperties recommendModelRecommendationsSensorTrackingImpressionProperties = RecommendModelRecommendationsSensorTrackingImpressionProperties();
	final String? section = jsonConvert.convert<String>(json['section']);
	if (section != null) {
		recommendModelRecommendationsSensorTrackingImpressionProperties.section = section;
	}
	final String? targetType = jsonConvert.convert<String>(json['target_type']);
	if (targetType != null) {
		recommendModelRecommendationsSensorTrackingImpressionProperties.targetType = targetType;
	}
	final int? targetId = jsonConvert.convert<int>(json['target_id']);
	if (targetId != null) {
		recommendModelRecommendationsSensorTrackingImpressionProperties.targetId = targetId;
	}
	final String? url = jsonConvert.convert<String>(json['url']);
	if (url != null) {
		recommendModelRecommendationsSensorTrackingImpressionProperties.url = url;
	}
	final String? pos = jsonConvert.convert<String>(json['pos']);
	if (pos != null) {
		recommendModelRecommendationsSensorTrackingImpressionProperties.pos = pos;
	}
	final String? abGroup = jsonConvert.convert<String>(json['ab_group']);
	if (abGroup != null) {
		recommendModelRecommendationsSensorTrackingImpressionProperties.abGroup = abGroup;
	}
	final String? recipeOrigin = jsonConvert.convert<String>(json['recipe_origin']);
	if (recipeOrigin != null) {
		recommendModelRecommendationsSensorTrackingImpressionProperties.recipeOrigin = recipeOrigin;
	}
	final String? planoutGroup = jsonConvert.convert<String>(json['planout_group']);
	if (planoutGroup != null) {
		recommendModelRecommendationsSensorTrackingImpressionProperties.planoutGroup = planoutGroup;
	}
	final int? featureLogId = jsonConvert.convert<int>(json['feature_log_id']);
	if (featureLogId != null) {
		recommendModelRecommendationsSensorTrackingImpressionProperties.featureLogId = featureLogId;
	}
	return recommendModelRecommendationsSensorTrackingImpressionProperties;
}

Map<String, dynamic> $RecommendModelRecommendationsSensorTrackingImpressionPropertiesToJson(RecommendModelRecommendationsSensorTrackingImpressionProperties entity) {
	final Map<String, dynamic> data = <String, dynamic>{};
	data['section'] = entity.section;
	data['target_type'] = entity.targetType;
	data['target_id'] = entity.targetId;
	data['url'] = entity.url;
	data['pos'] = entity.pos;
	data['ab_group'] = entity.abGroup;
	data['recipe_origin'] = entity.recipeOrigin;
	data['planout_group'] = entity.planoutGroup;
	data['feature_log_id'] = entity.featureLogId;
	return data;
}

RecommendModelRecommendationsSensorTrackingClick $RecommendModelRecommendationsSensorTrackingClickFromJson(Map<String, dynamic> json) {
	final RecommendModelRecommendationsSensorTrackingClick recommendModelRecommendationsSensorTrackingClick = RecommendModelRecommendationsSensorTrackingClick();
	final String? eventName = jsonConvert.convert<String>(json['event_name']);
	if (eventName != null) {
		recommendModelRecommendationsSensorTrackingClick.eventName = eventName;
	}
	final RecommendModelRecommendationsSensorTrackingClickProperties? properties = jsonConvert.convert<RecommendModelRecommendationsSensorTrackingClickProperties>(json['properties']);
	if (properties != null) {
		recommendModelRecommendationsSensorTrackingClick.properties = properties;
	}
	return recommendModelRecommendationsSensorTrackingClick;
}

Map<String, dynamic> $RecommendModelRecommendationsSensorTrackingClickToJson(RecommendModelRecommendationsSensorTrackingClick entity) {
	final Map<String, dynamic> data = <String, dynamic>{};
	data['event_name'] = entity.eventName;
	data['properties'] = entity.properties.toJson();
	return data;
}

RecommendModelRecommendationsSensorTrackingClickProperties $RecommendModelRecommendationsSensorTrackingClickPropertiesFromJson(Map<String, dynamic> json) {
	final RecommendModelRecommendationsSensorTrackingClickProperties recommendModelRecommendationsSensorTrackingClickProperties = RecommendModelRecommendationsSensorTrackingClickProperties();
	final String? section = jsonConvert.convert<String>(json['section']);
	if (section != null) {
		recommendModelRecommendationsSensorTrackingClickProperties.section = section;
	}
	final String? targetType = jsonConvert.convert<String>(json['target_type']);
	if (targetType != null) {
		recommendModelRecommendationsSensorTrackingClickProperties.targetType = targetType;
	}
	final int? targetId = jsonConvert.convert<int>(json['target_id']);
	if (targetId != null) {
		recommendModelRecommendationsSensorTrackingClickProperties.targetId = targetId;
	}
	final String? url = jsonConvert.convert<String>(json['url']);
	if (url != null) {
		recommendModelRecommendationsSensorTrackingClickProperties.url = url;
	}
	final String? pos = jsonConvert.convert<String>(json['pos']);
	if (pos != null) {
		recommendModelRecommendationsSensorTrackingClickProperties.pos = pos;
	}
	final String? abGroup = jsonConvert.convert<String>(json['ab_group']);
	if (abGroup != null) {
		recommendModelRecommendationsSensorTrackingClickProperties.abGroup = abGroup;
	}
	final String? recipeOrigin = jsonConvert.convert<String>(json['recipe_origin']);
	if (recipeOrigin != null) {
		recommendModelRecommendationsSensorTrackingClickProperties.recipeOrigin = recipeOrigin;
	}
	final String? planoutGroup = jsonConvert.convert<String>(json['planout_group']);
	if (planoutGroup != null) {
		recommendModelRecommendationsSensorTrackingClickProperties.planoutGroup = planoutGroup;
	}
	final int? featureLogId = jsonConvert.convert<int>(json['feature_log_id']);
	if (featureLogId != null) {
		recommendModelRecommendationsSensorTrackingClickProperties.featureLogId = featureLogId;
	}
	return recommendModelRecommendationsSensorTrackingClickProperties;
}

Map<String, dynamic> $RecommendModelRecommendationsSensorTrackingClickPropertiesToJson(RecommendModelRecommendationsSensorTrackingClickProperties entity) {
	final Map<String, dynamic> data = <String, dynamic>{};
	data['section'] = entity.section;
	data['target_type'] = entity.targetType;
	data['target_id'] = entity.targetId;
	data['url'] = entity.url;
	data['pos'] = entity.pos;
	data['ab_group'] = entity.abGroup;
	data['recipe_origin'] = entity.recipeOrigin;
	data['planout_group'] = entity.planoutGroup;
	data['feature_log_id'] = entity.featureLogId;
	return data;
}

RecommendModelRecommendationsPlaceholder $RecommendModelRecommendationsPlaceholderFromJson(Map<String, dynamic> json) {
	final RecommendModelRecommendationsPlaceholder recommendModelRecommendationsPlaceholder = RecommendModelRecommendationsPlaceholder();
	return recommendModelRecommendationsPlaceholder;
}

Map<String, dynamic> $RecommendModelRecommendationsPlaceholderToJson(RecommendModelRecommendationsPlaceholder entity) {
	final Map<String, dynamic> data = <String, dynamic>{};
	return data;
}