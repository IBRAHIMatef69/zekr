import 'package:flutter/material.dart';

class OpenDrawer extends StatelessWidget {
  const OpenDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 12, top: 12, right: 12, bottom: 12),
      child: Builder(
        builder: (context) => InkWell(
          onTap: () {
            Scaffold.of(context).openDrawer();
          },
          child: Container(
            width: 20,
            height: 20,
            child: Hero(
              tag: "h",
              child: Image.asset(
                'assets/images/h.png',
                fit: BoxFit.cover,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
