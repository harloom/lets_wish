

import 'package:flutter/material.dart';
import 'package:lets_wish/app/data/const/const_menu.dart';
import 'package:lets_wish/app/page/main/ErrorPage.dart';
import 'package:lets_wish/app/page/main/TabPage.dart';




class Routes {

  static Route<dynamic> generalRoute(RouteSettings settings) {
    final args = settings.arguments;
    switch (settings.name) {


      case ConstMenu.tabPage:
        return MaterialPageRoute(builder: (_)=>TabPage());
        break;



        default:
        return _errorRoute();



    }
  }

  static Route<dynamic> _errorRoute() {
    return MaterialPageRoute(builder: (_) => ErrorPage());
  }
}