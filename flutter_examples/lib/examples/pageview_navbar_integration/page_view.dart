import 'package:flutter/material.dart';
import 'package:flutter_examples/examples/pageview_navbar_integration/main_controller.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:provider/provider.dart';

class PageViewWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Consumer<MainController>(builder: (context, myModel, child) {
      return Observer(builder: (_) {
        return PageView(
          controller: myModel.pageController,
          children: page_list,
          
          onPageChanged: (index) {
            
             myModel.changeSelectedTab(index);
          },
        );
      });
    });
    
  }
}
 List<Widget> page_list = [
  Container(
    color:  Colors.blue,
    child: Center(child: Text("First Page")),
  ),
  Container(
    color: Colors.blue,
    child: Center(child: Text("Second Page")),
  ),
  Container(color: Colors.blue,
    child: Center(child: Text("Third Page")),
  ),
];