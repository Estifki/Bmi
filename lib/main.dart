import 'package:bim_calculator/constants/constants.dart';
import 'package:flutter/material.dart';

import 'pages/mainpage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: "BMI CAlCULATOR",
        routes: {
          "/": (context) => const MainPage(),
        },
        theme: ThemeData.dark().copyWith(
            scaffoldBackgroundColor: kappcolor,
            appBarTheme: const AppBarTheme(
              backgroundColor: kappcolor,
            )));
  }
}
