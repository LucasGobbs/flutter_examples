import 'package:flutter/material.dart';
import 'package:flutter_examples/app/widgets/resume_card.dart';
import 'package:flutter_examples/examples/pageview_navbar_integration/main_controller.dart';
import 'package:flutter_examples/examples/pageview_navbar_integration/nav_bar.dart';
import 'package:flutter_examples/examples/pageview_navbar_integration/page_view.dart';
import 'package:flutter_examples/router.gr.dart';
import 'package:provider/provider.dart';

class PageViewNavBarIntegration extends StatefulWidget {
  MainController controller = MainController();
  @override
  _PageViewNavBarIntegrationState createState() => _PageViewNavBarIntegrationState();
  static Widget card(){
    return ResumeCard(
      icon: Icons.code,
      title: Text("PageView and NavBar integration"),
      subtitle: Text("Using mobX and provider"),
      codeButtonCallback: (){},
      exampleButtonCallback: (){
        Router.navigator.pushNamed(
          Router.pageViewNavBarIntegration, 
        );
      },
    );
  }
}

class _PageViewNavBarIntegrationState extends State<PageViewNavBarIntegration> {
  @override
  Widget build(BuildContext context) {
    return Provider<MainController>(
      create: (context) => MainController(),
      child: Scaffold(
        appBar: AppBar(
          title: Text("Example"),
        ),
        body: PageViewWidget(),
        bottomNavigationBar: NavBarWidget(),
      ),
    );
  }

}




