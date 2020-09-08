import 'package:flutter/material.dart';
import 'package:study_demo/page/kitchen/model/recommend_model.dart';

class CollectChangeNotifier extends ChangeNotifier {
  List<Recommendations> _collectedModels = [];
  List<Recommendations> get collectedModels  {
    return _collectedModels;
  }

  void addModel(Recommendations model) {
    if (isCollected(model)) {
      _collectedModels.remove(model);
    } else {
      _collectedModels.add(model);
    }
    notifyListeners();
  }

  void removeModel(Recommendations model) {
    if (isCollected(model)) {
      _collectedModels.remove(model);
      notifyListeners();
    }
  }

  bool isCollected(Recommendations model) {
    return _collectedModels.contains(model);
  }
}