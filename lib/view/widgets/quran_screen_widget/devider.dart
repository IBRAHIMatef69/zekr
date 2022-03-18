import 'package:flutter/material.dart';

class DeviderWidget extends StatelessWidget {
  const DeviderWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Divider(
      thickness: .6,
      color: Colors.black45,endIndent: 10,indent: 10,
    );
  }
}
