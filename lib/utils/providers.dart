import 'package:flutter/material.dart';

/// This is used for none bottom tab screens to get
/// back to main entry screen with updated tab index
class BottomNavNotifier with ChangeNotifier {
  int _currentIndex = 0;
  int get currentIndex => _currentIndex;

  void updateIndex({required int index, bool shouldNotify = false}) {
    _currentIndex = index;
    if (shouldNotify) {
      notifyListeners();
    }
  }
}
