import 'package:bim_calculator/Widgets/weightagecontainer.dart';
import 'package:bim_calculator/Widgets/reauablecontainer.dart';
import 'package:bim_calculator/calculatebmi.dart';
import 'package:bim_calculator/constants/constants.dart';
import 'package:bim_calculator/constants/genderenum.dart';
import 'package:bim_calculator/pages/resultpage.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  Gender _selectedGender = Gender.male;
  double _height = 160;
  double _weight = 80;
  double _age = 25;
  @override
  Widget build(BuildContext context) {
    var _screenSize = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        title: const Text("BMI CALCULATOR"),
        centerTitle: true,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: ResuableContainer(
                    cardonpress: () {
                      setState(() {
                        _selectedGender = Gender.male;
                      });
                    },
                    cardcolor: _selectedGender == Gender.male
                        ? kselectedcolor
                        : kunselectedcolor,
                    cardchild: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: const [
                        Icon(
                          FontAwesomeIcons.mars,
                          size: 60,
                        ),
                        Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Text(
                            "Male",
                            style: ktextstyle,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Expanded(
                  child: ResuableContainer(
                    cardonpress: () {
                      setState(() {
                        _selectedGender = Gender.female;
                      });
                    },
                    cardcolor: _selectedGender == Gender.female
                        ? kselectedcolor
                        : kunselectedcolor,
                    cardchild: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: const [
                        Icon(
                          FontAwesomeIcons.venus,
                          size: 60,
                        ),
                        Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Text(
                            "Female",
                            style: ktextstyle,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: ResuableContainer(
              cardcolor: kunselectedcolor,
              cardonpress: () {},
              cardchild: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  const Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Text(
                      "Height",
                      style: ktextstyle,
                    ),
                  ),
                  Text(
                    _height.toStringAsFixed(2),
                    style: ktextstyle,
                  ),
                  Slider(
                      max: 220,
                      min: 100,
                      label: "Height",
                      thumbColor: Colors.white,
                      activeColor: Colors.white,
                      inactiveColor: Colors.black,
                      value: _height.toDouble(),
                      onChanged: (double change) {
                        setState(() {
                          _height = change;
                        });
                      })
                ],
              ),
            ),
          ),
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: WeightAndAgeContainer(
                    title: "Weight",
                    onpressminus: () {
                      setState(() {
                        _weight--;
                      });
                    },
                    onpressadd: () {
                      setState(() {
                        _weight++;
                      });
                    },
                    values: _weight,
                  ),
                ),
                Expanded(
                  child: WeightAndAgeContainer(
                    title: "Age",
                    onpressminus: () {
                      setState(() {
                        _age--;
                      });
                    },
                    onpressadd: () {
                      setState(() {
                        _age++;
                      });
                    },
                    values: _age,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: _screenSize.height * .04,
          ),
          GestureDetector(
            onTap: () {
              CalculateBmi calculateBmi = CalculateBmi();

              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) => ResultPage(
                      exactBMI: calculateBmi.setBMI(_weight, _height),
                      weightform: calculateBmi.getWeightForm(),
                      weightinterpration:
                          calculateBmi.getWeightinterpration()),
                ),
              );
            },
            child: Container(
              height: 60,
              child: const Center(
                  child: Text(
                "Calculate BMI",
                style: ktextstyle,
              )),
              color: const Color.fromARGB(255, 197, 36, 24),
            ),
          ),
        ],
      ),
    );
  }
}
