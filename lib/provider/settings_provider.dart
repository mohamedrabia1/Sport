import 'package:flutter/material.dart';

class SettingsProvider extends ChangeNotifier{
  int currentTabIndex = 0;




  void setCurrentIndex(int currentIndex){
    currentTabIndex = currentIndex;
    notifyListeners();
  }


}