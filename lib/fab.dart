import 'package:flutter/material.dart';

class FloatingActionButtonGreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _FloatingActionButtonGreen();
  }
}

class _FloatingActionButtonGreen extends State<FloatingActionButtonGreen> {
  bool favorite = false;

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
        backgroundColor: Color(0xFF11DA53),
        mini: true,
        tooltip: "Fav",
        onPressed: OnFabPressed,
        child: Icon(favorite ? Icons.favorite : Icons.favorite_border));
  }

  void OnFabPressed() {
    ScaffoldMessenger.of(context).showSnackBar(SnackBar(
        content:
            Text(favorite ? "Eliminado de favoritos" : "Agregado a favoritos"),
        duration: Duration(milliseconds: 500)));

    setState(() {
      favorite = !favorite;
    });
  }
}
