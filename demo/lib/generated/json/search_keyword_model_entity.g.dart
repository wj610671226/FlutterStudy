import 'package:demo/generated/json/base/json_convert_content.dart';
import 'package:demo/page/kitchen/model/search_keyword_model_entity.dart';

SearchKeywordModelEntity $SearchKeywordModelEntityFromJson(Map<String, dynamic> json) {
	final SearchKeywordModelEntity searchKeywordModelEntity = SearchKeywordModelEntity();
	final List<String>? keywords = jsonConvert.convertListNotNull<String>(json['keywords']);
	if (keywords != null) {
		searchKeywordModelEntity.keywords = keywords;
	}
	return searchKeywordModelEntity;
}

Map<String, dynamic> $SearchKeywordModelEntityToJson(SearchKeywordModelEntity entity) {
	final Map<String, dynamic> data = <String, dynamic>{};
	data['keywords'] =  entity.keywords;
	return data;
}