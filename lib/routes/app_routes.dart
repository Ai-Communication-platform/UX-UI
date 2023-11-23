import 'package:flutter/material.dart';
import 'package:eunbyul_s_application104/presentation/android_small_one_screen/android_small_one_screen.dart';
import 'package:eunbyul_s_application104/presentation/main_one_screen/main_one_screen.dart';
import 'package:eunbyul_s_application104/presentation/app_navigation_screen/app_navigation_screen.dart';

class AppRoutes {
  static const String androidSmallOneScreen = '/android_small_one_screen';

  static const String mainOneScreen = '/main_one_screen';

  static const String appNavigationScreen = '/app_navigation_screen';

  static Map<String, WidgetBuilder> routes = {
    androidSmallOneScreen: (context) => AndroidSmallOneScreen(),
    mainOneScreen: (context) => MainOneScreen(),
    appNavigationScreen: (context) => AppNavigationScreen()
  };
}
