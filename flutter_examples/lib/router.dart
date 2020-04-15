import 'package:auto_route/auto_route_annotations.dart';
import 'package:flutter_examples/app/homescreen/homescreen.dart';
import 'package:flutter_examples/examples/pageview_navbar_integration/main_view.dart';


// * flutter pub run build_runner watch --delete-conflicting-outputs
@autoRouter
class $Router {
  @initial
  HomeScreen homeScreen;
  PageViewNavBarIntegration pageViewNavBarIntegration;
}