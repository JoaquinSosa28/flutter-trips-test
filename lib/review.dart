import 'package:flutter/material.dart';

class Review extends StatelessWidget {
  String imagePath = "assets/img/ricardito.png";
  String name = "Joaquín Sosa";
  String details = "1 review - 5 photos";
  String comment = "There's an amazing place in your mom";

  Review(this.imagePath, this.name);

  @override
  Widget build(BuildContext context) {
    final photo = Container(
      margin: EdgeInsets.only(top: 20.0, left: 20.0),
      height: 70.0,
      width: 70.0,
      decoration: BoxDecoration(
          shape: BoxShape.circle,
          image:
              DecorationImage(fit: BoxFit.cover, image: AssetImage(imagePath))),
    );

    final username = Container(
        margin: EdgeInsets.only(top: 5, left: 20.0),
        child: Text(name,
            textAlign: TextAlign.left,
            style: TextStyle(
                fontSize: 17.0,
                fontFamily: "Montserrat",
                fontWeight: FontWeight.w500)));

    final userInfo = Container(
        margin: EdgeInsets.only(top: 5, left: 20.0),
        child: Text(details,
            textAlign: TextAlign.left,
            style: TextStyle(
                fontSize: 13.0,
                fontFamily: "Montserrat",
                fontWeight: FontWeight.w400,
                color: Colors.black54)));

    final userComment = Container(
        margin: EdgeInsets.only(top: 5, left: 20.0),
        child: Text(comment,
            textAlign: TextAlign.left,
            style: TextStyle(
                fontSize: 14.0,
                fontFamily: "Montserrat",
                fontWeight: FontWeight.w500,
                color: Colors.black87)));

    final userDetails = Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [username, userInfo, userComment]);

    return Row(
      children: <Widget>[photo, userDetails],
    );
  }
}
