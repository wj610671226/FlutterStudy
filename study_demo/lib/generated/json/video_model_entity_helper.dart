import 'package:study_demo/page/kitchen/model/video_model_entity.dart';

videoModelEntityFromJson(VideoModelEntity data, Map<String, dynamic> json) {
	if (json['portals'] != null) {
		data.portals = new List<VideoModelPortal>();
		(json['portals'] as List).forEach((v) {
			data.portals.add(new VideoModelPortal().fromJson(v));
		});
	}
	if (json['content'] != null) {
		data.content = new VideoModelContent().fromJson(json['content']);
	}
	return data;
}

Map<String, dynamic> videoModelEntityToJson(VideoModelEntity entity) {
	final Map<String, dynamic> data = new Map<String, dynamic>();
	if (entity.portals != null) {
		data['portals'] =  entity.portals.map((v) => v.toJson()).toList();
	}
	if (entity.content != null) {
		data['content'] = entity.content.toJson();
	}
	return data;
}

videoModelPortalFromJson(VideoModelPortal data, Map<String, dynamic> json) {
	if (json['label'] != null) {
		data.label = json['label']?.toString();
	}
	if (json['object'] != null) {
		data.object = new VideoModelPortalsObject().fromJson(json['object']);
	}
	if (json['tracking'] != null) {
		data.tracking = new VideoModelPortalsTracking().fromJson(json['tracking']);
	}
	return data;
}

Map<String, dynamic> videoModelPortalToJson(VideoModelPortal entity) {
	final Map<String, dynamic> data = new Map<String, dynamic>();
	data['label'] = entity.label;
	if (entity.object != null) {
		data['object'] = entity.object.toJson();
	}
	if (entity.tracking != null) {
		data['tracking'] = entity.tracking.toJson();
	}
	return data;
}

videoModelPortalsObjectFromJson(VideoModelPortalsObject data, Map<String, dynamic> json) {
	if (json['title_1st'] != null) {
		data.title1st = json['title_1st']?.toString();
	}
	if (json['title_2nd'] != null) {
		data.title2nd = json['title_2nd']?.toString();
	}
	if (json['title_3rd'] != null) {
		data.title3rd = json['title_3rd']?.toString();
	}
	if (json['url'] != null) {
		data.url = json['url']?.toString();
	}
	if (json['image'] != null) {
		data.image = new VideoModelPortalsObjectImage().fromJson(json['image']);
	}
	return data;
}

Map<String, dynamic> videoModelPortalsObjectToJson(VideoModelPortalsObject entity) {
	final Map<String, dynamic> data = new Map<String, dynamic>();
	data['title_1st'] = entity.title1st;
	data['title_2nd'] = entity.title2nd;
	data['title_3rd'] = entity.title3rd;
	data['url'] = entity.url;
	if (entity.image != null) {
		data['image'] = entity.image.toJson();
	}
	return data;
}

videoModelPortalsObjectImageFromJson(VideoModelPortalsObjectImage data, Map<String, dynamic> json) {
	if (json['ident'] != null) {
		data.ident = json['ident']?.toString();
	}
	if (json['original_width'] != null) {
		data.originalWidth = json['original_width']?.toInt();
	}
	if (json['original_height'] != null) {
		data.originalHeight = json['original_height']?.toInt();
	}
	if (json['max_width'] != null) {
		data.maxWidth = json['max_width']?.toInt();
	}
	if (json['max_height'] != null) {
		data.maxHeight = json['max_height']?.toInt();
	}
	if (json['url_pattern'] != null) {
		data.urlPattern = json['url_pattern']?.toString();
	}
	return data;
}

Map<String, dynamic> videoModelPortalsObjectImageToJson(VideoModelPortalsObjectImage entity) {
	final Map<String, dynamic> data = new Map<String, dynamic>();
	data['ident'] = entity.ident;
	data['original_width'] = entity.originalWidth;
	data['original_height'] = entity.originalHeight;
	data['max_width'] = entity.maxWidth;
	data['max_height'] = entity.maxHeight;
	data['url_pattern'] = entity.urlPattern;
	return data;
}

videoModelPortalsTrackingFromJson(VideoModelPortalsTracking data, Map<String, dynamic> json) {
	if (json['xcf_expose_urls'] != null) {
		data.xcfExposeUrls = json['xcf_expose_urls']?.map((v) => v?.toString())?.toList()?.cast<String>();
	}
	if (json['xcf_click_urls'] != null) {
		data.xcfClickUrls = json['xcf_click_urls']?.map((v) => v?.toString())?.toList()?.cast<String>();
	}
	if (json['third_party_expose_urls'] != null) {
		data.thirdPartyExposeUrls = new List<dynamic>();
		data.thirdPartyExposeUrls.addAll(json['third_party_expose_urls']);
	}
	if (json['third_party_click_urls'] != null) {
		data.thirdPartyClickUrls = new List<dynamic>();
		data.thirdPartyClickUrls.addAll(json['third_party_click_urls']);
	}
	return data;
}

Map<String, dynamic> videoModelPortalsTrackingToJson(VideoModelPortalsTracking entity) {
	final Map<String, dynamic> data = new Map<String, dynamic>();
	data['xcf_expose_urls'] = entity.xcfExposeUrls;
	data['xcf_click_urls'] = entity.xcfClickUrls;
	if (entity.thirdPartyExposeUrls != null) {
		data['third_party_expose_urls'] =  [];
	}
	if (entity.thirdPartyClickUrls != null) {
		data['third_party_click_urls'] =  [];
	}
	return data;
}

videoModelContentFromJson(VideoModelContent data, Map<String, dynamic> json) {
	if (json['recommendations'] != null) {
		data.recommendations = new List<VideoModelContentRecommandations>();
		(json['recommendations'] as List).forEach((v) {
			data.recommendations.add(new VideoModelContentRecommandations().fromJson(v));
		});
	}
	return data;
}

Map<String, dynamic> videoModelContentToJson(VideoModelContent entity) {
	final Map<String, dynamic> data = new Map<String, dynamic>();
	if (entity.recommendations != null) {
		data['recommendations'] =  entity.recommendations.map((v) => v.toJson()).toList();
	}
	return data;
}

videoModelContentRecommandationsFromJson(VideoModelContentRecommandations data, Map<String, dynamic> json) {
	if (json['recommend_content'] != null) {
		data.recommendContent = new VideoModelContentRecommendationsRecommendContent().fromJson(json['recommend_content']);
	}
	if (json['display_distance'] != null) {
		data.displayDistance = json['display_distance']?.toString();
	}
	if (json['tracking'] != null) {
		data.tracking = new VideoModelContentRecommendationsTracking().fromJson(json['tracking']);
	}
	if (json['title'] != null) {
		data.title = json['title']?.toString();
	}
	if (json['sensor_tracking'] != null) {
		data.sensorTracking = new VideoModelContentRecommendationsSensorTracking().fromJson(json['sensor_tracking']);
	}
	return data;
}

Map<String, dynamic> videoModelContentRecommandationsToJson(VideoModelContentRecommandations entity) {
	final Map<String, dynamic> data = new Map<String, dynamic>();
	if (entity.recommendContent != null) {
		data['recommend_content'] = entity.recommendContent.toJson();
	}
	data['display_distance'] = entity.displayDistance;
	if (entity.tracking != null) {
		data['tracking'] = entity.tracking.toJson();
	}
	data['title'] = entity.title;
	if (entity.sensorTracking != null) {
		data['sensor_tracking'] = entity.sensorTracking.toJson();
	}
	return data;
}

videoModelContentRecommendationsRecommendContentFromJson(VideoModelContentRecommendationsRecommendContent data, Map<String, dynamic> json) {
	if (json['identification'] != null) {
		data.identification = json['identification']?.toString();
	}
	if (json['title_1st'] != null) {
		data.title1st = json['title_1st']?.toString();
	}
	if (json['title_2nd'] != null) {
		data.title2nd = json['title_2nd']?.toString();
	}
	if (json['title_3rd'] != null) {
		data.title3rd = json['title_3rd']?.toString();
	}
	if (json['title_4th'] != null) {
		data.title4th = json['title_4th']?.toString();
	}
	if (json['image'] != null) {
		data.image = new VideoModelContentRecommendationsRecommendContentImage().fromJson(json['image']);
	}
	if (json['url'] != null) {
		data.url = json['url']?.toString();
	}
	if (json['label'] != null) {
		data.label = json['label']?.toString();
	}
	if (json['width'] != null) {
		data.width = json['width']?.toInt();
	}
	if (json['height'] != null) {
		data.height = json['height']?.toInt();
	}
	if (json['author'] != null) {
		data.author = new VideoModelContentRecommendationsRecommendContentAuthor().fromJson(json['author']);
	}
	if (json['extra'] != null) {
		data.extra = new VideoModelContentRecommendationsRecommendContentExtra().fromJson(json['extra']);
	}
	if (json['extra_images'] != null) {
		data.extraImages = new List<dynamic>();
		data.extraImages.addAll(json['extra_images']);
	}
	if (json['target_info'] != null) {
		data.targetInfo = new VideoModelContentRecommendationsRecommendContentTargetInfo().fromJson(json['target_info']);
	}
	return data;
}

Map<String, dynamic> videoModelContentRecommendationsRecommendContentToJson(VideoModelContentRecommendationsRecommendContent entity) {
	final Map<String, dynamic> data = new Map<String, dynamic>();
	data['identification'] = entity.identification;
	data['title_1st'] = entity.title1st;
	data['title_2nd'] = entity.title2nd;
	data['title_3rd'] = entity.title3rd;
	data['title_4th'] = entity.title4th;
	if (entity.image != null) {
		data['image'] = entity.image.toJson();
	}
	data['url'] = entity.url;
	data['label'] = entity.label;
	data['width'] = entity.width;
	data['height'] = entity.height;
	if (entity.author != null) {
		data['author'] = entity.author.toJson();
	}
	if (entity.extra != null) {
		data['extra'] = entity.extra.toJson();
	}
	if (entity.extraImages != null) {
		data['extra_images'] =  [];
	}
	if (entity.targetInfo != null) {
		data['target_info'] = entity.targetInfo.toJson();
	}
	return data;
}

videoModelContentRecommendationsRecommendContentImageFromJson(VideoModelContentRecommendationsRecommendContentImage data, Map<String, dynamic> json) {
	if (json['ident'] != null) {
		data.ident = json['ident']?.toString();
	}
	if (json['original_width'] != null) {
		data.originalWidth = json['original_width']?.toInt();
	}
	if (json['original_height'] != null) {
		data.originalHeight = json['original_height']?.toInt();
	}
	if (json['max_width'] != null) {
		data.maxWidth = json['max_width']?.toInt();
	}
	if (json['max_height'] != null) {
		data.maxHeight = json['max_height']?.toInt();
	}
	if (json['url_pattern'] != null) {
		data.urlPattern = json['url_pattern']?.toString();
	}
	return data;
}

Map<String, dynamic> videoModelContentRecommendationsRecommendContentImageToJson(VideoModelContentRecommendationsRecommendContentImage entity) {
	final Map<String, dynamic> data = new Map<String, dynamic>();
	data['ident'] = entity.ident;
	data['original_width'] = entity.originalWidth;
	data['original_height'] = entity.originalHeight;
	data['max_width'] = entity.maxWidth;
	data['max_height'] = entity.maxHeight;
	data['url_pattern'] = entity.urlPattern;
	return data;
}

videoModelContentRecommendationsRecommendContentAuthorFromJson(VideoModelContentRecommendationsRecommendContentAuthor data, Map<String, dynamic> json) {
	if (json['id'] != null) {
		data.id = json['id']?.toString();
	}
	if (json['name'] != null) {
		data.name = json['name']?.toString();
	}
	if (json['photo'] != null) {
		data.photo = json['photo']?.toString();
	}
	if (json['photo60'] != null) {
		data.photo60 = json['photo60']?.toString();
	}
	if (json['photo160'] != null) {
		data.photo160 = json['photo160']?.toString();
	}
	if (json['image'] != null) {
		data.image = new VideoModelContentRecommendationsRecommendContentAuthorImage().fromJson(json['image']);
	}
	if (json['mail'] != null) {
		data.mail = json['mail']?.toString();
	}
	if (json['is_expert'] != null) {
		data.isExpert = json['is_expert'];
	}
	if (json['expert_info_str'] != null) {
		data.expertInfoStr = json['expert_info_str']?.toString();
	}
	if (json['is_mp'] != null) {
		data.isMp = json['is_mp'];
	}
	if (json['url'] != null) {
		data.url = json['url']?.toString();
	}
	if (json['has_user_been_prime'] != null) {
		data.hasUserBeenPrime = json['has_user_been_prime'];
	}
	if (json['is_prime_avaliable'] != null) {
		data.isPrimeAvaliable = json['is_prime_avaliable'];
	}
	if (json['desc'] != null) {
		data.desc = json['desc']?.toString();
	}
	if (json['gender'] != null) {
		data.gender = json['gender']?.toString();
	}
	if (json['birthday'] != null) {
		data.birthday = json['birthday']?.toString();
	}
	if (json['hometown_location'] != null) {
		data.hometownLocation = json['hometown_location']?.toString();
	}
	if (json['current_location'] != null) {
		data.currentLocation = json['current_location']?.toString();
	}
	if (json['profession'] != null) {
		data.profession = json['profession']?.toString();
	}
	if (json['create_time'] != null) {
		data.createTime = json['create_time']?.toString();
	}
	if (json['n_follow'] != null) {
		data.nFollow = json['n_follow']?.toString();
	}
	if (json['n_followed'] != null) {
		data.nFollowed = json['n_followed']?.toString();
	}
	if (json['nequipments'] != null) {
		data.nequipments = json['nequipments']?.toString();
	}
	if (json['nrecipes'] != null) {
		data.nrecipes = json['nrecipes']?.toString();
	}
	if (json['ndishes'] != null) {
		data.ndishes = json['ndishes']?.toString();
	}
	if (json['ncollects'] != null) {
		data.ncollects = json['ncollects']?.toString();
	}
	if (json['nposts'] != null) {
		data.nposts = json['nposts']?.toString();
	}
	if (json['ncourses'] != null) {
		data.ncourses = json['ncourses']?.toString();
	}
	if (json['nbuybuybuy'] != null) {
		data.nbuybuybuy = json['nbuybuybuy']?.toString();
	}
	if (json['tp_nickname'] != null) {
		data.tpNickname = json['tp_nickname'];
	}
	if (json['n_total_recipe_collects'] != null) {
		data.nTotalRecipeCollects = json['n_total_recipe_collects']?.toString();
	}
	if (json['n_total_recipe_dishes'] != null) {
		data.nTotalRecipeDishes = json['n_total_recipe_dishes']?.toString();
	}
	if (json['n_total_dish_digges'] != null) {
		data.nTotalDishDigges = json['n_total_dish_digges']?.toString();
	}
	if (json['is_following'] != null) {
		data.isFollowing = json['is_following'];
	}
	if (json['nfollow'] != null) {
		data.nfollow = json['nfollow']?.toString();
	}
	if (json['nfollowed'] != null) {
		data.nfollowed = json['nfollowed']?.toString();
	}
	if (json['nessays'] != null) {
		data.nessays = json['nessays']?.toString();
	}
	if (json['extra_info'] != null) {
		data.extraInfo = json['extra_info'];
	}
	if (json['equipment_related_info'] != null) {
		data.equipmentRelatedInfo = json['equipment_related_info'];
	}
	if (json['is_social_verified'] != null) {
		data.isSocialVerified = json['is_social_verified'];
	}
	if (json['social_verified_reason'] != null) {
		data.socialVerifiedReason = json['social_verified_reason']?.toString();
	}
	return data;
}

Map<String, dynamic> videoModelContentRecommendationsRecommendContentAuthorToJson(VideoModelContentRecommendationsRecommendContentAuthor entity) {
	final Map<String, dynamic> data = new Map<String, dynamic>();
	data['id'] = entity.id;
	data['name'] = entity.name;
	data['photo'] = entity.photo;
	data['photo60'] = entity.photo60;
	data['photo160'] = entity.photo160;
	if (entity.image != null) {
		data['image'] = entity.image.toJson();
	}
	data['mail'] = entity.mail;
	data['is_expert'] = entity.isExpert;
	data['expert_info_str'] = entity.expertInfoStr;
	data['is_mp'] = entity.isMp;
	data['url'] = entity.url;
	data['has_user_been_prime'] = entity.hasUserBeenPrime;
	data['is_prime_avaliable'] = entity.isPrimeAvaliable;
	data['desc'] = entity.desc;
	data['gender'] = entity.gender;
	data['birthday'] = entity.birthday;
	data['hometown_location'] = entity.hometownLocation;
	data['current_location'] = entity.currentLocation;
	data['profession'] = entity.profession;
	data['create_time'] = entity.createTime;
	data['n_follow'] = entity.nFollow;
	data['n_followed'] = entity.nFollowed;
	data['nequipments'] = entity.nequipments;
	data['nrecipes'] = entity.nrecipes;
	data['ndishes'] = entity.ndishes;
	data['ncollects'] = entity.ncollects;
	data['nposts'] = entity.nposts;
	data['ncourses'] = entity.ncourses;
	data['nbuybuybuy'] = entity.nbuybuybuy;
	data['tp_nickname'] = entity.tpNickname;
	data['n_total_recipe_collects'] = entity.nTotalRecipeCollects;
	data['n_total_recipe_dishes'] = entity.nTotalRecipeDishes;
	data['n_total_dish_digges'] = entity.nTotalDishDigges;
	data['is_following'] = entity.isFollowing;
	data['nfollow'] = entity.nfollow;
	data['nfollowed'] = entity.nfollowed;
	data['nessays'] = entity.nessays;
	data['extra_info'] = entity.extraInfo;
	data['equipment_related_info'] = entity.equipmentRelatedInfo;
	data['is_social_verified'] = entity.isSocialVerified;
	data['social_verified_reason'] = entity.socialVerifiedReason;
	return data;
}

videoModelContentRecommendationsRecommendContentAuthorImageFromJson(VideoModelContentRecommendationsRecommendContentAuthorImage data, Map<String, dynamic> json) {
	if (json['ident'] != null) {
		data.ident = json['ident']?.toString();
	}
	if (json['original_width'] != null) {
		data.originalWidth = json['original_width']?.toInt();
	}
	if (json['original_height'] != null) {
		data.originalHeight = json['original_height']?.toInt();
	}
	if (json['max_width'] != null) {
		data.maxWidth = json['max_width']?.toInt();
	}
	if (json['max_height'] != null) {
		data.maxHeight = json['max_height']?.toInt();
	}
	if (json['url_pattern'] != null) {
		data.urlPattern = json['url_pattern']?.toString();
	}
	return data;
}

Map<String, dynamic> videoModelContentRecommendationsRecommendContentAuthorImageToJson(VideoModelContentRecommendationsRecommendContentAuthorImage entity) {
	final Map<String, dynamic> data = new Map<String, dynamic>();
	data['ident'] = entity.ident;
	data['original_width'] = entity.originalWidth;
	data['original_height'] = entity.originalHeight;
	data['max_width'] = entity.maxWidth;
	data['max_height'] = entity.maxHeight;
	data['url_pattern'] = entity.urlPattern;
	return data;
}

videoModelContentRecommendationsRecommendContentExtraFromJson(VideoModelContentRecommendationsRecommendContentExtra data, Map<String, dynamic> json) {
	if (json['n_collects'] != null) {
		data.nCollects = json['n_collects']?.toString();
	}
	if (json['is_video_recipe'] != null) {
		data.isVideoRecipe = json['is_video_recipe'];
	}
	if (json['extra_icon_value'] != null) {
		data.extraIconValue = json['extra_icon_value']?.toString();
	}
	if (json['is_digged_by_me'] != null) {
		data.isDiggedByMe = json['is_digged_by_me'];
	}
	if (json['is_collect_by_me'] != null) {
		data.isCollectByMe = json['is_collect_by_me'];
	}
	if (json['extra_icon_type'] != null) {
		data.extraIconType = json['extra_icon_type']?.toInt();
	}
	return data;
}

Map<String, dynamic> videoModelContentRecommendationsRecommendContentExtraToJson(VideoModelContentRecommendationsRecommendContentExtra entity) {
	final Map<String, dynamic> data = new Map<String, dynamic>();
	data['n_collects'] = entity.nCollects;
	data['is_video_recipe'] = entity.isVideoRecipe;
	data['extra_icon_value'] = entity.extraIconValue;
	data['is_digged_by_me'] = entity.isDiggedByMe;
	data['is_collect_by_me'] = entity.isCollectByMe;
	data['extra_icon_type'] = entity.extraIconType;
	return data;
}

videoModelContentRecommendationsRecommendContentTargetInfoFromJson(VideoModelContentRecommendationsRecommendContentTargetInfo data, Map<String, dynamic> json) {
	if (json['target_id'] != null) {
		data.targetId = json['target_id']?.toString();
	}
	if (json['target_type'] != null) {
		data.targetType = json['target_type']?.toInt();
	}
	return data;
}

Map<String, dynamic> videoModelContentRecommendationsRecommendContentTargetInfoToJson(VideoModelContentRecommendationsRecommendContentTargetInfo entity) {
	final Map<String, dynamic> data = new Map<String, dynamic>();
	data['target_id'] = entity.targetId;
	data['target_type'] = entity.targetType;
	return data;
}

videoModelContentRecommendationsTrackingFromJson(VideoModelContentRecommendationsTracking data, Map<String, dynamic> json) {
	if (json['xcf_click_urls'] != null) {
		data.xcfClickUrls = json['xcf_click_urls']?.map((v) => v?.toString())?.toList()?.cast<String>();
	}
	if (json['third_party_click_urls'] != null) {
		data.thirdPartyClickUrls = new List<dynamic>();
		data.thirdPartyClickUrls.addAll(json['third_party_click_urls']);
	}
	if (json['xcf_expose_urls'] != null) {
		data.xcfExposeUrls = json['xcf_expose_urls']?.map((v) => v?.toString())?.toList()?.cast<String>();
	}
	if (json['third_party_expose_urls'] != null) {
		data.thirdPartyExposeUrls = new List<dynamic>();
		data.thirdPartyExposeUrls.addAll(json['third_party_expose_urls']);
	}
	return data;
}

Map<String, dynamic> videoModelContentRecommendationsTrackingToJson(VideoModelContentRecommendationsTracking entity) {
	final Map<String, dynamic> data = new Map<String, dynamic>();
	data['xcf_click_urls'] = entity.xcfClickUrls;
	if (entity.thirdPartyClickUrls != null) {
		data['third_party_click_urls'] =  [];
	}
	data['xcf_expose_urls'] = entity.xcfExposeUrls;
	if (entity.thirdPartyExposeUrls != null) {
		data['third_party_expose_urls'] =  [];
	}
	return data;
}

videoModelContentRecommendationsSensorTrackingFromJson(VideoModelContentRecommendationsSensorTracking data, Map<String, dynamic> json) {
	if (json['digg'] != null) {
		data.digg = new List<VideoModelContentRecommandationsSensorTrackingDigg>();
		(json['digg'] as List).forEach((v) {
			data.digg.add(new VideoModelContentRecommandationsSensorTrackingDigg().fromJson(v));
		});
	}
	return data;
}

Map<String, dynamic> videoModelContentRecommendationsSensorTrackingToJson(VideoModelContentRecommendationsSensorTracking entity) {
	final Map<String, dynamic> data = new Map<String, dynamic>();
	if (entity.digg != null) {
		data['digg'] =  entity.digg.map((v) => v.toJson()).toList();
	}
	return data;
}

videoModelContentRecommandationsSensorTrackingDiggFromJson(VideoModelContentRecommandationsSensorTrackingDigg data, Map<String, dynamic> json) {
	if (json['event_name'] != null) {
		data.eventName = json['event_name']?.toString();
	}
	if (json['properties'] != null) {
		data.properties = new VideoModelContentRecommendationsSensorTrackingDiggProperties().fromJson(json['properties']);
	}
	return data;
}

Map<String, dynamic> videoModelContentRecommandationsSensorTrackingDiggToJson(VideoModelContentRecommandationsSensorTrackingDigg entity) {
	final Map<String, dynamic> data = new Map<String, dynamic>();
	data['event_name'] = entity.eventName;
	if (entity.properties != null) {
		data['properties'] = entity.properties.toJson();
	}
	return data;
}

videoModelContentRecommendationsSensorTrackingDiggPropertiesFromJson(VideoModelContentRecommendationsSensorTrackingDiggProperties data, Map<String, dynamic> json) {
	if (json['pool_id'] != null) {
		data.poolId = json['pool_id']?.toInt();
	}
	if (json['resource_id'] != null) {
		data.resourceId = json['resource_id']?.toInt();
	}
	if (json['material_id'] != null) {
		data.materialId = json['material_id']?.toInt();
	}
	if (json['target_id'] != null) {
		data.targetId = json['target_id']?.toInt();
	}
	if (json['resource_type'] != null) {
		data.resourceType = json['resource_type']?.toInt();
	}
	if (json['target_type'] != null) {
		data.targetType = json['target_type']?.toInt();
	}
	if (json['pos'] != null) {
		data.pos = json['pos']?.toString();
	}
	if (json['xcf_user_id'] != null) {
		data.xcfUserId = json['xcf_user_id']?.toString();
	}
	if (json['origin'] != null) {
		data.origin = json['origin']?.toString();
	}
	if (json['section'] != null) {
		data.section = json['section']?.toString();
	}
	return data;
}

Map<String, dynamic> videoModelContentRecommendationsSensorTrackingDiggPropertiesToJson(VideoModelContentRecommendationsSensorTrackingDiggProperties entity) {
	final Map<String, dynamic> data = new Map<String, dynamic>();
	data['pool_id'] = entity.poolId;
	data['resource_id'] = entity.resourceId;
	data['material_id'] = entity.materialId;
	data['target_id'] = entity.targetId;
	data['resource_type'] = entity.resourceType;
	data['target_type'] = entity.targetType;
	data['pos'] = entity.pos;
	data['xcf_user_id'] = entity.xcfUserId;
	data['origin'] = entity.origin;
	data['section'] = entity.section;
	return data;
}