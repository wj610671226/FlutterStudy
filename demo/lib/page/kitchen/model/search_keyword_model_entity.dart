import 'dart:convert';
import 'package:demo/generated/json/base/json_field.dart';
import 'package:demo/generated/json/search_keyword_model_entity.g.dart';

@JsonSerializable()
class SearchKeywordModelEntity {

	late List<String> keywords;
  
  SearchKeywordModelEntity();

  factory SearchKeywordModelEntity.fromJson(Map<String, dynamic> json) => $SearchKeywordModelEntityFromJson(json);

  Map<String, dynamic> toJson() => $SearchKeywordModelEntityToJson(this);

  @override
  String toString() {
    return jsonEncode(this);
  }
}