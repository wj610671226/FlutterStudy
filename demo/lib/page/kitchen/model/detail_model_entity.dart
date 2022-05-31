import 'dart:convert';
import 'package:demo/generated/json/base/json_field.dart';
import 'package:demo/generated/json/detail_model_entity.g.dart';

@JsonSerializable()
class DetailModelEntity {

	late DetailModelContent content;
  
  DetailModelEntity();

  factory DetailModelEntity.fromJson(Map<String, dynamic> json) => $DetailModelEntityFromJson(json);

  Map<String, dynamic> toJson() => $DetailModelEntityToJson(this);

  @override
  String toString() {
    return jsonEncode(this);
  }
}

@JsonSerializable()
class DetailModelContent {

	late DetailModelContentRecipe recipe;
  
  DetailModelContent();

  factory DetailModelContent.fromJson(Map<String, dynamic> json) => $DetailModelContentFromJson(json);

  Map<String, dynamic> toJson() => $DetailModelContentToJson(this);

  @override
  String toString() {
    return jsonEncode(this);
  }
}

@JsonSerializable()
class DetailModelContentRecipe {

	late String id;
	late String name;
	late String desc;
	late String photo;
	late DetailModelContentRecipeImage image;
	@JSONField(name: "has_minor_avatar")
	late bool hasMinorAvatar;
	@JSONField(name: "minor_author")
	late DetailModelContentRecipeMinorAuthor minorAuthor;
	@JSONField(name: "is_adaptation_recipe")
	late bool isAdaptationRecipe;
	late DetailModelContentRecipeAdaptation adaptation;
	late List<dynamic> labels;
	late DetailModelContentRecipeAuthor author;
	late String ident;
	late String photo80;
	late String photo90;
	late String photo140;
	late String photo280;
	late String photo340;
	late String photo526;
	late String photo580;
	late String photo640;
	late String thumb;
	@JSONField(name: "create_time")
	late String createTime;
	@JSONField(name: "friendly_create_time")
	late String friendlyCreateTime;
	@JSONField(name: "update_time")
	late String updateTime;
	late String score;
	@JSONField(name: "is_exclusive")
	late bool isExclusive;
	@JSONField(name: "is_fullscreen")
	late bool isFullscreen;
	late String url;
	late String summary;
	late List<DetailModelContentRecipeIngredient> ingredient;
	late List<DetailModelContentRecipeInstruction> instruction;
	late String tips;
	@JSONField(name: "dish_author")
	late List<dynamic> dishAuthor;
	@JSONField(name: "recipe_cats")
	late List<dynamic> recipeCats;
	@JSONField(name: "original_categories")
	late List<String> originalCategories;
	late DetailModelContentRecipeStats stats;
	@JSONField(name: "equipment_related_info")
	late DetailModelContentRecipeEquipmentRelatedInfo equipmentRelatedInfo;
	@JSONField(name: "purchase_button")
	late DetailModelContentRecipePurchaseButton purchaseButton;
	@JSONField(name: "purchase_url")
	late String purchaseUrl;
	@JSONField(name: "video_url")
	late String videoUrl;
	@JSONField(name: "video_page_url")
	late String videoPageUrl;
	@JSONField(name: "cover_micro_video")
	late DetailModelContentRecipeCoverMicroVideo coverMicroVideo;
	@JSONField(name: "vod_video")
	late DetailModelContentRecipeVodVideo vodVideo;
  
  DetailModelContentRecipe();

  factory DetailModelContentRecipe.fromJson(Map<String, dynamic> json) => $DetailModelContentRecipeFromJson(json);

  Map<String, dynamic> toJson() => $DetailModelContentRecipeToJson(this);

  @override
  String toString() {
    return jsonEncode(this);
  }
}

@JsonSerializable()
class DetailModelContentRecipeImage {

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
  
  DetailModelContentRecipeImage();

  factory DetailModelContentRecipeImage.fromJson(Map<String, dynamic> json) => $DetailModelContentRecipeImageFromJson(json);

  Map<String, dynamic> toJson() => $DetailModelContentRecipeImageToJson(this);

  @override
  String toString() {
    return jsonEncode(this);
  }
}

@JsonSerializable()
class DetailModelContentRecipeMinorAuthor {


  
  DetailModelContentRecipeMinorAuthor();

  factory DetailModelContentRecipeMinorAuthor.fromJson(Map<String, dynamic> json) => $DetailModelContentRecipeMinorAuthorFromJson(json);

  Map<String, dynamic> toJson() => $DetailModelContentRecipeMinorAuthorToJson(this);

  @override
  String toString() {
    return jsonEncode(this);
  }
}

@JsonSerializable()
class DetailModelContentRecipeAdaptation {

	@JSONField(name: "allow_adaptation")
	late bool allowAdaptation;
	@JSONField(name: "n_adaptation")
	late int nAdaptation;
	@JSONField(name: "root_recipe_id")
	late String rootRecipeId;
	@JSONField(name: "allow_to_change_adaptation_status")
	late bool allowToChangeAdaptationStatus;
	@JSONField(name: "adaptation_history_url")
	late String adaptationHistoryUrl;
  
  DetailModelContentRecipeAdaptation();

  factory DetailModelContentRecipeAdaptation.fromJson(Map<String, dynamic> json) => $DetailModelContentRecipeAdaptationFromJson(json);

  Map<String, dynamic> toJson() => $DetailModelContentRecipeAdaptationToJson(this);

  @override
  String toString() {
    return jsonEncode(this);
  }
}

@JsonSerializable()
class DetailModelContentRecipeAuthor {

	late String id;
	late String name;
	late String photo;
	late String photo60;
	late String photo160;
	late DetailModelContentRecipeAuthorImage image;
	late String mail;
	@JSONField(name: "is_expert")
	late bool isExpert;
	@JSONField(name: "is_mp")
	late bool isMp;
	late String url;
	@JSONField(name: "has_user_been_prime")
	late bool hasUserBeenPrime;
	@JSONField(name: "is_prime_avaliable")
	late bool isPrimeAvaliable;
	late List<DetailModelContentRecipeAuthorLabels> labels;
	@JSONField(name: "is_social_verified")
	late bool isSocialVerified;
	@JSONField(name: "social_verified_reason")
	late String socialVerifiedReason;
	@JSONField(name: "is_following")
	late bool isFollowing;
  
  DetailModelContentRecipeAuthor();

  factory DetailModelContentRecipeAuthor.fromJson(Map<String, dynamic> json) => $DetailModelContentRecipeAuthorFromJson(json);

  Map<String, dynamic> toJson() => $DetailModelContentRecipeAuthorToJson(this);

  @override
  String toString() {
    return jsonEncode(this);
  }
}

@JsonSerializable()
class DetailModelContentRecipeAuthorImage {

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
  
  DetailModelContentRecipeAuthorImage();

  factory DetailModelContentRecipeAuthorImage.fromJson(Map<String, dynamic> json) => $DetailModelContentRecipeAuthorImageFromJson(json);

  Map<String, dynamic> toJson() => $DetailModelContentRecipeAuthorImageToJson(this);

  @override
  String toString() {
    return jsonEncode(this);
  }
}

@JsonSerializable()
class DetailModelContentRecipeAuthorLabels {

	late String text;
	late String url;
	late String color;
	@JSONField(name: "color_v2")
	late String colorV2;
	@JSONField(name: "bg_color")
	late String bgColor;
	@JSONField(name: "gradient_bg_colors")
	late List<String> gradientBgColors;
	late int rank;
  
  DetailModelContentRecipeAuthorLabels();

  factory DetailModelContentRecipeAuthorLabels.fromJson(Map<String, dynamic> json) => $DetailModelContentRecipeAuthorLabelsFromJson(json);

  Map<String, dynamic> toJson() => $DetailModelContentRecipeAuthorLabelsToJson(this);

  @override
  String toString() {
    return jsonEncode(this);
  }
}

@JsonSerializable()
class DetailModelContentRecipeIngredient {

	late String name;
	late String amount;
	late String cat;
  
  DetailModelContentRecipeIngredient();

  factory DetailModelContentRecipeIngredient.fromJson(Map<String, dynamic> json) => $DetailModelContentRecipeIngredientFromJson(json);

  Map<String, dynamic> toJson() => $DetailModelContentRecipeIngredientToJson(this);

  @override
  String toString() {
    return jsonEncode(this);
  }
}

@JsonSerializable()
class DetailModelContentRecipeInstruction {

	late String step;
	late String text;
	late String ident;
	late DetailModelContentRecipeInstructionVideo video;
	late String url;
	late String photo800;
	late DetailModelContentRecipeInstructionImage image;
  
  DetailModelContentRecipeInstruction();

  factory DetailModelContentRecipeInstruction.fromJson(Map<String, dynamic> json) => $DetailModelContentRecipeInstructionFromJson(json);

  Map<String, dynamic> toJson() => $DetailModelContentRecipeInstructionToJson(this);

  @override
  String toString() {
    return jsonEncode(this);
  }
}

@JsonSerializable()
class DetailModelContentRecipeInstructionVideo {


  
  DetailModelContentRecipeInstructionVideo();

  factory DetailModelContentRecipeInstructionVideo.fromJson(Map<String, dynamic> json) => $DetailModelContentRecipeInstructionVideoFromJson(json);

  Map<String, dynamic> toJson() => $DetailModelContentRecipeInstructionVideoToJson(this);

  @override
  String toString() {
    return jsonEncode(this);
  }
}

@JsonSerializable()
class DetailModelContentRecipeInstructionImage {

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
  
  DetailModelContentRecipeInstructionImage();

  factory DetailModelContentRecipeInstructionImage.fromJson(Map<String, dynamic> json) => $DetailModelContentRecipeInstructionImageFromJson(json);

  Map<String, dynamic> toJson() => $DetailModelContentRecipeInstructionImageToJson(this);

  @override
  String toString() {
    return jsonEncode(this);
  }
}

@JsonSerializable()
class DetailModelContentRecipeStats {

	@JSONField(name: "n_dishes")
	late String nDishes;
	@JSONField(name: "n_cooked")
	late String nCooked;
	@JSONField(name: "n_cooked_last_week")
	late String nCookedLastWeek;
	@JSONField(name: "n_comments")
	late String nComments;
	@JSONField(name: "n_questions")
	late String nQuestions;
	@JSONField(name: "n_question_and_answers")
	late String nQuestionAndAnswers;
	@JSONField(name: "n_collects")
	late String nCollects;
	@JSONField(name: "n_pv")
	late String nPv;
	@JSONField(name: "n_vod_played")
	late String nVodPlayed;
	@JSONField(name: "n_unformatted_collects")
	late String nUnformattedCollects;
	@JSONField(name: "n_unformatted_pv")
	late String nUnformattedPv;
	@JSONField(name: "n_unformatted_vod_played")
	late String nUnformattedVodPlayed;
	@JSONField(name: "cooked_by_me")
	late bool cookedByMe;
  
  DetailModelContentRecipeStats();

  factory DetailModelContentRecipeStats.fromJson(Map<String, dynamic> json) => $DetailModelContentRecipeStatsFromJson(json);

  Map<String, dynamic> toJson() => $DetailModelContentRecipeStatsToJson(this);

  @override
  String toString() {
    return jsonEncode(this);
  }
}

@JsonSerializable()
class DetailModelContentRecipeEquipmentRelatedInfo {

	late List<dynamic> equipments;
  
  DetailModelContentRecipeEquipmentRelatedInfo();

  factory DetailModelContentRecipeEquipmentRelatedInfo.fromJson(Map<String, dynamic> json) => $DetailModelContentRecipeEquipmentRelatedInfoFromJson(json);

  Map<String, dynamic> toJson() => $DetailModelContentRecipeEquipmentRelatedInfoToJson(this);

  @override
  String toString() {
    return jsonEncode(this);
  }
}

@JsonSerializable()
class DetailModelContentRecipePurchaseButton {


  
  DetailModelContentRecipePurchaseButton();

  factory DetailModelContentRecipePurchaseButton.fromJson(Map<String, dynamic> json) => $DetailModelContentRecipePurchaseButtonFromJson(json);

  Map<String, dynamic> toJson() => $DetailModelContentRecipePurchaseButtonToJson(this);

  @override
  String toString() {
    return jsonEncode(this);
  }
}

@JsonSerializable()
class DetailModelContentRecipeCoverMicroVideo {


  
  DetailModelContentRecipeCoverMicroVideo();

  factory DetailModelContentRecipeCoverMicroVideo.fromJson(Map<String, dynamic> json) => $DetailModelContentRecipeCoverMicroVideoFromJson(json);

  Map<String, dynamic> toJson() => $DetailModelContentRecipeCoverMicroVideoToJson(this);

  @override
  String toString() {
    return jsonEncode(this);
  }
}

@JsonSerializable()
class DetailModelContentRecipeVodVideo {


  
  DetailModelContentRecipeVodVideo();

  factory DetailModelContentRecipeVodVideo.fromJson(Map<String, dynamic> json) => $DetailModelContentRecipeVodVideoFromJson(json);

  Map<String, dynamic> toJson() => $DetailModelContentRecipeVodVideoToJson(this);

  @override
  String toString() {
    return jsonEncode(this);
  }
}