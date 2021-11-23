import 'package:flutter/material.dart';
import 'package:hello_world/profile_trips.dart';

import 'home_trips.dart';
import 'search_trips.dart';

class SosaTrips extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _SosaTrips();
  }
}

class _SosaTrips extends State<SosaTrips> {
  final List<Widget> widgetsChildren = [
    HomeTrips(),
    SearchTrips(),
    ProfileTrips()
  ];

  int currentIndexTab = 0;

  void onTapTapped(int index) {
    setState(() {
      currentIndexTab = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: widgetsChildren[currentIndexTab],
        bottomNavigationBar: Theme(
            data: Theme.of(context).copyWith(
                canvasColor: Colors.white70, primaryColor: Colors.purple),
            child: BottomNavigationBar(
                onTap: onTapTapped,
                currentIndex: currentIndexTab,
                elevation: 10,
                items: [
                  BottomNavigationBarItem(
                      icon: Icon(Icons.home), label: "Home"),
                  BottomNavigationBarItem(
                      icon: Icon(Icons.search), label: "Search"),
                  BottomNavigationBarItem(
                      icon: Icon(Icons.person), label: "Person"),
                ])));
  }
}
