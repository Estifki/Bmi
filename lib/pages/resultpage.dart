import 'package:bim_calculator/constants/constants.dart';
import 'package:flutter/material.dart';

import '../Widgets/resultcontainer.dart';

class ResultPage extends StatelessWidget {
  final String weightform;
  final String exactBMI;
  final String weightinterpration;

  ResultPage(
      {required this.weightform,
      required this.exactBMI,
      required this.weightinterpration});

  @override
  Widget build(BuildContext context) {
    var _screenSize = MediaQuery.of(context).size;
    return Scaffold(
      // appBar: AppBar(
      //   title: Text("Your BMI is ..."),
      //   centerTitle: true,
      // ),
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const Padding(
              padding: EdgeInsets.only(top: 16.0, left: 20),
              child: Text(
                "Your Result",
                style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
              ),
            ),
            SizedBox(
              height: _screenSize.height * .01,
            ),
            Expanded(
              flex: 4,
              child: Container(
                margin: const EdgeInsets.all(12),
                decoration: BoxDecoration(
                  color: kunselectedcolor,
                  borderRadius: BorderRadius.circular(12),
                ),
                child: ResultContainer(
                  exactBMI: exactBMI,
                  weightform: weightform,
                  weightinterpration: weightinterpration,
                ),
              ),
            ),
            SizedBox(
              height: _screenSize.height * .04,
            ),
            GestureDetector(
              onTap: () => Navigator.pop(context),
              child: Container(
                height: 60,
                child: const Center(
                    child: Text(
                  "RE-Calculate",
                  style: ktextstyle,
                )),
                color: const Color.fromARGB(255, 197, 36, 24),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
