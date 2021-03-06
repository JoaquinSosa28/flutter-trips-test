import 'package:flutter/material.dart';

import 'review_list.dart';
import 'description_place.dart';
import 'header_appbar.dart';

class HomeTrips extends StatelessWidget {
  String descDummy =
      """rem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries""";

  @override
  Widget build(BuildContext context) {
    return Stack(children: [
      ListView(children: [
        DescriptionPlace("Bahamas 😎", 2, descDummy),
        ReviewList(),
      ]),
      HeaderAppBar()
    ]);
  }
}
