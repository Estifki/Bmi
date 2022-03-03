import 'package:flutter/material.dart';
import '../constants/constants.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class WeightAndAgeContainer extends StatelessWidget {
  final String title;
  final double values;
  final VoidCallback onpressminus;
  final VoidCallback onpressadd;

  WeightAndAgeContainer(
      {required this.title,
      required this.values,
      required this.onpressminus,
      required this.onpressadd});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 26, left: 20, right: 20),
      decoration: BoxDecoration(
        color: kunselectedcolor,
        borderRadius: BorderRadius.circular(16.0),
      ),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              title,
              style: const TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
            ),
          ),
          Text(
            "$values",
            style: const TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: GestureDetector(
                  onTap: onpressminus,
                  child: Container(
                    height: 46,
                    width: 46,
                    decoration: const BoxDecoration(
                      shape: BoxShape.circle,
                      color: kselectedcolor,
                    ),
                    child: const Icon(
                      FontAwesomeIcons.minus,
                      size: 24,
                    ),
                  ),
                ),
              ),
              const SizedBox(
                width: 5,
              ),
              GestureDetector(
                onTap: onpressadd,
                child: Container(
                  height: 46,
                  width: 46,
                  decoration: const BoxDecoration(
                    shape: BoxShape.circle,
                    color: kselectedcolor,
                  ),
                  child: const Icon(
                    FontAwesomeIcons.plus,
                    size: 24,
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
