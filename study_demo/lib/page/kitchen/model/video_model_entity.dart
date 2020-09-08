import 'package:study_demo/generated/json/base/json_convert_content.dart';
import 'package:study_demo/generated/json/base/json_filed.dart';

class VideoModelEntity with JsonConvert<VideoModelEntity> {
	List<VideoModelPortal> portals;
	VideoModelContent content;
}

class VideoModelPortal with JsonConvert<VideoModelPortal> {
	String label;
	VideoModelPortalsObject object;
	VideoModelPortalsTracking tracking;
}

class VideoModelPortalsObject with JsonConvert<VideoModelPortalsObject> {
	@JSONField(name: "title_1st")
	String title1st;
	@JSONField(name: "title_2nd")
	String title2nd;
	@JSONField(name: "title_3rd")
	String title3rd;
	String url;
	VideoModelPortalsObjectImage image;
}

class VideoModelPortalsObjectImage with JsonConvert<VideoModelPortalsObjectImage> {
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

class VideoModelPortalsTracking with JsonConvert<VideoModelPortalsTracking> {
	@JSONField(name: "xcf_expose_urls")
	List<String> xcfExposeUrls;
	@JSONField(name: "xcf_click_urls")
	List<String> xcfClickUrls;
	@JSONField(name: "third_party_expose_urls")
	List<dynamic> thirdPartyExposeUrls;
	@JSONField(name: "third_party_click_urls")
	List<dynamic> thirdPartyClickUrls;
}

class VideoModelContent with JsonConvert<VideoModelContent> {
	List<VideoModelContentRecommandations> recommendations;
}

class VideoModelContentRecommandations with JsonConvert<VideoModelContentRecommandations> {
	@JSONField(name: "recommend_content")
	VideoModelContentRecommendationsRecommendContent recommendContent;
	@JSONField(name: "display_distance")
	String displayDistance;
	VideoModelContentRecommendationsTracking tracking;
	String title;
	@JSONField(name: "sensor_tracking")
	VideoModelContentRecommendationsSensorTracking sensorTracking;
}

class VideoModelContentRecommendationsRecommendContent with JsonConvert<VideoModelContentRecommendationsRecommendContent> {
	String identification;
	@JSONField(name: "title_1st")
	String title1st;
	@JSONField(name: "title_2nd")
	String title2nd;
	@JSONField(name: "title_3rd")
	String title3rd;
	@JSONField(name: "title_4th")
	String title4th;
	VideoModelContentRecommendationsRecommendContentImage image;
	String url;
	String label;
	int width;
	int height;
	VideoModelContentRecommendationsRecommendContentAuthor author;
	VideoModelContentRecommendationsRecommendContentExtra extra;
	@JSONField(name: "extra_images")
	List<dynamic> extraImages;
	@JSONField(name: "target_info")
	VideoModelContentRecommendationsRecommendContentTargetInfo targetInfo;
}

class VideoModelContentRecommendationsRecommendContentImage with JsonConvert<VideoModelContentRecommendationsRecommendContentImage> {
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

class VideoModelContentRecommendationsRecommendContentAuthor with JsonConvert<VideoModelContentRecommendationsRecommendContentAuthor> {
	String id;
	String name;
	String photo;
	String photo60;
	String photo160;
	VideoModelContentRecommendationsRecommendContentAuthorImage image;
	String mail;
	@JSONField(name: "is_expert")
	bool isExpert;
	@JSONField(name: "expert_info_str")
	String expertInfoStr;
	@JSONField(name: "is_mp")
	bool isMp;
	String url;
	@JSONField(name: "has_user_been_prime")
	bool hasUserBeenPrime;
	@JSONField(name: "is_prime_avaliable")
	bool isPrimeAvaliable;
	String desc;
	String gender;
	String birthday;
	@JSONField(name: "hometown_location")
	String hometownLocation;
	@JSONField(name: "current_location")
	String currentLocation;
	String profession;
	@JSONField(name: "create_time")
	String createTime;
	@JSONField(name: "n_follow")
	String nFollow;
	@JSONField(name: "n_followed")
	String nFollowed;
	String nequipments;
	String nrecipes;
	String ndishes;
	String ncollects;
	String nposts;
	String ncourses;
	String nbuybuybuy;
	@JSONField(name: "tp_nickname")
	dynamic tpNickname;
	@JSONField(name: "n_total_recipe_collects")
	String nTotalRecipeCollects;
	@JSONField(name: "n_total_recipe_dishes")
	String nTotalRecipeDishes;
	@JSONField(name: "n_total_dish_digges")
	String nTotalDishDigges;
	@JSONField(name: "is_following")
	bool isFollowing;
	String nfollow;
	String nfollowed;
	String nessays;
	@JSONField(name: "extra_info")
	dynamic extraInfo;
	@JSONField(name: "equipment_related_info")
	dynamic equipmentRelatedInfo;
	@JSONField(name: "is_social_verified")
	bool isSocialVerified;
	@JSONField(name: "social_verified_reason")
	String socialVerifiedReason;
}

class VideoModelContentRecommendationsRecommendContentAuthorImage with JsonConvert<VideoModelContentRecommendationsRecommendContentAuthorImage> {
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

class VideoModelContentRecommendationsRecommendContentExtra with JsonConvert<VideoModelContentRecommendationsRecommendContentExtra> {
	@JSONField(name: "n_collects")
	String nCollects;
	@JSONField(name: "is_video_recipe")
	bool isVideoRecipe;
	@JSONField(name: "extra_icon_value")
	String extraIconValue;
	@JSONField(name: "is_digged_by_me")
	bool isDiggedByMe;
	@JSONField(name: "is_collect_by_me")
	bool isCollectByMe;
	@JSONField(name: "extra_icon_type")
	int extraIconType;
}

class VideoModelContentRecommendationsRecommendContentTargetInfo with JsonConvert<VideoModelContentRecommendationsRecommendContentTargetInfo> {
	@JSONField(name: "target_id")
	String targetId;
	@JSONField(name: "target_type")
	int targetType;
}

class VideoModelContentRecommendationsTracking with JsonConvert<VideoModelContentRecommendationsTracking> {
	@JSONField(name: "xcf_click_urls")
	List<String> xcfClickUrls;
	@JSONField(name: "third_party_click_urls")
	List<dynamic> thirdPartyClickUrls;
	@JSONField(name: "xcf_expose_urls")
	List<String> xcfExposeUrls;
	@JSONField(name: "third_party_expose_urls")
	List<dynamic> thirdPartyExposeUrls;
}

class VideoModelContentRecommendationsSensorTracking with JsonConvert<VideoModelContentRecommendationsSensorTracking> {
	List<VideoModelContentRecommandationsSensorTrackingDigg> digg;
}

class VideoModelContentRecommandationsSensorTrackingDigg with JsonConvert<VideoModelContentRecommandationsSensorTrackingDigg> {
	@JSONField(name: "event_name")
	String eventName;
	VideoModelContentRecommendationsSensorTrackingDiggProperties properties;
}

class VideoModelContentRecommendationsSensorTrackingDiggProperties with JsonConvert<VideoModelContentRecommendationsSensorTrackingDiggProperties> {
	@JSONField(name: "pool_id")
	int poolId;
	@JSONField(name: "resource_id")
	int resourceId;
	@JSONField(name: "material_id")
	int materialId;
	@JSONField(name: "target_id")
	int targetId;
	@JSONField(name: "resource_type")
	int resourceType;
	@JSONField(name: "target_type")
	int targetType;
	String pos;
	@JSONField(name: "xcf_user_id")
	String xcfUserId;
	String origin;
	String section;
}
