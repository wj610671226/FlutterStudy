import 'package:demo/generated/json/base/json_convert_content.dart';
import 'package:demo/page/kitchen/model/detail_model_entity.dart';

DetailModelEntity $DetailModelEntityFromJson(Map<String, dynamic> json) {
	final DetailModelEntity detailModelEntity = DetailModelEntity();
	final DetailModelContent? content = jsonConvert.convert<DetailModelContent>(json['content']);
	if (content != null) {
		detailModelEntity.content = content;
	}
	return detailModelEntity;
}

Map<String, dynamic> $DetailModelEntityToJson(DetailModelEntity entity) {
	final Map<String, dynamic> data = <String, dynamic>{};
	data['content'] = entity.content.toJson();
	return data;
}

DetailModelContent $DetailModelContentFromJson(Map<String, dynamic> json) {
	final DetailModelContent detailModelContent = DetailModelContent();
	final DetailModelContentRecipe? recipe = jsonConvert.convert<DetailModelContentRecipe>(json['recipe']);
	if (recipe != null) {
		detailModelContent.recipe = recipe;
	}
	return detailModelContent;
}

Map<String, dynamic> $DetailModelContentToJson(DetailModelContent entity) {
	final Map<String, dynamic> data = <String, dynamic>{};
	data['recipe'] = entity.recipe.toJson();
	return data;
}

DetailModelContentRecipe $DetailModelContentRecipeFromJson(Map<String, dynamic> json) {
	final DetailModelContentRecipe detailModelContentRecipe = DetailModelContentRecipe();
	final String? id = jsonConvert.convert<String>(json['id']);
	if (id != null) {
		detailModelContentRecipe.id = id;
	}
	final String? name = jsonConvert.convert<String>(json['name']);
	if (name != null) {
		detailModelContentRecipe.name = name;
	}
	final String? desc = jsonConvert.convert<String>(json['desc']);
	if (desc != null) {
		detailModelContentRecipe.desc = desc;
	}
	final String? photo = jsonConvert.convert<String>(json['photo']);
	if (photo != null) {
		detailModelContentRecipe.photo = photo;
	}
	final DetailModelContentRecipeImage? image = jsonConvert.convert<DetailModelContentRecipeImage>(json['image']);
	if (image != null) {
		detailModelContentRecipe.image = image;
	}
	final bool? hasMinorAvatar = jsonConvert.convert<bool>(json['has_minor_avatar']);
	if (hasMinorAvatar != null) {
		detailModelContentRecipe.hasMinorAvatar = hasMinorAvatar;
	}
	final DetailModelContentRecipeMinorAuthor? minorAuthor = jsonConvert.convert<DetailModelContentRecipeMinorAuthor>(json['minor_author']);
	if (minorAuthor != null) {
		detailModelContentRecipe.minorAuthor = minorAuthor;
	}
	final bool? isAdaptationRecipe = jsonConvert.convert<bool>(json['is_adaptation_recipe']);
	if (isAdaptationRecipe != null) {
		detailModelContentRecipe.isAdaptationRecipe = isAdaptationRecipe;
	}
	final DetailModelContentRecipeAdaptation? adaptation = jsonConvert.convert<DetailModelContentRecipeAdaptation>(json['adaptation']);
	if (adaptation != null) {
		detailModelContentRecipe.adaptation = adaptation;
	}
	final List<dynamic>? labels = jsonConvert.convertListNotNull<dynamic>(json['labels']);
	if (labels != null) {
		detailModelContentRecipe.labels = labels;
	}
	final DetailModelContentRecipeAuthor? author = jsonConvert.convert<DetailModelContentRecipeAuthor>(json['author']);
	if (author != null) {
		detailModelContentRecipe.author = author;
	}
	final String? ident = jsonConvert.convert<String>(json['ident']);
	if (ident != null) {
		detailModelContentRecipe.ident = ident;
	}
	final String? photo80 = jsonConvert.convert<String>(json['photo80']);
	if (photo80 != null) {
		detailModelContentRecipe.photo80 = photo80;
	}
	final String? photo90 = jsonConvert.convert<String>(json['photo90']);
	if (photo90 != null) {
		detailModelContentRecipe.photo90 = photo90;
	}
	final String? photo140 = jsonConvert.convert<String>(json['photo140']);
	if (photo140 != null) {
		detailModelContentRecipe.photo140 = photo140;
	}
	final String? photo280 = jsonConvert.convert<String>(json['photo280']);
	if (photo280 != null) {
		detailModelContentRecipe.photo280 = photo280;
	}
	final String? photo340 = jsonConvert.convert<String>(json['photo340']);
	if (photo340 != null) {
		detailModelContentRecipe.photo340 = photo340;
	}
	final String? photo526 = jsonConvert.convert<String>(json['photo526']);
	if (photo526 != null) {
		detailModelContentRecipe.photo526 = photo526;
	}
	final String? photo580 = jsonConvert.convert<String>(json['photo580']);
	if (photo580 != null) {
		detailModelContentRecipe.photo580 = photo580;
	}
	final String? photo640 = jsonConvert.convert<String>(json['photo640']);
	if (photo640 != null) {
		detailModelContentRecipe.photo640 = photo640;
	}
	final String? thumb = jsonConvert.convert<String>(json['thumb']);
	if (thumb != null) {
		detailModelContentRecipe.thumb = thumb;
	}
	final String? createTime = jsonConvert.convert<String>(json['create_time']);
	if (createTime != null) {
		detailModelContentRecipe.createTime = createTime;
	}
	final String? friendlyCreateTime = jsonConvert.convert<String>(json['friendly_create_time']);
	if (friendlyCreateTime != null) {
		detailModelContentRecipe.friendlyCreateTime = friendlyCreateTime;
	}
	final String? updateTime = jsonConvert.convert<String>(json['update_time']);
	if (updateTime != null) {
		detailModelContentRecipe.updateTime = updateTime;
	}
	final String? score = jsonConvert.convert<String>(json['score']);
	if (score != null) {
		detailModelContentRecipe.score = score;
	}
	final bool? isExclusive = jsonConvert.convert<bool>(json['is_exclusive']);
	if (isExclusive != null) {
		detailModelContentRecipe.isExclusive = isExclusive;
	}
	final bool? isFullscreen = jsonConvert.convert<bool>(json['is_fullscreen']);
	if (isFullscreen != null) {
		detailModelContentRecipe.isFullscreen = isFullscreen;
	}
	final String? url = jsonConvert.convert<String>(json['url']);
	if (url != null) {
		detailModelContentRecipe.url = url;
	}
	final String? summary = jsonConvert.convert<String>(json['summary']);
	if (summary != null) {
		detailModelContentRecipe.summary = summary;
	}
	final List<DetailModelContentRecipeIngredient>? ingredient = jsonConvert.convertListNotNull<DetailModelContentRecipeIngredient>(json['ingredient']);
	if (ingredient != null) {
		detailModelContentRecipe.ingredient = ingredient;
	}
	final List<DetailModelContentRecipeInstruction>? instruction = jsonConvert.convertListNotNull<DetailModelContentRecipeInstruction>(json['instruction']);
	if (instruction != null) {
		detailModelContentRecipe.instruction = instruction;
	}
	final String? tips = jsonConvert.convert<String>(json['tips']);
	if (tips != null) {
		detailModelContentRecipe.tips = tips;
	}
	final List<dynamic>? dishAuthor = jsonConvert.convertListNotNull<dynamic>(json['dish_author']);
	if (dishAuthor != null) {
		detailModelContentRecipe.dishAuthor = dishAuthor;
	}
	final List<dynamic>? recipeCats = jsonConvert.convertListNotNull<dynamic>(json['recipe_cats']);
	if (recipeCats != null) {
		detailModelContentRecipe.recipeCats = recipeCats;
	}
	final List<String>? originalCategories = jsonConvert.convertListNotNull<String>(json['original_categories']);
	if (originalCategories != null) {
		detailModelContentRecipe.originalCategories = originalCategories;
	}
	final DetailModelContentRecipeStats? stats = jsonConvert.convert<DetailModelContentRecipeStats>(json['stats']);
	if (stats != null) {
		detailModelContentRecipe.stats = stats;
	}
	final DetailModelContentRecipeEquipmentRelatedInfo? equipmentRelatedInfo = jsonConvert.convert<DetailModelContentRecipeEquipmentRelatedInfo>(json['equipment_related_info']);
	if (equipmentRelatedInfo != null) {
		detailModelContentRecipe.equipmentRelatedInfo = equipmentRelatedInfo;
	}
	final DetailModelContentRecipePurchaseButton? purchaseButton = jsonConvert.convert<DetailModelContentRecipePurchaseButton>(json['purchase_button']);
	if (purchaseButton != null) {
		detailModelContentRecipe.purchaseButton = purchaseButton;
	}
	final String? purchaseUrl = jsonConvert.convert<String>(json['purchase_url']);
	if (purchaseUrl != null) {
		detailModelContentRecipe.purchaseUrl = purchaseUrl;
	}
	final String? videoUrl = jsonConvert.convert<String>(json['video_url']);
	if (videoUrl != null) {
		detailModelContentRecipe.videoUrl = videoUrl;
	}
	final String? videoPageUrl = jsonConvert.convert<String>(json['video_page_url']);
	if (videoPageUrl != null) {
		detailModelContentRecipe.videoPageUrl = videoPageUrl;
	}
	final DetailModelContentRecipeCoverMicroVideo? coverMicroVideo = jsonConvert.convert<DetailModelContentRecipeCoverMicroVideo>(json['cover_micro_video']);
	if (coverMicroVideo != null) {
		detailModelContentRecipe.coverMicroVideo = coverMicroVideo;
	}
	final DetailModelContentRecipeVodVideo? vodVideo = jsonConvert.convert<DetailModelContentRecipeVodVideo>(json['vod_video']);
	if (vodVideo != null) {
		detailModelContentRecipe.vodVideo = vodVideo;
	}
	return detailModelContentRecipe;
}

Map<String, dynamic> $DetailModelContentRecipeToJson(DetailModelContentRecipe entity) {
	final Map<String, dynamic> data = <String, dynamic>{};
	data['id'] = entity.id;
	data['name'] = entity.name;
	data['desc'] = entity.desc;
	data['photo'] = entity.photo;
	data['image'] = entity.image.toJson();
	data['has_minor_avatar'] = entity.hasMinorAvatar;
	data['minor_author'] = entity.minorAuthor.toJson();
	data['is_adaptation_recipe'] = entity.isAdaptationRecipe;
	data['adaptation'] = entity.adaptation.toJson();
	data['labels'] =  entity.labels;
	data['author'] = entity.author.toJson();
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
	data['ingredient'] =  entity.ingredient.map((v) => v.toJson()).toList();
	data['instruction'] =  entity.instruction.map((v) => v.toJson()).toList();
	data['tips'] = entity.tips;
	data['dish_author'] =  entity.dishAuthor;
	data['recipe_cats'] =  entity.recipeCats;
	data['original_categories'] =  entity.originalCategories;
	data['stats'] = entity.stats.toJson();
	data['equipment_related_info'] = entity.equipmentRelatedInfo.toJson();
	data['purchase_button'] = entity.purchaseButton.toJson();
	data['purchase_url'] = entity.purchaseUrl;
	data['video_url'] = entity.videoUrl;
	data['video_page_url'] = entity.videoPageUrl;
	data['cover_micro_video'] = entity.coverMicroVideo.toJson();
	data['vod_video'] = entity.vodVideo.toJson();
	return data;
}

DetailModelContentRecipeImage $DetailModelContentRecipeImageFromJson(Map<String, dynamic> json) {
	final DetailModelContentRecipeImage detailModelContentRecipeImage = DetailModelContentRecipeImage();
	final String? ident = jsonConvert.convert<String>(json['ident']);
	if (ident != null) {
		detailModelContentRecipeImage.ident = ident;
	}
	final int? originalWidth = jsonConvert.convert<int>(json['original_width']);
	if (originalWidth != null) {
		detailModelContentRecipeImage.originalWidth = originalWidth;
	}
	final int? originalHeight = jsonConvert.convert<int>(json['original_height']);
	if (originalHeight != null) {
		detailModelContentRecipeImage.originalHeight = originalHeight;
	}
	final int? maxWidth = jsonConvert.convert<int>(json['max_width']);
	if (maxWidth != null) {
		detailModelContentRecipeImage.maxWidth = maxWidth;
	}
	final int? maxHeight = jsonConvert.convert<int>(json['max_height']);
	if (maxHeight != null) {
		detailModelContentRecipeImage.maxHeight = maxHeight;
	}
	final String? urlPattern = jsonConvert.convert<String>(json['url_pattern']);
	if (urlPattern != null) {
		detailModelContentRecipeImage.urlPattern = urlPattern;
	}
	return detailModelContentRecipeImage;
}

Map<String, dynamic> $DetailModelContentRecipeImageToJson(DetailModelContentRecipeImage entity) {
	final Map<String, dynamic> data = <String, dynamic>{};
	data['ident'] = entity.ident;
	data['original_width'] = entity.originalWidth;
	data['original_height'] = entity.originalHeight;
	data['max_width'] = entity.maxWidth;
	data['max_height'] = entity.maxHeight;
	data['url_pattern'] = entity.urlPattern;
	return data;
}

DetailModelContentRecipeMinorAuthor $DetailModelContentRecipeMinorAuthorFromJson(Map<String, dynamic> json) {
	final DetailModelContentRecipeMinorAuthor detailModelContentRecipeMinorAuthor = DetailModelContentRecipeMinorAuthor();
	return detailModelContentRecipeMinorAuthor;
}

Map<String, dynamic> $DetailModelContentRecipeMinorAuthorToJson(DetailModelContentRecipeMinorAuthor entity) {
	final Map<String, dynamic> data = <String, dynamic>{};
	return data;
}

DetailModelContentRecipeAdaptation $DetailModelContentRecipeAdaptationFromJson(Map<String, dynamic> json) {
	final DetailModelContentRecipeAdaptation detailModelContentRecipeAdaptation = DetailModelContentRecipeAdaptation();
	final bool? allowAdaptation = jsonConvert.convert<bool>(json['allow_adaptation']);
	if (allowAdaptation != null) {
		detailModelContentRecipeAdaptation.allowAdaptation = allowAdaptation;
	}
	final int? nAdaptation = jsonConvert.convert<int>(json['n_adaptation']);
	if (nAdaptation != null) {
		detailModelContentRecipeAdaptation.nAdaptation = nAdaptation;
	}
	final String? rootRecipeId = jsonConvert.convert<String>(json['root_recipe_id']);
	if (rootRecipeId != null) {
		detailModelContentRecipeAdaptation.rootRecipeId = rootRecipeId;
	}
	final bool? allowToChangeAdaptationStatus = jsonConvert.convert<bool>(json['allow_to_change_adaptation_status']);
	if (allowToChangeAdaptationStatus != null) {
		detailModelContentRecipeAdaptation.allowToChangeAdaptationStatus = allowToChangeAdaptationStatus;
	}
	final String? adaptationHistoryUrl = jsonConvert.convert<String>(json['adaptation_history_url']);
	if (adaptationHistoryUrl != null) {
		detailModelContentRecipeAdaptation.adaptationHistoryUrl = adaptationHistoryUrl;
	}
	return detailModelContentRecipeAdaptation;
}

Map<String, dynamic> $DetailModelContentRecipeAdaptationToJson(DetailModelContentRecipeAdaptation entity) {
	final Map<String, dynamic> data = <String, dynamic>{};
	data['allow_adaptation'] = entity.allowAdaptation;
	data['n_adaptation'] = entity.nAdaptation;
	data['root_recipe_id'] = entity.rootRecipeId;
	data['allow_to_change_adaptation_status'] = entity.allowToChangeAdaptationStatus;
	data['adaptation_history_url'] = entity.adaptationHistoryUrl;
	return data;
}

DetailModelContentRecipeAuthor $DetailModelContentRecipeAuthorFromJson(Map<String, dynamic> json) {
	final DetailModelContentRecipeAuthor detailModelContentRecipeAuthor = DetailModelContentRecipeAuthor();
	final String? id = jsonConvert.convert<String>(json['id']);
	if (id != null) {
		detailModelContentRecipeAuthor.id = id;
	}
	final String? name = jsonConvert.convert<String>(json['name']);
	if (name != null) {
		detailModelContentRecipeAuthor.name = name;
	}
	final String? photo = jsonConvert.convert<String>(json['photo']);
	if (photo != null) {
		detailModelContentRecipeAuthor.photo = photo;
	}
	final String? photo60 = jsonConvert.convert<String>(json['photo60']);
	if (photo60 != null) {
		detailModelContentRecipeAuthor.photo60 = photo60;
	}
	final String? photo160 = jsonConvert.convert<String>(json['photo160']);
	if (photo160 != null) {
		detailModelContentRecipeAuthor.photo160 = photo160;
	}
	final DetailModelContentRecipeAuthorImage? image = jsonConvert.convert<DetailModelContentRecipeAuthorImage>(json['image']);
	if (image != null) {
		detailModelContentRecipeAuthor.image = image;
	}
	final String? mail = jsonConvert.convert<String>(json['mail']);
	if (mail != null) {
		detailModelContentRecipeAuthor.mail = mail;
	}
	final bool? isExpert = jsonConvert.convert<bool>(json['is_expert']);
	if (isExpert != null) {
		detailModelContentRecipeAuthor.isExpert = isExpert;
	}
	final bool? isMp = jsonConvert.convert<bool>(json['is_mp']);
	if (isMp != null) {
		detailModelContentRecipeAuthor.isMp = isMp;
	}
	final String? url = jsonConvert.convert<String>(json['url']);
	if (url != null) {
		detailModelContentRecipeAuthor.url = url;
	}
	final bool? hasUserBeenPrime = jsonConvert.convert<bool>(json['has_user_been_prime']);
	if (hasUserBeenPrime != null) {
		detailModelContentRecipeAuthor.hasUserBeenPrime = hasUserBeenPrime;
	}
	final bool? isPrimeAvaliable = jsonConvert.convert<bool>(json['is_prime_avaliable']);
	if (isPrimeAvaliable != null) {
		detailModelContentRecipeAuthor.isPrimeAvaliable = isPrimeAvaliable;
	}
	final List<DetailModelContentRecipeAuthorLabels>? labels = jsonConvert.convertListNotNull<DetailModelContentRecipeAuthorLabels>(json['labels']);
	if (labels != null) {
		detailModelContentRecipeAuthor.labels = labels;
	}
	final bool? isSocialVerified = jsonConvert.convert<bool>(json['is_social_verified']);
	if (isSocialVerified != null) {
		detailModelContentRecipeAuthor.isSocialVerified = isSocialVerified;
	}
	final String? socialVerifiedReason = jsonConvert.convert<String>(json['social_verified_reason']);
	if (socialVerifiedReason != null) {
		detailModelContentRecipeAuthor.socialVerifiedReason = socialVerifiedReason;
	}
	final bool? isFollowing = jsonConvert.convert<bool>(json['is_following']);
	if (isFollowing != null) {
		detailModelContentRecipeAuthor.isFollowing = isFollowing;
	}
	return detailModelContentRecipeAuthor;
}

Map<String, dynamic> $DetailModelContentRecipeAuthorToJson(DetailModelContentRecipeAuthor entity) {
	final Map<String, dynamic> data = <String, dynamic>{};
	data['id'] = entity.id;
	data['name'] = entity.name;
	data['photo'] = entity.photo;
	data['photo60'] = entity.photo60;
	data['photo160'] = entity.photo160;
	data['image'] = entity.image.toJson();
	data['mail'] = entity.mail;
	data['is_expert'] = entity.isExpert;
	data['is_mp'] = entity.isMp;
	data['url'] = entity.url;
	data['has_user_been_prime'] = entity.hasUserBeenPrime;
	data['is_prime_avaliable'] = entity.isPrimeAvaliable;
	data['labels'] =  entity.labels.map((v) => v.toJson()).toList();
	data['is_social_verified'] = entity.isSocialVerified;
	data['social_verified_reason'] = entity.socialVerifiedReason;
	data['is_following'] = entity.isFollowing;
	return data;
}

DetailModelContentRecipeAuthorImage $DetailModelContentRecipeAuthorImageFromJson(Map<String, dynamic> json) {
	final DetailModelContentRecipeAuthorImage detailModelContentRecipeAuthorImage = DetailModelContentRecipeAuthorImage();
	final String? ident = jsonConvert.convert<String>(json['ident']);
	if (ident != null) {
		detailModelContentRecipeAuthorImage.ident = ident;
	}
	final int? originalWidth = jsonConvert.convert<int>(json['original_width']);
	if (originalWidth != null) {
		detailModelContentRecipeAuthorImage.originalWidth = originalWidth;
	}
	final int? originalHeight = jsonConvert.convert<int>(json['original_height']);
	if (originalHeight != null) {
		detailModelContentRecipeAuthorImage.originalHeight = originalHeight;
	}
	final int? maxWidth = jsonConvert.convert<int>(json['max_width']);
	if (maxWidth != null) {
		detailModelContentRecipeAuthorImage.maxWidth = maxWidth;
	}
	final int? maxHeight = jsonConvert.convert<int>(json['max_height']);
	if (maxHeight != null) {
		detailModelContentRecipeAuthorImage.maxHeight = maxHeight;
	}
	final String? urlPattern = jsonConvert.convert<String>(json['url_pattern']);
	if (urlPattern != null) {
		detailModelContentRecipeAuthorImage.urlPattern = urlPattern;
	}
	return detailModelContentRecipeAuthorImage;
}

Map<String, dynamic> $DetailModelContentRecipeAuthorImageToJson(DetailModelContentRecipeAuthorImage entity) {
	final Map<String, dynamic> data = <String, dynamic>{};
	data['ident'] = entity.ident;
	data['original_width'] = entity.originalWidth;
	data['original_height'] = entity.originalHeight;
	data['max_width'] = entity.maxWidth;
	data['max_height'] = entity.maxHeight;
	data['url_pattern'] = entity.urlPattern;
	return data;
}

DetailModelContentRecipeAuthorLabels $DetailModelContentRecipeAuthorLabelsFromJson(Map<String, dynamic> json) {
	final DetailModelContentRecipeAuthorLabels detailModelContentRecipeAuthorLabels = DetailModelContentRecipeAuthorLabels();
	final String? text = jsonConvert.convert<String>(json['text']);
	if (text != null) {
		detailModelContentRecipeAuthorLabels.text = text;
	}
	final String? url = jsonConvert.convert<String>(json['url']);
	if (url != null) {
		detailModelContentRecipeAuthorLabels.url = url;
	}
	final String? color = jsonConvert.convert<String>(json['color']);
	if (color != null) {
		detailModelContentRecipeAuthorLabels.color = color;
	}
	final String? colorV2 = jsonConvert.convert<String>(json['color_v2']);
	if (colorV2 != null) {
		detailModelContentRecipeAuthorLabels.colorV2 = colorV2;
	}
	final String? bgColor = jsonConvert.convert<String>(json['bg_color']);
	if (bgColor != null) {
		detailModelContentRecipeAuthorLabels.bgColor = bgColor;
	}
	final List<String>? gradientBgColors = jsonConvert.convertListNotNull<String>(json['gradient_bg_colors']);
	if (gradientBgColors != null) {
		detailModelContentRecipeAuthorLabels.gradientBgColors = gradientBgColors;
	}
	final int? rank = jsonConvert.convert<int>(json['rank']);
	if (rank != null) {
		detailModelContentRecipeAuthorLabels.rank = rank;
	}
	return detailModelContentRecipeAuthorLabels;
}

Map<String, dynamic> $DetailModelContentRecipeAuthorLabelsToJson(DetailModelContentRecipeAuthorLabels entity) {
	final Map<String, dynamic> data = <String, dynamic>{};
	data['text'] = entity.text;
	data['url'] = entity.url;
	data['color'] = entity.color;
	data['color_v2'] = entity.colorV2;
	data['bg_color'] = entity.bgColor;
	data['gradient_bg_colors'] =  entity.gradientBgColors;
	data['rank'] = entity.rank;
	return data;
}

DetailModelContentRecipeIngredient $DetailModelContentRecipeIngredientFromJson(Map<String, dynamic> json) {
	final DetailModelContentRecipeIngredient detailModelContentRecipeIngredient = DetailModelContentRecipeIngredient();
	final String? name = jsonConvert.convert<String>(json['name']);
	if (name != null) {
		detailModelContentRecipeIngredient.name = name;
	}
	final String? amount = jsonConvert.convert<String>(json['amount']);
	if (amount != null) {
		detailModelContentRecipeIngredient.amount = amount;
	}
	final String? cat = jsonConvert.convert<String>(json['cat']);
	if (cat != null) {
		detailModelContentRecipeIngredient.cat = cat;
	}
	return detailModelContentRecipeIngredient;
}

Map<String, dynamic> $DetailModelContentRecipeIngredientToJson(DetailModelContentRecipeIngredient entity) {
	final Map<String, dynamic> data = <String, dynamic>{};
	data['name'] = entity.name;
	data['amount'] = entity.amount;
	data['cat'] = entity.cat;
	return data;
}

DetailModelContentRecipeInstruction $DetailModelContentRecipeInstructionFromJson(Map<String, dynamic> json) {
	final DetailModelContentRecipeInstruction detailModelContentRecipeInstruction = DetailModelContentRecipeInstruction();
	final String? step = jsonConvert.convert<String>(json['step']);
	if (step != null) {
		detailModelContentRecipeInstruction.step = step;
	}
	final String? text = jsonConvert.convert<String>(json['text']);
	if (text != null) {
		detailModelContentRecipeInstruction.text = text;
	}
	final String? ident = jsonConvert.convert<String>(json['ident']);
	if (ident != null) {
		detailModelContentRecipeInstruction.ident = ident;
	}
	final DetailModelContentRecipeInstructionVideo? video = jsonConvert.convert<DetailModelContentRecipeInstructionVideo>(json['video']);
	if (video != null) {
		detailModelContentRecipeInstruction.video = video;
	}
	final String? url = jsonConvert.convert<String>(json['url']);
	if (url != null) {
		detailModelContentRecipeInstruction.url = url;
	}
	final String? photo800 = jsonConvert.convert<String>(json['photo800']);
	if (photo800 != null) {
		detailModelContentRecipeInstruction.photo800 = photo800;
	}
	final DetailModelContentRecipeInstructionImage? image = jsonConvert.convert<DetailModelContentRecipeInstructionImage>(json['image']);
	if (image != null) {
		detailModelContentRecipeInstruction.image = image;
	}
	return detailModelContentRecipeInstruction;
}

Map<String, dynamic> $DetailModelContentRecipeInstructionToJson(DetailModelContentRecipeInstruction entity) {
	final Map<String, dynamic> data = <String, dynamic>{};
	data['step'] = entity.step;
	data['text'] = entity.text;
	data['ident'] = entity.ident;
	data['video'] = entity.video.toJson();
	data['url'] = entity.url;
	data['photo800'] = entity.photo800;
	data['image'] = entity.image.toJson();
	return data;
}

DetailModelContentRecipeInstructionVideo $DetailModelContentRecipeInstructionVideoFromJson(Map<String, dynamic> json) {
	final DetailModelContentRecipeInstructionVideo detailModelContentRecipeInstructionVideo = DetailModelContentRecipeInstructionVideo();
	return detailModelContentRecipeInstructionVideo;
}

Map<String, dynamic> $DetailModelContentRecipeInstructionVideoToJson(DetailModelContentRecipeInstructionVideo entity) {
	final Map<String, dynamic> data = <String, dynamic>{};
	return data;
}

DetailModelContentRecipeInstructionImage $DetailModelContentRecipeInstructionImageFromJson(Map<String, dynamic> json) {
	final DetailModelContentRecipeInstructionImage detailModelContentRecipeInstructionImage = DetailModelContentRecipeInstructionImage();
	final String? ident = jsonConvert.convert<String>(json['ident']);
	if (ident != null) {
		detailModelContentRecipeInstructionImage.ident = ident;
	}
	final int? originalWidth = jsonConvert.convert<int>(json['original_width']);
	if (originalWidth != null) {
		detailModelContentRecipeInstructionImage.originalWidth = originalWidth;
	}
	final int? originalHeight = jsonConvert.convert<int>(json['original_height']);
	if (originalHeight != null) {
		detailModelContentRecipeInstructionImage.originalHeight = originalHeight;
	}
	final int? maxWidth = jsonConvert.convert<int>(json['max_width']);
	if (maxWidth != null) {
		detailModelContentRecipeInstructionImage.maxWidth = maxWidth;
	}
	final int? maxHeight = jsonConvert.convert<int>(json['max_height']);
	if (maxHeight != null) {
		detailModelContentRecipeInstructionImage.maxHeight = maxHeight;
	}
	final String? urlPattern = jsonConvert.convert<String>(json['url_pattern']);
	if (urlPattern != null) {
		detailModelContentRecipeInstructionImage.urlPattern = urlPattern;
	}
	return detailModelContentRecipeInstructionImage;
}

Map<String, dynamic> $DetailModelContentRecipeInstructionImageToJson(DetailModelContentRecipeInstructionImage entity) {
	final Map<String, dynamic> data = <String, dynamic>{};
	data['ident'] = entity.ident;
	data['original_width'] = entity.originalWidth;
	data['original_height'] = entity.originalHeight;
	data['max_width'] = entity.maxWidth;
	data['max_height'] = entity.maxHeight;
	data['url_pattern'] = entity.urlPattern;
	return data;
}

DetailModelContentRecipeStats $DetailModelContentRecipeStatsFromJson(Map<String, dynamic> json) {
	final DetailModelContentRecipeStats detailModelContentRecipeStats = DetailModelContentRecipeStats();
	final String? nDishes = jsonConvert.convert<String>(json['n_dishes']);
	if (nDishes != null) {
		detailModelContentRecipeStats.nDishes = nDishes;
	}
	final String? nCooked = jsonConvert.convert<String>(json['n_cooked']);
	if (nCooked != null) {
		detailModelContentRecipeStats.nCooked = nCooked;
	}
	final String? nCookedLastWeek = jsonConvert.convert<String>(json['n_cooked_last_week']);
	if (nCookedLastWeek != null) {
		detailModelContentRecipeStats.nCookedLastWeek = nCookedLastWeek;
	}
	final String? nComments = jsonConvert.convert<String>(json['n_comments']);
	if (nComments != null) {
		detailModelContentRecipeStats.nComments = nComments;
	}
	final String? nQuestions = jsonConvert.convert<String>(json['n_questions']);
	if (nQuestions != null) {
		detailModelContentRecipeStats.nQuestions = nQuestions;
	}
	final String? nQuestionAndAnswers = jsonConvert.convert<String>(json['n_question_and_answers']);
	if (nQuestionAndAnswers != null) {
		detailModelContentRecipeStats.nQuestionAndAnswers = nQuestionAndAnswers;
	}
	final String? nCollects = jsonConvert.convert<String>(json['n_collects']);
	if (nCollects != null) {
		detailModelContentRecipeStats.nCollects = nCollects;
	}
	final String? nPv = jsonConvert.convert<String>(json['n_pv']);
	if (nPv != null) {
		detailModelContentRecipeStats.nPv = nPv;
	}
	final String? nVodPlayed = jsonConvert.convert<String>(json['n_vod_played']);
	if (nVodPlayed != null) {
		detailModelContentRecipeStats.nVodPlayed = nVodPlayed;
	}
	final String? nUnformattedCollects = jsonConvert.convert<String>(json['n_unformatted_collects']);
	if (nUnformattedCollects != null) {
		detailModelContentRecipeStats.nUnformattedCollects = nUnformattedCollects;
	}
	final String? nUnformattedPv = jsonConvert.convert<String>(json['n_unformatted_pv']);
	if (nUnformattedPv != null) {
		detailModelContentRecipeStats.nUnformattedPv = nUnformattedPv;
	}
	final String? nUnformattedVodPlayed = jsonConvert.convert<String>(json['n_unformatted_vod_played']);
	if (nUnformattedVodPlayed != null) {
		detailModelContentRecipeStats.nUnformattedVodPlayed = nUnformattedVodPlayed;
	}
	final bool? cookedByMe = jsonConvert.convert<bool>(json['cooked_by_me']);
	if (cookedByMe != null) {
		detailModelContentRecipeStats.cookedByMe = cookedByMe;
	}
	return detailModelContentRecipeStats;
}

Map<String, dynamic> $DetailModelContentRecipeStatsToJson(DetailModelContentRecipeStats entity) {
	final Map<String, dynamic> data = <String, dynamic>{};
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

DetailModelContentRecipeEquipmentRelatedInfo $DetailModelContentRecipeEquipmentRelatedInfoFromJson(Map<String, dynamic> json) {
	final DetailModelContentRecipeEquipmentRelatedInfo detailModelContentRecipeEquipmentRelatedInfo = DetailModelContentRecipeEquipmentRelatedInfo();
	final List<dynamic>? equipments = jsonConvert.convertListNotNull<dynamic>(json['equipments']);
	if (equipments != null) {
		detailModelContentRecipeEquipmentRelatedInfo.equipments = equipments;
	}
	return detailModelContentRecipeEquipmentRelatedInfo;
}

Map<String, dynamic> $DetailModelContentRecipeEquipmentRelatedInfoToJson(DetailModelContentRecipeEquipmentRelatedInfo entity) {
	final Map<String, dynamic> data = <String, dynamic>{};
	data['equipments'] =  entity.equipments;
	return data;
}

DetailModelContentRecipePurchaseButton $DetailModelContentRecipePurchaseButtonFromJson(Map<String, dynamic> json) {
	final DetailModelContentRecipePurchaseButton detailModelContentRecipePurchaseButton = DetailModelContentRecipePurchaseButton();
	return detailModelContentRecipePurchaseButton;
}

Map<String, dynamic> $DetailModelContentRecipePurchaseButtonToJson(DetailModelContentRecipePurchaseButton entity) {
	final Map<String, dynamic> data = <String, dynamic>{};
	return data;
}

DetailModelContentRecipeCoverMicroVideo $DetailModelContentRecipeCoverMicroVideoFromJson(Map<String, dynamic> json) {
	final DetailModelContentRecipeCoverMicroVideo detailModelContentRecipeCoverMicroVideo = DetailModelContentRecipeCoverMicroVideo();
	return detailModelContentRecipeCoverMicroVideo;
}

Map<String, dynamic> $DetailModelContentRecipeCoverMicroVideoToJson(DetailModelContentRecipeCoverMicroVideo entity) {
	final Map<String, dynamic> data = <String, dynamic>{};
	return data;
}

DetailModelContentRecipeVodVideo $DetailModelContentRecipeVodVideoFromJson(Map<String, dynamic> json) {
	final DetailModelContentRecipeVodVideo detailModelContentRecipeVodVideo = DetailModelContentRecipeVodVideo();
	return detailModelContentRecipeVodVideo;
}

Map<String, dynamic> $DetailModelContentRecipeVodVideoToJson(DetailModelContentRecipeVodVideo entity) {
	final Map<String, dynamic> data = <String, dynamic>{};
	return data;
}