import 'package:flutter/material.dart';

class Reusablecard extends StatelessWidget {
  final Color colour;
  final Widget? cardchild;
  

  Reusablecard({required this.colour, this.cardchild});

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: const EdgeInsets.all(15.0),
        decoration: BoxDecoration(
          color: colour,
          borderRadius: BorderRadius.circular(10),
        ),
        child: cardchild);
  }
}
