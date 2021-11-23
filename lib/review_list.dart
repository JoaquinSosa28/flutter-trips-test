import 'package:flutter/material.dart';
import 'review.dart';

class ReviewList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Review("assets/img/ricardito.png", "Jose", "It's a beautiful place"),
        Review("assets/img/ricardito.png", "Juan", "It's an amazing place"),
        Review("assets/img/ricardito.png", "Carlos",
            "I don't know what else to say")
      ],
    );
  }
}
