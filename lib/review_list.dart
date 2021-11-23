import 'package:flutter/material.dart';
import 'review.dart';

class ReviewList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Review("assets/img/ricardito.png", "Jose"),
        Review("assets/img/ricardito.png", "Juan"),
        Review("assets/img/ricardito.png", "Carlos")
      ],
    );
  }
}
