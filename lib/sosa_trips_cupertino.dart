import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

import 'profile_trips.dart';
import 'home_trips.dart';
import 'search_trips.dart';

class SosaTripsCupertino extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _SosaTripsCupertino();
  }
}

class _SosaTripsCupertino extends State<SosaTripsCupertino> {
  CupertinoTabView cupertinoTabBuilder(BuildContext context, int index) {
    switch (index) {
      case 0:
        return CupertinoTabView(builder: (BuildContext context) => HomeTrips());
      case 1:
        return CupertinoTabView(
            builder: (BuildContext context) => SearchTrips());
      case 2:
        return CupertinoTabView(
            builder: (BuildContext context) => ProfileTrips());
      default:
        return CupertinoTabView(builder: (BuildContext context) => HomeTrips());
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        bottomNavigationBar: CupertinoTabScaffold(
            tabBar: CupertinoTabBar(items: [
              BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
              BottomNavigationBarItem(
                  icon: Icon(Icons.search), label: "Search"),
              BottomNavigationBarItem(
                  icon: Icon(Icons.person), label: "Person"),
            ]),
            tabBuilder: cupertinoTabBuilder));
  }
}
