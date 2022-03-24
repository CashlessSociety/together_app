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

class LoginStateRefresher with ChangeNotifier {
  void refresh() {
    notifyListeners();
  }
}

class UserInfoNotifier with ChangeNotifier {
  String? _userId;
  String? get userId => _userId;

  String? _userName;
  String? get userName => _userName;

  String? _userEmail;
  String? get userEmail => _userEmail;

  String? _userAvatar;
  String? get userAvatar => _userAvatar;

  void updateInfo({
    required String id,
    required String name,
    required String email,
    required String avatar,
  }) {
    _userId = id;
    _userName = name;
    _userEmail = email;
    _userAvatar = avatar;
    notifyListeners();
  }

  void reset() {
    _userId = null;
    _userName = null;
    _userEmail = null;
    _userAvatar = null;
    notifyListeners();
  }
}
