import 'package:flutter/material.dart';
import 'button.dart';

class DescriptionPlace extends StatelessWidget {
  final String namePlace;
  final int stars;
  final String descriptionPlace;

  DescriptionPlace(this.namePlace, this.stars, this.descriptionPlace);

  @override
  Widget build(BuildContext context) {
    final titleStars = Row(
      children: <Widget>[
        Container(
          margin: EdgeInsets.only(top: 340.0, left: 20.0, right: 20.0),
          child: Text(namePlace,
              style: TextStyle(
                fontSize: 30.0,
                fontFamily: "Montserrat",
                fontWeight: FontWeight.bold,
              ),
              textAlign: TextAlign.left),
        ),
        showStars(stars),
      ],
    );

    final description = Container(
        margin: EdgeInsets.only(top: 20.0, left: 20.0, right: 20.0),
        child: Text(descriptionPlace,
            style: TextStyle(
                fontSize: 16.0,
                fontFamily: "Montserrat",
                fontWeight: FontWeight.normal,
                color: Colors.grey.shade800)));

    return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[titleStars, description, ButtonPurple("Navigate")]);
  }

  Widget showStars(int numberStars) {
    List<Widget> starsRow = [];
    List<Widget> starsRowBorder = [];

    for (int i = 0; i < numberStars; i++) starsRow.add(star(true));

    for (int i = 0; i < 5 - numberStars; i++) starsRowBorder.add(star(false));

    print(starsRow.length);
    print(starsRowBorder.length);

    List<Widget> finalStars = []..addAll(starsRow)..addAll(starsRowBorder);
    print(finalStars.length);
    return new Row(children: finalStars);
  }

  Widget star(bool onlyBorder) {
    return new Container(
        margin: EdgeInsets.only(top: 340.0, right: 3.0),
        child: Icon(onlyBorder ? Icons.star : Icons.star_border,
            color: Colors.amber));
  }
}
