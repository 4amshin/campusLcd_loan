import 'dart:developer';

import 'package:flashy_tab_bar2/flashy_tab_bar2.dart';
import 'package:flutter/material.dart';
import 'package:lcd_loan/module/student/st_history/view/st_history_view.dart';
import 'package:lcd_loan/module/student/st_home/view/st_home_view.dart';
import 'package:lcd_loan/module/student/st_main_navigation/widget/st_tab_bar_item.dart';
import 'package:lcd_loan/module/student/st_scanner/view/st_scanner_view.dart';
import 'package:lcd_loan/state_util.dart';
import '../view/st_main_navigation_view.dart';

class StMainNavigationController extends State<StMainNavigationView>
    implements MvcController {
  static late StMainNavigationController instance;
  late StMainNavigationView view;

  @override
  void initState() {
    instance = this;
    super.initState();
  }

  @override
  void dispose() => super.dispose();

  @override
  Widget build(BuildContext context) => widget.build(context, this);

  int selectedIndex = 0;

  onItemSelected(int index) {
    setState(() {
      selectedIndex = index;
    });
  }

  List<Widget> widgetOptions = const [
    StHomeView(),
    StHistoryView(),
  ];

  List<FlashyTabBarItem> navBarsItems() {
    return [
      stTabBarItem(
        iconUrl: 'dashboard.svg',
        title: 'Dashboard',
      ),
      stTabBarItem(
        iconUrl: 'history.svg',
        title: 'History',
      ),
    ];
  }
}