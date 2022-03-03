// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';

class ResuableContainer extends StatelessWidget {
  final Color cardcolor;
  final Widget cardchild;
  final VoidCallback cardonpress;

  ResuableContainer({
    required this.cardcolor,
    required this.cardchild,
    required this.cardonpress,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: cardonpress,
      child: Container(
        margin: const EdgeInsets.only(top: 26, left: 20, right: 20),
        decoration: BoxDecoration(
          color: cardcolor,
          borderRadius: BorderRadius.circular(16.0),
        ),
        child: cardchild,
      ),
    );
  }
}
