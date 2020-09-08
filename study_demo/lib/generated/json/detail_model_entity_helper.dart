import 'package:study_demo/page/kitchen/model/detail_model_entity.dart';

detailModelEntityFromJson(DetailModelEntity data, Map<String, dynamic> json) {
	if (json['content'] != null) {
		data.content = new DetailModelContent().fromJson(json['content']);
	}
	return data;
}

Map<String, dynamic> detailModelEntityToJson(DetailModelEntity entity) {
	final Map<String, dynamic> data = new Map<String, dynamic>();
	if (entity.content != null) {
		data['content'] = entity.content.toJson();
	}
	return data;
}

detailModelContentFromJson(DetailModelContent data, Map<String, dynamic> json) {
	if (json['recipe'] != null) {
		data.recipe = new DetailModelContentRecipe().fromJson(json['recipe']);
	}
	return data;
}

Map<String, dynamic> detailModelContentToJson(DetailModelContent entity) {
	final Map<String, dynamic> data = new Map<String, dynamic>();
	if (entity.recipe != null) {
		data['recipe'] = entity.recipe.toJson();
	}
	return data;
}

detailModelContentRecipeFromJson(DetailModelContentRecipe data, Map<String, dynamic> json) {
	if (json['id'] != null) {
		data.id = json['id']?.toString();
	}
	if (json['name'] != null) {
		data.name = json['name']?.toString();
	}
	if (json['desc'] != null) {
		data.desc = json['desc']?.toString();
	}
	if (json['photo'] != null) {
		data.photo = json['photo']?.toString();
	}
	if (json['image'] != null) {
		data.image = new DetailModelContentRecipeImage().fromJson(json['image']);
	}
	if (json['has_minor_avatar'] != null) {
		data.hasMinorAvatar = json['has_minor_avatar'];
	}
	if (json['minor_author'] != null) {
		data.minorAuthor = new DetailModelContentRecipeMinorAuthor().fromJson(json['minor_author']);
	}
	if (json['is_adaptation_recipe'] != null) {
		data.isAdaptationRecipe = json['is_adaptation_recipe'];
	}
	if (json['adaptation'] != null) {
		data.adaptation = new DetailModelContentRecipeAdaptation().fromJson(json['adaptation']);
	}
	if (json['labels'] != null) {
		data.labels = new List<dynamic>();
		data.labels.addAll(json['labels']);
	}
	if (json['author'] != null) {
		data.author = new DetailModelContentRecipeAuthor().fromJson(json['author']);
	}
	if (json['ident'] != null) {
		data.ident = json['ident']?.toString();
	}
	if (json['photo80'] != null) {
		data.photo80 = json['photo80']?.toString();
	}
	if (json['photo90'] != null) {
		data.photo90 = json['photo90']?.toString();
	}
	if (json['photo140'] != null) {
		data.photo140 = json['photo140']?.toString();
	}
	if (json['photo280'] != null) {
		data.photo280 = json['photo280']?.toString();
	}
	if (json['photo340'] != null) {
		data.photo340 = json['photo340']?.toString();
	}
	if (json['photo526'] != null) {
		data.photo526 = json['photo526']?.toString();
	}
	if (json['photo580'] != null) {
		data.photo580 = json['photo580']?.toString();
	}
	if (json['photo640'] != null) {
		data.photo640 = json['photo640']?.toString();
	}
	if (json['thumb'] != null) {
		data.thumb = json['thumb']?.toString();
	}
	if (json['create_time'] != null) {
		data.createTime = json['create_time']?.toString();
	}
	if (json['friendly_create_time'] != null) {
		data.friendlyCreateTime = json['friendly_create_time']?.toString();
	}
	if (json['update_time'] != null) {
		data.updateTime = json['update_time']?.toString();
	}
	if (json['score'] != null) {
		data.score = json['score']?.toString();
	}
	if (json['is_exclusive'] != null) {
		data.isExclusive = json['is_exclusive'];
	}
	if (json['is_fullscreen'] != null) {
		data.isFullscreen = json['is_fullscreen'];
	}
	if (json['url'] != null) {
		data.url = json['url']?.toString();
	}
	if (json['summary'] != null) {
		data.summary = json['summary']?.toString();
	}
	if (json['ingredient'] != null) {
		data.ingredient = new List<DetailModelContentRecipeIngredient>();
		(json['ingredient'] as List).forEach((v) {
			data.ingredient.add(new DetailModelContentRecipeIngredient().fromJson(v));
		});
	}
	if (json['instruction'] != null) {
		data.instruction = new List<DetailModelContentRecipeInstruction>();
		(json['instruction'] as List).forEach((v) {
			data.instruction.add(new DetailModelContentRecipeInstruction().fromJson(v));
		});
	}
	if (json['tips'] != null) {
		data.tips = json['tips']?.toString();
	}
	if (json['dish_author'] != null) {
		data.dishAuthor = new List<dynamic>();
		data.dishAuthor.addAll(json['dish_author']);
	}
	if (json['recipe_cats'] != null) {
		data.recipeCats = new List<dynamic>();
		data.recipeCats.addAll(json['recipe_cats']);
	}
	if (json['original_categories'] != null) {
		data.originalCategories = json['original_categories']?.map((v) => v?.toString())?.toList()?.cast<String>();
	}
	if (json['stats'] != null) {
		data.stats = new DetailModelContentRecipeStats().fromJson(json['stats']);
	}
	if (json['equipment_related_info'] != null) {
		data.equipmentRelatedInfo = new DetailModelContentRecipeEquipmentRelatedInfo().fromJson(json['equipment_related_info']);
	}
	if (json['purchase_button'] != null) {
		data.purchaseButton = new DetailModelContentRecipePurchaseButton().fromJson(json['purchase_button']);
	}
	if (json['purchase_url'] != null) {
		data.purchaseUrl = json['purchase_url']?.toString();
	}
	if (json['video_url'] != null) {
		data.videoUrl = json['video_url']?.toString();
	}
	if (json['video_page_url'] != null) {
		data.videoPageUrl = json['video_page_url']?.toString();
	}
	if (json['cover_micro_video'] != null) {
		data.coverMicroVideo = new DetailModelContentRecipeCoverMicroVideo().fromJson(json['cover_micro_video']);
	}
	if (json['vod_video'] != null) {
		data.vodVideo = new DetailModelContentRecipeVodVideo().fromJson(json['vod_video']);
	}
	return data;
}

Map<String, dynamic> detailModelContentRecipeToJson(DetailModelContentRecipe entity) {
	final Map<String, dynamic> data = new Map<String, dynamic>();
	data['id'] = entity.id;
	data['name'] = entity.name;
	data['desc'] = entity.desc;
	data['photo'] = entity.photo;
	if (entity.image != null) {
		data['image'] = entity.image.toJson();
	}
	data['has_minor_avatar'] = entity.hasMinorAvatar;
	if (entity.minorAuthor != null) {
		data['minor_author'] = entity.minorAuthor.toJson();
	}
	data['is_adaptation_recipe'] = entity.isAdaptationRecipe;
	if (entity.adaptation != null) {
		data['adaptation'] = entity.adaptation.toJson();
	}
	if (entity.labels != null) {
		data['labels'] =  [];
	}
	if (entity.author != null) {
		data['author'] = entity.author.toJson();
	}
	data['ident'] = entity.ident;
	data['photo80'] = entity.photo80;
	data['photo90'] = entity.photo90;
	data['photo140'] = entity.photo140;
	data['photo280'] = entity.photo280;
	data['photo340'] = entity.photo340;
	data['photo526'] = entity.photo526;
	data['photo580'] = entity.photo580;
	data['photo640'] = entity.photo640;
	data['thumb'] = entity.thumb;
	data['create_time'] = entity.createTime;
	data['friendly_create_time'] = entity.friendlyCreateTime;
	data['update_time'] = entity.updateTime;
	data['score'] = entity.score;
	data['is_exclusive'] = entity.isExclusive;
	data['is_fullscreen'] = entity.isFullscreen;
	data['url'] = entity.url;
	data['summary'] = entity.summary;
	if (entity.ingredient != null) {
		data['ingredient'] =  entity.ingredient.map((v) => v.toJson()).toList();
	}
	if (entity.instruction != null) {
		data['instruction'] =  entity.instruction.map((v) => v.toJson()).toList();
	}
	data['tips'] = entity.tips;
	if (entity.dishAuthor != null) {
		data['dish_author'] =  [];
	}
	if (entity.recipeCats != null) {
		data['recipe_cats'] =  [];
	}
	data['original_categories'] = entity.originalCategories;
	if (entity.stats != null) {
		data['stats'] = entity.stats.toJson();
	}
	if (entity.equipmentRelatedInfo != null) {
		data['equipment_related_info'] = entity.equipmentRelatedInfo.toJson();
	}
	if (entity.purchaseButton != null) {
		data['purchase_button'] = entity.purchaseButton.toJson();
	}
	data['purchase_url'] = entity.purchaseUrl;
	data['video_url'] = entity.videoUrl;
	data['video_page_url'] = entity.videoPageUrl;
	if (entity.coverMicroVideo != null) {
		data['cover_micro_video'] = entity.coverMicroVideo.toJson();
	}
	if (entity.vodVideo != null) {
		data['vod_video'] = entity.vodVideo.toJson();
	}
	return data;
}

detailModelContentRecipeImageFromJson(DetailModelContentRecipeImage data, Map<String, dynamic> json) {
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

Map<String, dynamic> detailModelContentRecipeImageToJson(DetailModelContentRecipeImage entity) {
	final Map<String, dynamic> data = new Map<String, dynamic>();
	data['ident'] = entity.ident;
	data['original_width'] = entity.originalWidth;
	data['original_height'] = entity.originalHeight;
	data['max_width'] = entity.maxWidth;
	data['max_height'] = entity.maxHeight;
	data['url_pattern'] = entity.urlPattern;
	return data;
}

detailModelContentRecipeMinorAuthorFromJson(DetailModelContentRecipeMinorAuthor data, Map<String, dynamic> json) {
	return data;
}

Map<String, dynamic> detailModelContentRecipeMinorAuthorToJson(DetailModelContentRecipeMinorAuthor entity) {
	final Map<String, dynamic> data = new Map<String, dynamic>();
	return data;
}

detailModelContentRecipeAdaptationFromJson(DetailModelContentRecipeAdaptation data, Map<String, dynamic> json) {
	if (json['allow_adaptation'] != null) {
		data.allowAdaptation = json['allow_adaptation'];
	}
	if (json['n_adaptation'] != null) {
		data.nAdaptation = json['n_adaptation']?.toInt();
	}
	if (json['root_recipe_id'] != null) {
		data.rootRecipeId = json['root_recipe_id']?.toString();
	}
	if (json['allow_to_change_adaptation_status'] != null) {
		data.allowToChangeAdaptationStatus = json['allow_to_change_adaptation_status'];
	}
	if (json['adaptation_history_url'] != null) {
		data.adaptationHistoryUrl = json['adaptation_history_url']?.toString();
	}
	return data;
}

Map<String, dynamic> detailModelContentRecipeAdaptationToJson(DetailModelContentRecipeAdaptation entity) {
	final Map<String, dynamic> data = new Map<String, dynamic>();
	data['allow_adaptation'] = entity.allowAdaptation;
	data['n_adaptation'] = entity.nAdaptation;
	data['root_recipe_id'] = entity.rootRecipeId;
	data['allow_to_change_adaptation_status'] = entity.allowToChangeAdaptationStatus;
	data['adaptation_history_url'] = entity.adaptationHistoryUrl;
	return data;
}

detailModelContentRecipeAuthorFromJson(DetailModelContentRecipeAuthor data, Map<String, dynamic> json) {
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
		data.image = new DetailModelContentRecipeAuthorImage().fromJson(json['image']);
	}
	if (json['mail'] != null) {
		data.mail = json['mail']?.toString();
	}
	if (json['is_expert'] != null) {
		data.isExpert = json['is_expert'];
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
	if (json['labels'] != null) {
		data.labels = new List<DetailModelContentRecipeAuthorLabel>();
		(json['labels'] as List).forEach((v) {
			data.labels.add(new DetailModelContentRecipeAuthorLabel().fromJson(v));
		});
	}
	if (json['is_social_verified'] != null) {
		data.isSocialVerified = json['is_social_verified'];
	}
	if (json['social_verified_reason'] != null) {
		data.socialVerifiedReason = json['social_verified_reason']?.toString();
	}
	if (json['is_following'] != null) {
		data.isFollowing = json['is_following'];
	}
	return data;
}

Map<String, dynamic> detailModelContentRecipeAuthorToJson(DetailModelContentRecipeAuthor entity) {
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
	data['is_mp'] = entity.isMp;
	data['url'] = entity.url;
	data['has_user_been_prime'] = entity.hasUserBeenPrime;
	data['is_prime_avaliable'] = entity.isPrimeAvaliable;
	if (entity.labels != null) {
		data['labels'] =  entity.labels.map((v) => v.toJson()).toList();
	}
	data['is_social_verified'] = entity.isSocialVerified;
	data['social_verified_reason'] = entity.socialVerifiedReason;
	data['is_following'] = entity.isFollowing;
	return data;
}

detailModelContentRecipeAuthorImageFromJson(DetailModelContentRecipeAuthorImage data, Map<String, dynamic> json) {
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

Map<String, dynamic> detailModelContentRecipeAuthorImageToJson(DetailModelContentRecipeAuthorImage entity) {
	final Map<String, dynamic> data = new Map<String, dynamic>();
	data['ident'] = entity.ident;
	data['original_width'] = entity.originalWidth;
	data['original_height'] = entity.originalHeight;
	data['max_width'] = entity.maxWidth;
	data['max_height'] = entity.maxHeight;
	data['url_pattern'] = entity.urlPattern;
	return data;
}

detailModelContentRecipeAuthorLabelFromJson(DetailModelContentRecipeAuthorLabel data, Map<String, dynamic> json) {
	if (json['text'] != null) {
		data.text = json['text']?.toString();
	}
	if (json['url'] != null) {
		data.url = json['url']?.toString();
	}
	if (json['color'] != null) {
		data.color = json['color']?.toString();
	}
	if (json['color_v2'] != null) {
		data.colorV2 = json['color_v2']?.toString();
	}
	if (json['bg_color'] != null) {
		data.bgColor = json['bg_color']?.toString();
	}
	if (json['gradient_bg_colors'] != null) {
		data.gradientBgColors = json['gradient_bg_colors']?.map((v) => v?.toString())?.toList()?.cast<String>();
	}
	if (json['rank'] != null) {
		data.rank = json['rank']?.toInt();
	}
	return data;
}

Map<String, dynamic> detailModelContentRecipeAuthorLabelToJson(DetailModelContentRecipeAuthorLabel entity) {
	final Map<String, dynamic> data = new Map<String, dynamic>();
	data['text'] = entity.text;
	data['url'] = entity.url;
	data['color'] = entity.color;
	data['color_v2'] = entity.colorV2;
	data['bg_color'] = entity.bgColor;
	data['gradient_bg_colors'] = entity.gradientBgColors;
	data['rank'] = entity.rank;
	return data;
}

detailModelContentRecipeIngredientFromJson(DetailModelContentRecipeIngredient data, Map<String, dynamic> json) {
	if (json['name'] != null) {
		data.name = json['name']?.toString();
	}
	if (json['amount'] != null) {
		data.amount = json['amount']?.toString();
	}
	if (json['cat'] != null) {
		data.cat = json['cat']?.toString();
	}
	return data;
}

Map<String, dynamic> detailModelContentRecipeIngredientToJson(DetailModelContentRecipeIngredient entity) {
	final Map<String, dynamic> data = new Map<String, dynamic>();
	data['name'] = entity.name;
	data['amount'] = entity.amount;
	data['cat'] = entity.cat;
	return data;
}

detailModelContentRecipeInstructionFromJson(DetailModelContentRecipeInstruction data, Map<String, dynamic> json) {
	if (json['step'] != null) {
		data.step = json['step']?.toString();
	}
	if (json['text'] != null) {
		data.text = json['text']?.toString();
	}
	if (json['ident'] != null) {
		data.ident = json['ident']?.toString();
	}
	if (json['video'] != null) {
		data.video = new DetailModelContentRecipeInstructionVideo().fromJson(json['video']);
	}
	if (json['url'] != null) {
		data.url = json['url']?.toString();
	}
	if (json['photo800'] != null) {
		data.photo800 = json['photo800']?.toString();
	}
	if (json['image'] != null) {
		data.image = new DetailModelContentRecipeInstructionImage().fromJson(json['image']);
	}
	return data;
}

Map<String, dynamic> detailModelContentRecipeInstructionToJson(DetailModelContentRecipeInstruction entity) {
	final Map<String, dynamic> data = new Map<String, dynamic>();
	data['step'] = entity.step;
	data['text'] = entity.text;
	data['ident'] = entity.ident;
	if (entity.video != null) {
		data['video'] = entity.video.toJson();
	}
	data['url'] = entity.url;
	data['photo800'] = entity.photo800;
	if (entity.image != null) {
		data['image'] = entity.image.toJson();
	}
	return data;
}

detailModelContentRecipeInstructionVideoFromJson(DetailModelContentRecipeInstructionVideo data, Map<String, dynamic> json) {
	return data;
}

Map<String, dynamic> detailModelContentRecipeInstructionVideoToJson(DetailModelContentRecipeInstructionVideo entity) {
	final Map<String, dynamic> data = new Map<String, dynamic>();
	return data;
}

detailModelContentRecipeInstructionImageFromJson(DetailModelContentRecipeInstructionImage data, Map<String, dynamic> json) {
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

Map<String, dynamic> detailModelContentRecipeInstructionImageToJson(DetailModelContentRecipeInstructionImage entity) {
	final Map<String, dynamic> data = new Map<String, dynamic>();
	data['ident'] = entity.ident;
	data['original_width'] = entity.originalWidth;
	data['original_height'] = entity.originalHeight;
	data['max_width'] = entity.maxWidth;
	data['max_height'] = entity.maxHeight;
	data['url_pattern'] = entity.urlPattern;
	return data;
}

detailModelContentRecipeStatsFromJson(DetailModelContentRecipeStats data, Map<String, dynamic> json) {
	if (json['n_dishes'] != null) {
		data.nDishes = json['n_dishes']?.toString();
	}
	if (json['n_cooked'] != null) {
		data.nCooked = json['n_cooked']?.toString();
	}
	if (json['n_cooked_last_week'] != null) {
		data.nCookedLastWeek = json['n_cooked_last_week']?.toString();
	}
	if (json['n_comments'] != null) {
		data.nComments = json['n_comments']?.toString();
	}
	if (json['n_questions'] != null) {
		data.nQuestions = json['n_questions']?.toString();
	}
	if (json['n_question_and_answers'] != null) {
		data.nQuestionAndAnswers = json['n_question_and_answers']?.toString();
	}
	if (json['n_collects'] != null) {
		data.nCollects = json['n_collects']?.toString();
	}
	if (json['n_pv'] != null) {
		data.nPv = json['n_pv']?.toString();
	}
	if (json['n_vod_played'] != null) {
		data.nVodPlayed = json['n_vod_played']?.toString();
	}
	if (json['n_unformatted_collects'] != null) {
		data.nUnformattedCollects = json['n_unformatted_collects']?.toString();
	}
	if (json['n_unformatted_pv'] != null) {
		data.nUnformattedPv = json['n_unformatted_pv']?.toString();
	}
	if (json['n_unformatted_vod_played'] != null) {
		data.nUnformattedVodPlayed = json['n_unformatted_vod_played']?.toString();
	}
	if (json['cooked_by_me'] != null) {
		data.cookedByMe = json['cooked_by_me'];
	}
	return data;
}

Map<String, dynamic> detailModelContentRecipeStatsToJson(DetailModelContentRecipeStats entity) {
	final Map<String, dynamic> data = new Map<String, dynamic>();
	data['n_dishes'] = entity.nDishes;
	data['n_cooked'] = entity.nCooked;
	data['n_cooked_last_week'] = entity.nCookedLastWeek;
	data['n_comments'] = entity.nComments;
	data['n_questions'] = entity.nQuestions;
	data['n_question_and_answers'] = entity.nQuestionAndAnswers;
	data['n_collects'] = entity.nCollects;
	data['n_pv'] = entity.nPv;
	data['n_vod_played'] = entity.nVodPlayed;
	data['n_unformatted_collects'] = entity.nUnformattedCollects;
	data['n_unformatted_pv'] = entity.nUnformattedPv;
	data['n_unformatted_vod_played'] = entity.nUnformattedVodPlayed;
	data['cooked_by_me'] = entity.cookedByMe;
	return data;
}

detailModelContentRecipeEquipmentRelatedInfoFromJson(DetailModelContentRecipeEquipmentRelatedInfo data, Map<String, dynamic> json) {
	if (json['equipments'] != null) {
		data.equipments = new List<dynamic>();
		data.equipments.addAll(json['equipments']);
	}
	return data;
}

Map<String, dynamic> detailModelContentRecipeEquipmentRelatedInfoToJson(DetailModelContentRecipeEquipmentRelatedInfo entity) {
	final Map<String, dynamic> data = new Map<String, dynamic>();
	if (entity.equipments != null) {
		data['equipments'] =  [];
	}
	return data;
}

detailModelContentRecipePurchaseButtonFromJson(DetailModelContentRecipePurchaseButton data, Map<String, dynamic> json) {
	return data;
}

Map<String, dynamic> detailModelContentRecipePurchaseButtonToJson(DetailModelContentRecipePurchaseButton entity) {
	final Map<String, dynamic> data = new Map<String, dynamic>();
	return data;
}

detailModelContentRecipeCoverMicroVideoFromJson(DetailModelContentRecipeCoverMicroVideo data, Map<String, dynamic> json) {
	return data;
}

Map<String, dynamic> detailModelContentRecipeCoverMicroVideoToJson(DetailModelContentRecipeCoverMicroVideo entity) {
	final Map<String, dynamic> data = new Map<String, dynamic>();
	return data;
}

detailModelContentRecipeVodVideoFromJson(DetailModelContentRecipeVodVideo data, Map<String, dynamic> json) {
	return data;
}

Map<String, dynamic> detailModelContentRecipeVodVideoToJson(DetailModelContentRecipeVodVideo entity) {
	final Map<String, dynamic> data = new Map<String, dynamic>();
	return data;
}