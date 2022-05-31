import 'package:demo/generated/json/base/json_convert_content.dart';
import 'package:demo/page/kitchen/model/video_model_entity.dart';

VideoModelEntity $VideoModelEntityFromJson(Map<String, dynamic> json) {
	final VideoModelEntity videoModelEntity = VideoModelEntity();
	final List<VideoModelPortals>? portals = jsonConvert.convertListNotNull<VideoModelPortals>(json['portals']);
	if (portals != null) {
		videoModelEntity.portals = portals;
	}
	final VideoModelContent? content = jsonConvert.convert<VideoModelContent>(json['content']);
	if (content != null) {
		videoModelEntity.content = content;
	}
	return videoModelEntity;
}

Map<String, dynamic> $VideoModelEntityToJson(VideoModelEntity entity) {
	final Map<String, dynamic> data = <String, dynamic>{};
	data['portals'] =  entity.portals.map((v) => v.toJson()).toList();
	data['content'] = entity.content.toJson();
	return data;
}

VideoModelPortals $VideoModelPortalsFromJson(Map<String, dynamic> json) {
	final VideoModelPortals videoModelPortals = VideoModelPortals();
	final String? label = jsonConvert.convert<String>(json['label']);
	if (label != null) {
		videoModelPortals.label = label;
	}
	final VideoModelPortalsObject? object = jsonConvert.convert<VideoModelPortalsObject>(json['object']);
	if (object != null) {
		videoModelPortals.object = object;
	}
	final VideoModelPortalsTracking? tracking = jsonConvert.convert<VideoModelPortalsTracking>(json['tracking']);
	if (tracking != null) {
		videoModelPortals.tracking = tracking;
	}
	return videoModelPortals;
}

Map<String, dynamic> $VideoModelPortalsToJson(VideoModelPortals entity) {
	final Map<String, dynamic> data = <String, dynamic>{};
	data['label'] = entity.label;
	data['object'] = entity.object.toJson();
	data['tracking'] = entity.tracking.toJson();
	return data;
}

VideoModelPortalsObject $VideoModelPortalsObjectFromJson(Map<String, dynamic> json) {
	final VideoModelPortalsObject videoModelPortalsObject = VideoModelPortalsObject();
	final String? title1st = jsonConvert.convert<String>(json['title_1st']);
	if (title1st != null) {
		videoModelPortalsObject.title1st = title1st;
	}
	final String? title2nd = jsonConvert.convert<String>(json['title_2nd']);
	if (title2nd != null) {
		videoModelPortalsObject.title2nd = title2nd;
	}
	final String? title3rd = jsonConvert.convert<String>(json['title_3rd']);
	if (title3rd != null) {
		videoModelPortalsObject.title3rd = title3rd;
	}
	final String? url = jsonConvert.convert<String>(json['url']);
	if (url != null) {
		videoModelPortalsObject.url = url;
	}
	final VideoModelPortalsObjectImage? image = jsonConvert.convert<VideoModelPortalsObjectImage>(json['image']);
	if (image != null) {
		videoModelPortalsObject.image = image;
	}
	return videoModelPortalsObject;
}

Map<String, dynamic> $VideoModelPortalsObjectToJson(VideoModelPortalsObject entity) {
	final Map<String, dynamic> data = <String, dynamic>{};
	data['title_1st'] = entity.title1st;
	data['title_2nd'] = entity.title2nd;
	data['title_3rd'] = entity.title3rd;
	data['url'] = entity.url;
	data['image'] = entity.image.toJson();
	return data;
}

VideoModelPortalsObjectImage $VideoModelPortalsObjectImageFromJson(Map<String, dynamic> json) {
	final VideoModelPortalsObjectImage videoModelPortalsObjectImage = VideoModelPortalsObjectImage();
	final String? ident = jsonConvert.convert<String>(json['ident']);
	if (ident != null) {
		videoModelPortalsObjectImage.ident = ident;
	}
	final int? originalWidth = jsonConvert.convert<int>(json['original_width']);
	if (originalWidth != null) {
		videoModelPortalsObjectImage.originalWidth = originalWidth;
	}
	final int? originalHeight = jsonConvert.convert<int>(json['original_height']);
	if (originalHeight != null) {
		videoModelPortalsObjectImage.originalHeight = originalHeight;
	}
	final int? maxWidth = jsonConvert.convert<int>(json['max_width']);
	if (maxWidth != null) {
		videoModelPortalsObjectImage.maxWidth = maxWidth;
	}
	final int? maxHeight = jsonConvert.convert<int>(json['max_height']);
	if (maxHeight != null) {
		videoModelPortalsObjectImage.maxHeight = maxHeight;
	}
	final String? urlPattern = jsonConvert.convert<String>(json['url_pattern']);
	if (urlPattern != null) {
		videoModelPortalsObjectImage.urlPattern = urlPattern;
	}
	return videoModelPortalsObjectImage;
}

Map<String, dynamic> $VideoModelPortalsObjectImageToJson(VideoModelPortalsObjectImage entity) {
	final Map<String, dynamic> data = <String, dynamic>{};
	data['ident'] = entity.ident;
	data['original_width'] = entity.originalWidth;
	data['original_height'] = entity.originalHeight;
	data['max_width'] = entity.maxWidth;
	data['max_height'] = entity.maxHeight;
	data['url_pattern'] = entity.urlPattern;
	return data;
}

VideoModelPortalsTracking $VideoModelPortalsTrackingFromJson(Map<String, dynamic> json) {
	final VideoModelPortalsTracking videoModelPortalsTracking = VideoModelPortalsTracking();
	final List<String>? xcfExposeUrls = jsonConvert.convertListNotNull<String>(json['xcf_expose_urls']);
	if (xcfExposeUrls != null) {
		videoModelPortalsTracking.xcfExposeUrls = xcfExposeUrls;
	}
	final List<String>? xcfClickUrls = jsonConvert.convertListNotNull<String>(json['xcf_click_urls']);
	if (xcfClickUrls != null) {
		videoModelPortalsTracking.xcfClickUrls = xcfClickUrls;
	}
	final List<dynamic>? thirdPartyExposeUrls = jsonConvert.convertListNotNull<dynamic>(json['third_party_expose_urls']);
	if (thirdPartyExposeUrls != null) {
		videoModelPortalsTracking.thirdPartyExposeUrls = thirdPartyExposeUrls;
	}
	final List<dynamic>? thirdPartyClickUrls = jsonConvert.convertListNotNull<dynamic>(json['third_party_click_urls']);
	if (thirdPartyClickUrls != null) {
		videoModelPortalsTracking.thirdPartyClickUrls = thirdPartyClickUrls;
	}
	return videoModelPortalsTracking;
}

Map<String, dynamic> $VideoModelPortalsTrackingToJson(VideoModelPortalsTracking entity) {
	final Map<String, dynamic> data = <String, dynamic>{};
	data['xcf_expose_urls'] =  entity.xcfExposeUrls;
	data['xcf_click_urls'] =  entity.xcfClickUrls;
	data['third_party_expose_urls'] =  entity.thirdPartyExposeUrls;
	data['third_party_click_urls'] =  entity.thirdPartyClickUrls;
	return data;
}

VideoModelContent $VideoModelContentFromJson(Map<String, dynamic> json) {
	final VideoModelContent videoModelContent = VideoModelContent();
	final List<VideoModelContentRecommendations>? recommendations = jsonConvert.convertListNotNull<VideoModelContentRecommendations>(json['recommendations']);
	if (recommendations != null) {
		videoModelContent.recommendations = recommendations;
	}
	return videoModelContent;
}

Map<String, dynamic> $VideoModelContentToJson(VideoModelContent entity) {
	final Map<String, dynamic> data = <String, dynamic>{};
	data['recommendations'] =  entity.recommendations.map((v) => v.toJson()).toList();
	return data;
}

VideoModelContentRecommendations $VideoModelContentRecommendationsFromJson(Map<String, dynamic> json) {
	final VideoModelContentRecommendations videoModelContentRecommendations = VideoModelContentRecommendations();
	final VideoModelContentRecommendationsRecommendContent? recommendContent = jsonConvert.convert<VideoModelContentRecommendationsRecommendContent>(json['recommend_content']);
	if (recommendContent != null) {
		videoModelContentRecommendations.recommendContent = recommendContent;
	}
	final String? displayDistance = jsonConvert.convert<String>(json['display_distance']);
	if (displayDistance != null) {
		videoModelContentRecommendations.displayDistance = displayDistance;
	}
	final VideoModelContentRecommendationsTracking? tracking = jsonConvert.convert<VideoModelContentRecommendationsTracking>(json['tracking']);
	if (tracking != null) {
		videoModelContentRecommendations.tracking = tracking;
	}
	final String? title = jsonConvert.convert<String>(json['title']);
	if (title != null) {
		videoModelContentRecommendations.title = title;
	}
	final VideoModelContentRecommendationsSensorTracking? sensorTracking = jsonConvert.convert<VideoModelContentRecommendationsSensorTracking>(json['sensor_tracking']);
	if (sensorTracking != null) {
		videoModelContentRecommendations.sensorTracking = sensorTracking;
	}
	return videoModelContentRecommendations;
}

Map<String, dynamic> $VideoModelContentRecommendationsToJson(VideoModelContentRecommendations entity) {
	final Map<String, dynamic> data = <String, dynamic>{};
	data['recommend_content'] = entity.recommendContent.toJson();
	data['display_distance'] = entity.displayDistance;
	data['tracking'] = entity.tracking.toJson();
	data['title'] = entity.title;
	data['sensor_tracking'] = entity.sensorTracking.toJson();
	return data;
}

VideoModelContentRecommendationsRecommendContent $VideoModelContentRecommendationsRecommendContentFromJson(Map<String, dynamic> json) {
	final VideoModelContentRecommendationsRecommendContent videoModelContentRecommendationsRecommendContent = VideoModelContentRecommendationsRecommendContent();
	final String? identification = jsonConvert.convert<String>(json['identification']);
	if (identification != null) {
		videoModelContentRecommendationsRecommendContent.identification = identification;
	}
	final String? title1st = jsonConvert.convert<String>(json['title_1st']);
	if (title1st != null) {
		videoModelContentRecommendationsRecommendContent.title1st = title1st;
	}
	final String? title2nd = jsonConvert.convert<String>(json['title_2nd']);
	if (title2nd != null) {
		videoModelContentRecommendationsRecommendContent.title2nd = title2nd;
	}
	final String? title3rd = jsonConvert.convert<String>(json['title_3rd']);
	if (title3rd != null) {
		videoModelContentRecommendationsRecommendContent.title3rd = title3rd;
	}
	final String? title4th = jsonConvert.convert<String>(json['title_4th']);
	if (title4th != null) {
		videoModelContentRecommendationsRecommendContent.title4th = title4th;
	}
	final VideoModelContentRecommendationsRecommendContentImage? image = jsonConvert.convert<VideoModelContentRecommendationsRecommendContentImage>(json['image']);
	if (image != null) {
		videoModelContentRecommendationsRecommendContent.image = image;
	}
	final String? url = jsonConvert.convert<String>(json['url']);
	if (url != null) {
		videoModelContentRecommendationsRecommendContent.url = url;
	}
	final String? label = jsonConvert.convert<String>(json['label']);
	if (label != null) {
		videoModelContentRecommendationsRecommendContent.label = label;
	}
	final int? width = jsonConvert.convert<int>(json['width']);
	if (width != null) {
		videoModelContentRecommendationsRecommendContent.width = width;
	}
	final int? height = jsonConvert.convert<int>(json['height']);
	if (height != null) {
		videoModelContentRecommendationsRecommendContent.height = height;
	}
	final VideoModelContentRecommendationsRecommendContentAuthor? author = jsonConvert.convert<VideoModelContentRecommendationsRecommendContentAuthor>(json['author']);
	if (author != null) {
		videoModelContentRecommendationsRecommendContent.author = author;
	}
	final VideoModelContentRecommendationsRecommendContentExtra? extra = jsonConvert.convert<VideoModelContentRecommendationsRecommendContentExtra>(json['extra']);
	if (extra != null) {
		videoModelContentRecommendationsRecommendContent.extra = extra;
	}
	final List<dynamic>? extraImages = jsonConvert.convertListNotNull<dynamic>(json['extra_images']);
	if (extraImages != null) {
		videoModelContentRecommendationsRecommendContent.extraImages = extraImages;
	}
	final VideoModelContentRecommendationsRecommendContentTargetInfo? targetInfo = jsonConvert.convert<VideoModelContentRecommendationsRecommendContentTargetInfo>(json['target_info']);
	if (targetInfo != null) {
		videoModelContentRecommendationsRecommendContent.targetInfo = targetInfo;
	}
	return videoModelContentRecommendationsRecommendContent;
}

Map<String, dynamic> $VideoModelContentRecommendationsRecommendContentToJson(VideoModelContentRecommendationsRecommendContent entity) {
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

VideoModelContentRecommendationsRecommendContentImage $VideoModelContentRecommendationsRecommendContentImageFromJson(Map<String, dynamic> json) {
	final VideoModelContentRecommendationsRecommendContentImage videoModelContentRecommendationsRecommendContentImage = VideoModelContentRecommendationsRecommendContentImage();
	final String? ident = jsonConvert.convert<String>(json['ident']);
	if (ident != null) {
		videoModelContentRecommendationsRecommendContentImage.ident = ident;
	}
	final int? originalWidth = jsonConvert.convert<int>(json['original_width']);
	if (originalWidth != null) {
		videoModelContentRecommendationsRecommendContentImage.originalWidth = originalWidth;
	}
	final int? originalHeight = jsonConvert.convert<int>(json['original_height']);
	if (originalHeight != null) {
		videoModelContentRecommendationsRecommendContentImage.originalHeight = originalHeight;
	}
	final int? maxWidth = jsonConvert.convert<int>(json['max_width']);
	if (maxWidth != null) {
		videoModelContentRecommendationsRecommendContentImage.maxWidth = maxWidth;
	}
	final int? maxHeight = jsonConvert.convert<int>(json['max_height']);
	if (maxHeight != null) {
		videoModelContentRecommendationsRecommendContentImage.maxHeight = maxHeight;
	}
	final String? urlPattern = jsonConvert.convert<String>(json['url_pattern']);
	if (urlPattern != null) {
		videoModelContentRecommendationsRecommendContentImage.urlPattern = urlPattern;
	}
	return videoModelContentRecommendationsRecommendContentImage;
}

Map<String, dynamic> $VideoModelContentRecommendationsRecommendContentImageToJson(VideoModelContentRecommendationsRecommendContentImage entity) {
	final Map<String, dynamic> data = <String, dynamic>{};
	data['ident'] = entity.ident;
	data['original_width'] = entity.originalWidth;
	data['original_height'] = entity.originalHeight;
	data['max_width'] = entity.maxWidth;
	data['max_height'] = entity.maxHeight;
	data['url_pattern'] = entity.urlPattern;
	return data;
}

VideoModelContentRecommendationsRecommendContentAuthor $VideoModelContentRecommendationsRecommendContentAuthorFromJson(Map<String, dynamic> json) {
	final VideoModelContentRecommendationsRecommendContentAuthor videoModelContentRecommendationsRecommendContentAuthor = VideoModelContentRecommendationsRecommendContentAuthor();
	final String? id = jsonConvert.convert<String>(json['id']);
	if (id != null) {
		videoModelContentRecommendationsRecommendContentAuthor.id = id;
	}
	final String? name = jsonConvert.convert<String>(json['name']);
	if (name != null) {
		videoModelContentRecommendationsRecommendContentAuthor.name = name;
	}
	final String? photo = jsonConvert.convert<String>(json['photo']);
	if (photo != null) {
		videoModelContentRecommendationsRecommendContentAuthor.photo = photo;
	}
	final String? photo60 = jsonConvert.convert<String>(json['photo60']);
	if (photo60 != null) {
		videoModelContentRecommendationsRecommendContentAuthor.photo60 = photo60;
	}
	final String? photo160 = jsonConvert.convert<String>(json['photo160']);
	if (photo160 != null) {
		videoModelContentRecommendationsRecommendContentAuthor.photo160 = photo160;
	}
	final VideoModelContentRecommendationsRecommendContentAuthorImage? image = jsonConvert.convert<VideoModelContentRecommendationsRecommendContentAuthorImage>(json['image']);
	if (image != null) {
		videoModelContentRecommendationsRecommendContentAuthor.image = image;
	}
	final String? mail = jsonConvert.convert<String>(json['mail']);
	if (mail != null) {
		videoModelContentRecommendationsRecommendContentAuthor.mail = mail;
	}
	final bool? isExpert = jsonConvert.convert<bool>(json['is_expert']);
	if (isExpert != null) {
		videoModelContentRecommendationsRecommendContentAuthor.isExpert = isExpert;
	}
	final String? expertInfoStr = jsonConvert.convert<String>(json['expert_info_str']);
	if (expertInfoStr != null) {
		videoModelContentRecommendationsRecommendContentAuthor.expertInfoStr = expertInfoStr;
	}
	final bool? isMp = jsonConvert.convert<bool>(json['is_mp']);
	if (isMp != null) {
		videoModelContentRecommendationsRecommendContentAuthor.isMp = isMp;
	}
	final String? url = jsonConvert.convert<String>(json['url']);
	if (url != null) {
		videoModelContentRecommendationsRecommendContentAuthor.url = url;
	}
	final bool? hasUserBeenPrime = jsonConvert.convert<bool>(json['has_user_been_prime']);
	if (hasUserBeenPrime != null) {
		videoModelContentRecommendationsRecommendContentAuthor.hasUserBeenPrime = hasUserBeenPrime;
	}
	final bool? isPrimeAvaliable = jsonConvert.convert<bool>(json['is_prime_avaliable']);
	if (isPrimeAvaliable != null) {
		videoModelContentRecommendationsRecommendContentAuthor.isPrimeAvaliable = isPrimeAvaliable;
	}
	final String? desc = jsonConvert.convert<String>(json['desc']);
	if (desc != null) {
		videoModelContentRecommendationsRecommendContentAuthor.desc = desc;
	}
	final String? gender = jsonConvert.convert<String>(json['gender']);
	if (gender != null) {
		videoModelContentRecommendationsRecommendContentAuthor.gender = gender;
	}
	final String? birthday = jsonConvert.convert<String>(json['birthday']);
	if (birthday != null) {
		videoModelContentRecommendationsRecommendContentAuthor.birthday = birthday;
	}
	final String? hometownLocation = jsonConvert.convert<String>(json['hometown_location']);
	if (hometownLocation != null) {
		videoModelContentRecommendationsRecommendContentAuthor.hometownLocation = hometownLocation;
	}
	final String? currentLocation = jsonConvert.convert<String>(json['current_location']);
	if (currentLocation != null) {
		videoModelContentRecommendationsRecommendContentAuthor.currentLocation = currentLocation;
	}
	final String? profession = jsonConvert.convert<String>(json['profession']);
	if (profession != null) {
		videoModelContentRecommendationsRecommendContentAuthor.profession = profession;
	}
	final String? createTime = jsonConvert.convert<String>(json['create_time']);
	if (createTime != null) {
		videoModelContentRecommendationsRecommendContentAuthor.createTime = createTime;
	}
	final String? nFollow = jsonConvert.convert<String>(json['n_follow']);
	if (nFollow != null) {
		videoModelContentRecommendationsRecommendContentAuthor.nFollow = nFollow;
	}
	final String? nFollowed = jsonConvert.convert<String>(json['n_followed']);
	if (nFollowed != null) {
		videoModelContentRecommendationsRecommendContentAuthor.nFollowed = nFollowed;
	}
	final String? nequipments = jsonConvert.convert<String>(json['nequipments']);
	if (nequipments != null) {
		videoModelContentRecommendationsRecommendContentAuthor.nequipments = nequipments;
	}
	final String? nrecipes = jsonConvert.convert<String>(json['nrecipes']);
	if (nrecipes != null) {
		videoModelContentRecommendationsRecommendContentAuthor.nrecipes = nrecipes;
	}
	final String? ndishes = jsonConvert.convert<String>(json['ndishes']);
	if (ndishes != null) {
		videoModelContentRecommendationsRecommendContentAuthor.ndishes = ndishes;
	}
	final String? ncollects = jsonConvert.convert<String>(json['ncollects']);
	if (ncollects != null) {
		videoModelContentRecommendationsRecommendContentAuthor.ncollects = ncollects;
	}
	final String? nposts = jsonConvert.convert<String>(json['nposts']);
	if (nposts != null) {
		videoModelContentRecommendationsRecommendContentAuthor.nposts = nposts;
	}
	final String? ncourses = jsonConvert.convert<String>(json['ncourses']);
	if (ncourses != null) {
		videoModelContentRecommendationsRecommendContentAuthor.ncourses = ncourses;
	}
	final String? nbuybuybuy = jsonConvert.convert<String>(json['nbuybuybuy']);
	if (nbuybuybuy != null) {
		videoModelContentRecommendationsRecommendContentAuthor.nbuybuybuy = nbuybuybuy;
	}
	final dynamic? tpNickname = jsonConvert.convert<dynamic>(json['tp_nickname']);
	if (tpNickname != null) {
		videoModelContentRecommendationsRecommendContentAuthor.tpNickname = tpNickname;
	}
	final String? nTotalRecipeCollects = jsonConvert.convert<String>(json['n_total_recipe_collects']);
	if (nTotalRecipeCollects != null) {
		videoModelContentRecommendationsRecommendContentAuthor.nTotalRecipeCollects = nTotalRecipeCollects;
	}
	final String? nTotalRecipeDishes = jsonConvert.convert<String>(json['n_total_recipe_dishes']);
	if (nTotalRecipeDishes != null) {
		videoModelContentRecommendationsRecommendContentAuthor.nTotalRecipeDishes = nTotalRecipeDishes;
	}
	final String? nTotalDishDigges = jsonConvert.convert<String>(json['n_total_dish_digges']);
	if (nTotalDishDigges != null) {
		videoModelContentRecommendationsRecommendContentAuthor.nTotalDishDigges = nTotalDishDigges;
	}
	final bool? isFollowing = jsonConvert.convert<bool>(json['is_following']);
	if (isFollowing != null) {
		videoModelContentRecommendationsRecommendContentAuthor.isFollowing = isFollowing;
	}
	final String? nfollow = jsonConvert.convert<String>(json['nfollow']);
	if (nfollow != null) {
		videoModelContentRecommendationsRecommendContentAuthor.nfollow = nfollow;
	}
	final String? nfollowed = jsonConvert.convert<String>(json['nfollowed']);
	if (nfollowed != null) {
		videoModelContentRecommendationsRecommendContentAuthor.nfollowed = nfollowed;
	}
	final String? nessays = jsonConvert.convert<String>(json['nessays']);
	if (nessays != null) {
		videoModelContentRecommendationsRecommendContentAuthor.nessays = nessays;
	}
	final dynamic? extraInfo = jsonConvert.convert<dynamic>(json['extra_info']);
	if (extraInfo != null) {
		videoModelContentRecommendationsRecommendContentAuthor.extraInfo = extraInfo;
	}
	final dynamic? equipmentRelatedInfo = jsonConvert.convert<dynamic>(json['equipment_related_info']);
	if (equipmentRelatedInfo != null) {
		videoModelContentRecommendationsRecommendContentAuthor.equipmentRelatedInfo = equipmentRelatedInfo;
	}
	final bool? isSocialVerified = jsonConvert.convert<bool>(json['is_social_verified']);
	if (isSocialVerified != null) {
		videoModelContentRecommendationsRecommendContentAuthor.isSocialVerified = isSocialVerified;
	}
	final String? socialVerifiedReason = jsonConvert.convert<String>(json['social_verified_reason']);
	if (socialVerifiedReason != null) {
		videoModelContentRecommendationsRecommendContentAuthor.socialVerifiedReason = socialVerifiedReason;
	}
	return videoModelContentRecommendationsRecommendContentAuthor;
}

Map<String, dynamic> $VideoModelContentRecommendationsRecommendContentAuthorToJson(VideoModelContentRecommendationsRecommendContentAuthor entity) {
	final Map<String, dynamic> data = <String, dynamic>{};
	data['id'] = entity.id;
	data['name'] = entity.name;
	data['photo'] = entity.photo;
	data['photo60'] = entity.photo60;
	data['photo160'] = entity.photo160;
	data['image'] = entity.image.toJson();
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

VideoModelContentRecommendationsRecommendContentAuthorImage $VideoModelContentRecommendationsRecommendContentAuthorImageFromJson(Map<String, dynamic> json) {
	final VideoModelContentRecommendationsRecommendContentAuthorImage videoModelContentRecommendationsRecommendContentAuthorImage = VideoModelContentRecommendationsRecommendContentAuthorImage();
	final String? ident = jsonConvert.convert<String>(json['ident']);
	if (ident != null) {
		videoModelContentRecommendationsRecommendContentAuthorImage.ident = ident;
	}
	final int? originalWidth = jsonConvert.convert<int>(json['original_width']);
	if (originalWidth != null) {
		videoModelContentRecommendationsRecommendContentAuthorImage.originalWidth = originalWidth;
	}
	final int? originalHeight = jsonConvert.convert<int>(json['original_height']);
	if (originalHeight != null) {
		videoModelContentRecommendationsRecommendContentAuthorImage.originalHeight = originalHeight;
	}
	final int? maxWidth = jsonConvert.convert<int>(json['max_width']);
	if (maxWidth != null) {
		videoModelContentRecommendationsRecommendContentAuthorImage.maxWidth = maxWidth;
	}
	final int? maxHeight = jsonConvert.convert<int>(json['max_height']);
	if (maxHeight != null) {
		videoModelContentRecommendationsRecommendContentAuthorImage.maxHeight = maxHeight;
	}
	final String? urlPattern = jsonConvert.convert<String>(json['url_pattern']);
	if (urlPattern != null) {
		videoModelContentRecommendationsRecommendContentAuthorImage.urlPattern = urlPattern;
	}
	return videoModelContentRecommendationsRecommendContentAuthorImage;
}

Map<String, dynamic> $VideoModelContentRecommendationsRecommendContentAuthorImageToJson(VideoModelContentRecommendationsRecommendContentAuthorImage entity) {
	final Map<String, dynamic> data = <String, dynamic>{};
	data['ident'] = entity.ident;
	data['original_width'] = entity.originalWidth;
	data['original_height'] = entity.originalHeight;
	data['max_width'] = entity.maxWidth;
	data['max_height'] = entity.maxHeight;
	data['url_pattern'] = entity.urlPattern;
	return data;
}

VideoModelContentRecommendationsRecommendContentExtra $VideoModelContentRecommendationsRecommendContentExtraFromJson(Map<String, dynamic> json) {
	final VideoModelContentRecommendationsRecommendContentExtra videoModelContentRecommendationsRecommendContentExtra = VideoModelContentRecommendationsRecommendContentExtra();
	final String? nCollects = jsonConvert.convert<String>(json['n_collects']);
	if (nCollects != null) {
		videoModelContentRecommendationsRecommendContentExtra.nCollects = nCollects;
	}
	final bool? isVideoRecipe = jsonConvert.convert<bool>(json['is_video_recipe']);
	if (isVideoRecipe != null) {
		videoModelContentRecommendationsRecommendContentExtra.isVideoRecipe = isVideoRecipe;
	}
	final String? extraIconValue = jsonConvert.convert<String>(json['extra_icon_value']);
	if (extraIconValue != null) {
		videoModelContentRecommendationsRecommendContentExtra.extraIconValue = extraIconValue;
	}
	final bool? isDiggedByMe = jsonConvert.convert<bool>(json['is_digged_by_me']);
	if (isDiggedByMe != null) {
		videoModelContentRecommendationsRecommendContentExtra.isDiggedByMe = isDiggedByMe;
	}
	final bool? isCollectByMe = jsonConvert.convert<bool>(json['is_collect_by_me']);
	if (isCollectByMe != null) {
		videoModelContentRecommendationsRecommendContentExtra.isCollectByMe = isCollectByMe;
	}
	final int? extraIconType = jsonConvert.convert<int>(json['extra_icon_type']);
	if (extraIconType != null) {
		videoModelContentRecommendationsRecommendContentExtra.extraIconType = extraIconType;
	}
	return videoModelContentRecommendationsRecommendContentExtra;
}

Map<String, dynamic> $VideoModelContentRecommendationsRecommendContentExtraToJson(VideoModelContentRecommendationsRecommendContentExtra entity) {
	final Map<String, dynamic> data = <String, dynamic>{};
	data['n_collects'] = entity.nCollects;
	data['is_video_recipe'] = entity.isVideoRecipe;
	data['extra_icon_value'] = entity.extraIconValue;
	data['is_digged_by_me'] = entity.isDiggedByMe;
	data['is_collect_by_me'] = entity.isCollectByMe;
	data['extra_icon_type'] = entity.extraIconType;
	return data;
}

VideoModelContentRecommendationsRecommendContentTargetInfo $VideoModelContentRecommendationsRecommendContentTargetInfoFromJson(Map<String, dynamic> json) {
	final VideoModelContentRecommendationsRecommendContentTargetInfo videoModelContentRecommendationsRecommendContentTargetInfo = VideoModelContentRecommendationsRecommendContentTargetInfo();
	final String? targetId = jsonConvert.convert<String>(json['target_id']);
	if (targetId != null) {
		videoModelContentRecommendationsRecommendContentTargetInfo.targetId = targetId;
	}
	final int? targetType = jsonConvert.convert<int>(json['target_type']);
	if (targetType != null) {
		videoModelContentRecommendationsRecommendContentTargetInfo.targetType = targetType;
	}
	return videoModelContentRecommendationsRecommendContentTargetInfo;
}

Map<String, dynamic> $VideoModelContentRecommendationsRecommendContentTargetInfoToJson(VideoModelContentRecommendationsRecommendContentTargetInfo entity) {
	final Map<String, dynamic> data = <String, dynamic>{};
	data['target_id'] = entity.targetId;
	data['target_type'] = entity.targetType;
	return data;
}

VideoModelContentRecommendationsTracking $VideoModelContentRecommendationsTrackingFromJson(Map<String, dynamic> json) {
	final VideoModelContentRecommendationsTracking videoModelContentRecommendationsTracking = VideoModelContentRecommendationsTracking();
	final List<String>? xcfClickUrls = jsonConvert.convertListNotNull<String>(json['xcf_click_urls']);
	if (xcfClickUrls != null) {
		videoModelContentRecommendationsTracking.xcfClickUrls = xcfClickUrls;
	}
	final List<dynamic>? thirdPartyClickUrls = jsonConvert.convertListNotNull<dynamic>(json['third_party_click_urls']);
	if (thirdPartyClickUrls != null) {
		videoModelContentRecommendationsTracking.thirdPartyClickUrls = thirdPartyClickUrls;
	}
	final List<String>? xcfExposeUrls = jsonConvert.convertListNotNull<String>(json['xcf_expose_urls']);
	if (xcfExposeUrls != null) {
		videoModelContentRecommendationsTracking.xcfExposeUrls = xcfExposeUrls;
	}
	final List<dynamic>? thirdPartyExposeUrls = jsonConvert.convertListNotNull<dynamic>(json['third_party_expose_urls']);
	if (thirdPartyExposeUrls != null) {
		videoModelContentRecommendationsTracking.thirdPartyExposeUrls = thirdPartyExposeUrls;
	}
	return videoModelContentRecommendationsTracking;
}

Map<String, dynamic> $VideoModelContentRecommendationsTrackingToJson(VideoModelContentRecommendationsTracking entity) {
	final Map<String, dynamic> data = <String, dynamic>{};
	data['xcf_click_urls'] =  entity.xcfClickUrls;
	data['third_party_click_urls'] =  entity.thirdPartyClickUrls;
	data['xcf_expose_urls'] =  entity.xcfExposeUrls;
	data['third_party_expose_urls'] =  entity.thirdPartyExposeUrls;
	return data;
}

VideoModelContentRecommendationsSensorTracking $VideoModelContentRecommendationsSensorTrackingFromJson(Map<String, dynamic> json) {
	final VideoModelContentRecommendationsSensorTracking videoModelContentRecommendationsSensorTracking = VideoModelContentRecommendationsSensorTracking();
	final List<VideoModelContentRecommendationsSensorTrackingDigg>? digg = jsonConvert.convertListNotNull<VideoModelContentRecommendationsSensorTrackingDigg>(json['digg']);
	if (digg != null) {
		videoModelContentRecommendationsSensorTracking.digg = digg;
	}
	return videoModelContentRecommendationsSensorTracking;
}

Map<String, dynamic> $VideoModelContentRecommendationsSensorTrackingToJson(VideoModelContentRecommendationsSensorTracking entity) {
	final Map<String, dynamic> data = <String, dynamic>{};
	data['digg'] =  entity.digg.map((v) => v.toJson()).toList();
	return data;
}

VideoModelContentRecommendationsSensorTrackingDigg $VideoModelContentRecommendationsSensorTrackingDiggFromJson(Map<String, dynamic> json) {
	final VideoModelContentRecommendationsSensorTrackingDigg videoModelContentRecommendationsSensorTrackingDigg = VideoModelContentRecommendationsSensorTrackingDigg();
	final String? eventName = jsonConvert.convert<String>(json['event_name']);
	if (eventName != null) {
		videoModelContentRecommendationsSensorTrackingDigg.eventName = eventName;
	}
	final VideoModelContentRecommendationsSensorTrackingDiggProperties? properties = jsonConvert.convert<VideoModelContentRecommendationsSensorTrackingDiggProperties>(json['properties']);
	if (properties != null) {
		videoModelContentRecommendationsSensorTrackingDigg.properties = properties;
	}
	return videoModelContentRecommendationsSensorTrackingDigg;
}

Map<String, dynamic> $VideoModelContentRecommendationsSensorTrackingDiggToJson(VideoModelContentRecommendationsSensorTrackingDigg entity) {
	final Map<String, dynamic> data = <String, dynamic>{};
	data['event_name'] = entity.eventName;
	data['properties'] = entity.properties.toJson();
	return data;
}

VideoModelContentRecommendationsSensorTrackingDiggProperties $VideoModelContentRecommendationsSensorTrackingDiggPropertiesFromJson(Map<String, dynamic> json) {
	final VideoModelContentRecommendationsSensorTrackingDiggProperties videoModelContentRecommendationsSensorTrackingDiggProperties = VideoModelContentRecommendationsSensorTrackingDiggProperties();
	final int? poolId = jsonConvert.convert<int>(json['pool_id']);
	if (poolId != null) {
		videoModelContentRecommendationsSensorTrackingDiggProperties.poolId = poolId;
	}
	final int? resourceId = jsonConvert.convert<int>(json['resource_id']);
	if (resourceId != null) {
		videoModelContentRecommendationsSensorTrackingDiggProperties.resourceId = resourceId;
	}
	final int? materialId = jsonConvert.convert<int>(json['material_id']);
	if (materialId != null) {
		videoModelContentRecommendationsSensorTrackingDiggProperties.materialId = materialId;
	}
	final int? targetId = jsonConvert.convert<int>(json['target_id']);
	if (targetId != null) {
		videoModelContentRecommendationsSensorTrackingDiggProperties.targetId = targetId;
	}
	final int? resourceType = jsonConvert.convert<int>(json['resource_type']);
	if (resourceType != null) {
		videoModelContentRecommendationsSensorTrackingDiggProperties.resourceType = resourceType;
	}
	final int? targetType = jsonConvert.convert<int>(json['target_type']);
	if (targetType != null) {
		videoModelContentRecommendationsSensorTrackingDiggProperties.targetType = targetType;
	}
	final String? pos = jsonConvert.convert<String>(json['pos']);
	if (pos != null) {
		videoModelContentRecommendationsSensorTrackingDiggProperties.pos = pos;
	}
	final String? xcfUserId = jsonConvert.convert<String>(json['xcf_user_id']);
	if (xcfUserId != null) {
		videoModelContentRecommendationsSensorTrackingDiggProperties.xcfUserId = xcfUserId;
	}
	final String? origin = jsonConvert.convert<String>(json['origin']);
	if (origin != null) {
		videoModelContentRecommendationsSensorTrackingDiggProperties.origin = origin;
	}
	final String? section = jsonConvert.convert<String>(json['section']);
	if (section != null) {
		videoModelContentRecommendationsSensorTrackingDiggProperties.section = section;
	}
	return videoModelContentRecommendationsSensorTrackingDiggProperties;
}

Map<String, dynamic> $VideoModelContentRecommendationsSensorTrackingDiggPropertiesToJson(VideoModelContentRecommendationsSensorTrackingDiggProperties entity) {
	final Map<String, dynamic> data = <String, dynamic>{};
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