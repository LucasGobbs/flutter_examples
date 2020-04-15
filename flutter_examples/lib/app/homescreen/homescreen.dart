import 'package:flutter/material.dart';
import 'package:flutter_examples/examples/pageview_navbar_integration/main_view.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Flutter examples"),
      ),
      body: SingleChildScrollView(
        child: Container(
          child: Column(
            children: <Widget>[
              Container(
                child: PageViewNavBarIntegration.card(),
              )
            ],
          ),
        ),
      ),
    );
  }
}