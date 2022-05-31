import 'package:flutter/material.dart';
import 'package:demo/page/kitchen/model/recommend_model_entity.dart';

class CollectChangeNotifier extends ChangeNotifier {
  final List<RecommendModelRecommendations> _collectedModels = [];
  List<RecommendModelRecommendations> get collectedModels {
    return _collectedModels;
  }

  void addModel(RecommendModelRecommendations model) {
    if (isCollected(model)) {
      _collectedModels.remove(model);
    } else {
      _collectedModels.add(model);
    }
    notifyListeners();
  }

  void removeModel(RecommendModelRecommendations model) {
    if (isCollected(model)) {
      _collectedModels.remove(model);
      notifyListeners();
    }
  }

  bool isCollected(RecommendModelRecommendations model) {
    return _collectedModels.contains(model);
  }
}
