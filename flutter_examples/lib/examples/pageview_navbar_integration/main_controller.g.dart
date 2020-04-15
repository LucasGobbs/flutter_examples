// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'main_controller.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$MainController on _MainControllerBase, Store {
  final _$currentSelectedTabAtom =
      Atom(name: '_MainControllerBase.currentSelectedTab');

  @override
  int get currentSelectedTab {
    _$currentSelectedTabAtom.context
        .enforceReadPolicy(_$currentSelectedTabAtom);
    _$currentSelectedTabAtom.reportObserved();
    return super.currentSelectedTab;
  }

  @override
  set currentSelectedTab(int value) {
    _$currentSelectedTabAtom.context.conditionallyRunInAction(() {
      super.currentSelectedTab = value;
      _$currentSelectedTabAtom.reportChanged();
    }, _$currentSelectedTabAtom, name: '${_$currentSelectedTabAtom.name}_set');
  }

  final _$_MainControllerBaseActionController =
      ActionController(name: '_MainControllerBase');

  @override
  dynamic changeSelectedTab(int index) {
    final _$actionInfo = _$_MainControllerBaseActionController.startAction();
    try {
      return super.changeSelectedTab(index);
    } finally {
      _$_MainControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    final string = 'currentSelectedTab: ${currentSelectedTab.toString()}';
    return '{$string}';
  }
}
