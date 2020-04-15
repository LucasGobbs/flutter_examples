import 'package:flutter/material.dart';
import 'package:flutter_examples/examples/pageview_navbar_integration/main_controller.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:provider/provider.dart';

class NavBarWidget extends StatelessWidget {
  int selectedItem = 0;
  @override
  Widget build(BuildContext context) {
    return Consumer<MainController>(builder: (context, myModel, child) {
      return Observer(builder: (_) {
        return BottomNavigationBar(
          backgroundColor: Theme.of(context).accentColor,
          type: BottomNavigationBarType.fixed,
          fixedColor: Colors.white,
          unselectedFontSize: 16,
          selectedFontSize: 20,
          selectedIconTheme: IconThemeData(
            size: 30,
          ),
          items: bottomBarItems,
          //currentIndex: bottomBarSelectedItem,
          currentIndex: myModel.currentSelectedTab,
          onTap: (index) {
            myModel.changeSelectedTab(index);
          
            
          },
        );
      });
    });
    
  }
}

const List<BottomNavigationBarItem> bottomBarItems = [
    BottomNavigationBarItem(
      icon: Icon(Icons.home),
      title: Text('First Tab'),
    ),
    BottomNavigationBarItem(
      icon: Icon(Icons.search),
      title: Text('Second Tab'),
    ),
    BottomNavigationBarItem(
      icon: Icon(Icons.person),
      title: Text('Third Tab'),
    ),
];