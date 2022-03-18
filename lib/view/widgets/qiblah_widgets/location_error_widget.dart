
import 'package:flutter/material.dart';
import 'package:zekr/utils/themes.dart';

class LocationErrorWidget extends StatelessWidget {
  final String error;
  final Function callback;

  const LocationErrorWidget({Key? key, required this.error, required this.callback})
      : super(key: key);


  @override
  Widget build(BuildContext context) {
    final box = SizedBox(height: 32);
    final errorColor = mainColor2;

    return Scaffold(
      body: Container(
        child: Center(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              Icon(
                Icons.location_off,
                size: 150,
                color: errorColor,
              ),
              box,
              Text(
                error,
                style: TextStyle(
                    color: mainColor2, fontWeight: FontWeight.bold),
              ),
              box,
              RaisedButton(
                child: Text("Retry"),
                onPressed: () {
                  if (callback != null) callback();
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}