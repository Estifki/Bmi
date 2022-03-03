import 'package:bim_calculator/constants/constants.dart';
import 'package:flutter/material.dart';

class ResultContainer extends StatelessWidget {
  final String weightform;
  final String exactBMI;
  final String weightinterpration;

  ResultContainer(
      {required this.weightform,
      required this.exactBMI,
      required this.weightinterpration});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Text(
          weightform.toUpperCase(),
          style: const TextStyle(
              fontSize: 40, fontWeight: FontWeight.bold, color: Colors.green),
        ),
        Text(
          exactBMI,
          style: const TextStyle(fontSize: 50, fontWeight: FontWeight.bold),
        ),
        Text(
          weightinterpration,
          style: ktextstyle,
        ),
      ],
    );
  }
}
