import 'package:flutter/material.dart';
class AppBarTitle extends StatelessWidget {
  final String tite;
  const AppBarTitle({Key? key, required this.tite}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
     tite,
      style: TextStyle(
          fontStyle: FontStyle.italic,
          fontSize: 28,
          color: Colors.white,
          fontWeight: FontWeight.w700),
    );
  }
}
