import 'package:flutter/material.dart';

class TapBarWidget extends StatelessWidget {
  final String tapTitle;

  const TapBarWidget({Key? key, required this.tapTitle}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Tab(
      child: Padding(
        padding: const EdgeInsets.only(
          bottom: 10,
          top: 7,
        ),
        child: Text(
          tapTitle,
          style: TextStyle(
              color: Colors.white, fontSize: 18, fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}

class TapBarImageWidget extends StatelessWidget {


  const TapBarImageWidget({Key? key,  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Tab(
        child: Padding(
            padding: const EdgeInsets.only(
                bottom: 0, top: 7, left: 1, right: 1),
            child: Container(
              width: 30,
              height: 30,
              child: Image.asset(
                'assets/images/quran.png',
                fit: BoxFit.cover,
              ),
            )));
  }
}
