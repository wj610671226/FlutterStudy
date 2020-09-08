import 'package:study_demo/generated/json/base/json_convert_content.dart';
import 'package:study_demo/generated/json/base/json_filed.dart';

class DetailModelEntity with JsonConvert<DetailModelEntity> {
	DetailModelContent content;
}

class DetailModelContent with JsonConvert<DetailModelContent> {
	DetailModelContentRecipe recipe;
}

class DetailModelContentRecipe with JsonConvert<DetailModelContentRecipe> {
	String id;
	String name;
	String desc;
	String photo;
	DetailModelContentRecipeImage image;
	@JSONField(name: "has_minor_avatar")
	bool hasMinorAvatar;
	@JSONField(name: "minor_author")
	DetailModelContentRecipeMinorAuthor minorAuthor;
	@JSONField(name: "is_adaptation_recipe")
	bool isAdaptationRecipe;
	DetailModelContentRecipeAdaptation adaptation;
	List<dynamic> labels;
	DetailModelContentRecipeAuthor author;
	String ident;
	String photo80;
	String photo90;
	String photo140;
	String photo280;
	String photo340;
	String photo526;
	String photo580;
	String photo640;
	String thumb;
	@JSONField(name: "create_time")
	String createTime;
	@JSONField(name: "friendly_create_time")
	String friendlyCreateTime;
	@JSONField(name: "update_time")
	String updateTime;
	String score;
	@JSONField(name: "is_exclusive")
	bool isExclusive;
	@JSONField(name: "is_fullscreen")
	bool isFullscreen;
	String url;
	String summary;
	List<DetailModelContentRecipeIngredient> ingredient;
	List<DetailModelContentRecipeInstruction> instruction;
	String tips;
	@JSONField(name: "dish_author")
	List<dynamic> dishAuthor;
	@JSONField(name: "recipe_cats")
	List<dynamic> recipeCats;
	@JSONField(name: "original_categories")
	List<String> originalCategories;
	DetailModelContentRecipeStats stats;
	@JSONField(name: "equipment_related_info")
	DetailModelContentRecipeEquipmentRelatedInfo equipmentRelatedInfo;
	@JSONField(name: "purchase_button")
	DetailModelContentRecipePurchaseButton purchaseButton;
	@JSONField(name: "purchase_url")
	String purchaseUrl;
	@JSONField(name: "video_url")
	String videoUrl;
	@JSONField(name: "video_page_url")
	String videoPageUrl;
	@JSONField(name: "cover_micro_video")
	DetailModelContentRecipeCoverMicroVideo coverMicroVideo;
	@JSONField(name: "vod_video")
	DetailModelContentRecipeVodVideo vodVideo;
}

class DetailModelContentRecipeImage with JsonConvert<DetailModelContentRecipeImage> {
	String ident;
	@JSONField(name: "original_width")
	int originalWidth;
	@JSONField(name: "original_height")
	int originalHeight;
	@JSONField(name: "max_width")
	int maxWidth;
	@JSONField(name: "max_height")
	int maxHeight;
	@JSONField(name: "url_pattern")
	String urlPattern;
}

class DetailModelContentRecipeMinorAuthor with JsonConvert<DetailModelContentRecipeMinorAuthor> {

}

class DetailModelContentRecipeAdaptation with JsonConvert<DetailModelContentRecipeAdaptation> {
	@JSONField(name: "allow_adaptation")
	bool allowAdaptation;
	@JSONField(name: "n_adaptation")
	int nAdaptation;
	@JSONField(name: "root_recipe_id")
	String rootRecipeId;
	@JSONField(name: "allow_to_change_adaptation_status")
	bool allowToChangeAdaptationStatus;
	@JSONField(name: "adaptation_history_url")
	String adaptationHistoryUrl;
}

class DetailModelContentRecipeAuthor with JsonConvert<DetailModelContentRecipeAuthor> {
	String id;
	String name;
	String photo;
	String photo60;
	String photo160;
	DetailModelContentRecipeAuthorImage image;
	String mail;
	@JSONField(name: "is_expert")
	bool isExpert;
	@JSONField(name: "is_mp")
	bool isMp;
	String url;
	@JSONField(name: "has_user_been_prime")
	bool hasUserBeenPrime;
	@JSONField(name: "is_prime_avaliable")
	bool isPrimeAvaliable;
	List<DetailModelContentRecipeAuthorLabel> labels;
	@JSONField(name: "is_social_verified")
	bool isSocialVerified;
	@JSONField(name: "social_verified_reason")
	String socialVerifiedReason;
	@JSONField(name: "is_following")
	bool isFollowing;
}

class DetailModelContentRecipeAuthorImage with JsonConvert<DetailModelContentRecipeAuthorImage> {
	String ident;
	@JSONField(name: "original_width")
	int originalWidth;
	@JSONField(name: "original_height")
	int originalHeight;
	@JSONField(name: "max_width")
	int maxWidth;
	@JSONField(name: "max_height")
	int maxHeight;
	@JSONField(name: "url_pattern")
	String urlPattern;
}

class DetailModelContentRecipeAuthorLabel with JsonConvert<DetailModelContentRecipeAuthorLabel> {
	String text;
	String url;
	String color;
	@JSONField(name: "color_v2")
	String colorV2;
	@JSONField(name: "bg_color")
	String bgColor;
	@JSONField(name: "gradient_bg_colors")
	List<String> gradientBgColors;
	int rank;
}

class DetailModelContentRecipeIngredient with JsonConvert<DetailModelContentRecipeIngredient> {
	String name;
	String amount;
	String cat;
}

class DetailModelContentRecipeInstruction with JsonConvert<DetailModelContentRecipeInstruction> {
	String step;
	String text;
	String ident;
	DetailModelContentRecipeInstructionVideo video;
	String url;
	String photo800;
	DetailModelContentRecipeInstructionImage image;
}

class DetailModelContentRecipeInstructionVideo with JsonConvert<DetailModelContentRecipeInstructionVideo> {

}

class DetailModelContentRecipeInstructionImage with JsonConvert<DetailModelContentRecipeInstructionImage> {
	String ident;
	@JSONField(name: "original_width")
	int originalWidth;
	@JSONField(name: "original_height")
	int originalHeight;
	@JSONField(name: "max_width")
	int maxWidth;
	@JSONField(name: "max_height")
	int maxHeight;
	@JSONField(name: "url_pattern")
	String urlPattern;
}

class DetailModelContentRecipeStats with JsonConvert<DetailModelContentRecipeStats> {
	@JSONField(name: "n_dishes")
	String nDishes;
	@JSONField(name: "n_cooked")
	String nCooked;
	@JSONField(name: "n_cooked_last_week")
	String nCookedLastWeek;
	@JSONField(name: "n_comments")
	String nComments;
	@JSONField(name: "n_questions")
	String nQuestions;
	@JSONField(name: "n_question_and_answers")
	String nQuestionAndAnswers;
	@JSONField(name: "n_collects")
	String nCollects;
	@JSONField(name: "n_pv")
	String nPv;
	@JSONField(name: "n_vod_played")
	String nVodPlayed;
	@JSONField(name: "n_unformatted_collects")
	String nUnformattedCollects;
	@JSONField(name: "n_unformatted_pv")
	String nUnformattedPv;
	@JSONField(name: "n_unformatted_vod_played")
	String nUnformattedVodPlayed;
	@JSONField(name: "cooked_by_me")
	bool cookedByMe;
}

class DetailModelContentRecipeEquipmentRelatedInfo with JsonConvert<DetailModelContentRecipeEquipmentRelatedInfo> {
	List<dynamic> equipments;
}

class DetailModelContentRecipePurchaseButton with JsonConvert<DetailModelContentRecipePurchaseButton> {

}

class DetailModelContentRecipeCoverMicroVideo with JsonConvert<DetailModelContentRecipeCoverMicroVideo> {

}

class DetailModelContentRecipeVodVideo with JsonConvert<DetailModelContentRecipeVodVideo> {

}
