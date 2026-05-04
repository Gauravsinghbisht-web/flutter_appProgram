import 'package:flutter/material.dart';

class LikeProvider extends ChangeNotifier {
  List<int>_likedItems = [];
  List<int> get likedItems => _likedItems;

  void toggleLike(int index) {


    if(_likedItems.contains(index)) {
      _likedItems.remove(index);
    }
    else {
      _likedItems.add(index);
    }
   
  notifyListeners();
  }
  bool isLiked(int index) {
    return _likedItems.contains(index);
  }
}