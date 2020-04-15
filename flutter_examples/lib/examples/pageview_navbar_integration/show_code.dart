import 'package:flutter/material.dart';
import 'package:flutter_highlight/flutter_highlight.dart';
import 'package:flutter_highlight/themes/darcula.dart';
import 'package:flutter_highlight/themes/dark.dart';
import 'package:flutter_highlight/themes/github.dart';
class PageViewShowCode extends StatelessWidget {
 @override
  Widget build(BuildContext context) {
    

    return Scaffold(
      appBar: AppBar(title: Text("Code"),),
      body: SingleChildScrollView(
        child: codeBlocs(context),
      )
    );
  }
  Widget codeBlocs(BuildContext context){
    return Container(
      child: Column(
        children: <Widget>[
          createCodeBloc(code_mainView,
              "main_view.dart",
               context),
          createCodeBloc(code_mainController,
              "main_controller.dart", 
               context),
          createCodeBloc(code_navBar,
              "nav_bar.dart", 
               context),
          createCodeBloc(code_pageView,
              "page_view.dart", 
               context),
        ],
      ),
    );
    
  }
}

Widget createCodeBloc(String codebloc,String title, BuildContext context){
  return Container(
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Text(title),
        Container(
          width: MediaQuery.of(context).size.width,
          child: HighlightView(
            codebloc,
            language: 'dart',
            theme: darculaTheme,
            padding: EdgeInsets.all(12),
            textStyle: TextStyle(
              fontFamily: 'MontSerrat',
              fontSize: 16,
            ),
          ),
        ),
      ],
    ),
  );
}

const code_mainView = '''Widget build(BuildContext context) {
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
''';

const code_mainController = '''abstract class _MainControllerBase with Store {
  PageController pageController = PageController(
    initialPage: 0,
    keepPage: true,
  );
  @observable
  int currentSelectedTab = 0;

  @action
  changeSelectedTab(int index){
    currentSelectedTab = index;
    pageController.jumpToPage(index);
  }
}
''';

const code_navBar = '''Widget build(BuildContext context) {
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
''';

const code_pageView = '''Widget build(BuildContext context) {
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
''';