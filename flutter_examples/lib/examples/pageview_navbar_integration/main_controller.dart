import 'package:flutter/material.dart';
import 'package:mobx/mobx.dart';
part 'main_controller.g.dart';

class MainController = _MainControllerBase with _$MainController;

abstract class _MainControllerBase with Store {
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