import 'package:flutter/material.dart';

class HomeCommonProvider with ChangeNotifier {
  int _tabIndex = 0;
  int get tabIndex => _tabIndex;

  setTabBarIndex(int index) {
    _tabIndex = index;
    notifyListeners();
  }
}