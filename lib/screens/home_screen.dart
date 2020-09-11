import 'package:acha_aqui/tabs/adm_tab.dart';
import 'package:acha_aqui/tabs/business_tab.dart';
import 'package:acha_aqui/tabs/city_tab.dart';
import 'package:acha_aqui/tabs/home_tab.dart';
import 'package:acha_aqui/tabs/profile_tab.dart';
import 'package:acha_aqui/tabs/recents_tab.dart';
import 'package:acha_aqui/widgets/custom_drawer.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {

  final _pageController = PageController();

  @override
  Widget build(BuildContext context) {
    return PageView(
      controller: _pageController,
      physics: NeverScrollableScrollPhysics(),
      children: <Widget>[
        Scaffold(
        body: HomeTab(),
          drawer: CustomDrawer(_pageController),
        ),
        Scaffold(
          body: CityTab(),
          drawer: CustomDrawer(_pageController),
        ),
        Scaffold(
          drawer: CustomDrawer(_pageController),
          body: BusinessTab(),
        ),
        Scaffold(
          drawer: CustomDrawer(_pageController),
          body: ProfileTab(),
        ),
        Scaffold(
          drawer: CustomDrawer(_pageController),
          body: RecentsTab(),
        ),
        Scaffold(
          drawer: CustomDrawer(_pageController),
          body: AdmTab(),
        ),
      ],
    );
  }
}

