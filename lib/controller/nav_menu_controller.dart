import 'package:flutter/material.dart';
import 'package:techjetai/view/discover_screen.dart';
import 'package:techjetai/view/home_screen.dart';
import 'package:techjetai/view/profile_screen.dart';


class NavMenuController extends ChangeNotifier {
  int _index = 0;

  // get index value
  int get index => _index;

  // set index value
  set setindex(int value) {
    _index = value;
    notifyListeners();
  }

  // List of Navigation Screens

  final screen = const [

    HomeScreen(),
    DiscoverScreen(),
    ProfileScreen()
   
  ];

  


}