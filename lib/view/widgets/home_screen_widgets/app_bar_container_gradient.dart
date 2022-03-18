import 'package:flutter/material.dart';
import 'package:zekr/utils/themes.dart';

class AppBarGradient extends StatelessWidget {
  const AppBarGradient({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          gradient: LinearGradient(
              begin: Alignment.centerRight,
              end: Alignment.centerLeft,
              colors: [
            mainColor1,
            mainColor2,
            mainColor3,
            mainColor3,
            mainColor2,
            mainColor1
          ])),
    );
  }
}
