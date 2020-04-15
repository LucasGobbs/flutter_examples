// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:auto_route/router_utils.dart';
import 'package:flutter_examples/app/homescreen/homescreen.dart';
import 'package:flutter_examples/examples/pageview_navbar_integration/main_view.dart';

class Router {
  static const homeScreen = '/';
  static const pageViewNavBarIntegration = '/page-view-nav-bar-integration';
  static GlobalKey<NavigatorState> get navigatorKey =>
      getNavigatorKey<Router>();
  static NavigatorState get navigator => navigatorKey.currentState;

  static Route<dynamic> onGenerateRoute(RouteSettings settings) {
    final args = settings.arguments;
    switch (settings.name) {
      case Router.homeScreen:
        return MaterialPageRoute(
          builder: (_) => HomeScreen(),
          settings: settings,
        );
      case Router.pageViewNavBarIntegration:
        return MaterialPageRoute(
          builder: (_) => PageViewNavBarIntegration(),
          settings: settings,
        );
      default:
        return unknownRoutePage(settings.name);
    }
  }
}
