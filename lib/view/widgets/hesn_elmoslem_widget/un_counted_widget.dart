import 'package:clipboard/clipboard.dart';
import 'package:flutter/material.dart';

class UnCounted extends StatelessWidget {

  final String zekrBody;
  final String category;

  const UnCounted({Key? key, required this.zekrBody,
    required this.category,}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
        child: Column(
          children: [
            Stack(
              children: [
                Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(
                          topRight: Radius.circular(20),
                          topLeft: Radius.circular(20)),
                      color: Colors.green),
                  height: 45,
                  child: Center(
                    child: Text(
                      category,
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 18),
                    ),
                  ),
                ),
                Positioned(
                    right: MediaQuery.of(context).size.width * .014,
                    child: IconButton(
                      iconSize: 20,
                      icon: Icon(
                        Icons.copy,
                        color: Colors.white70,
                      ),
                      onPressed: () {
                        FlutterClipboard.copy(zekrBody).then((value) {
                          final snack = SnackBar(
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(30)),
                              duration: Duration(seconds: 1),
                              content: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    "تم النسخ",
                                    style: TextStyle(
                                        fontWeight: FontWeight.w600,
                                        fontSize: 15),
                                  ),
                                ],
                              ));
                          ScaffoldMessenger.of(context).showSnackBar(snack);
                        });
                      },
                    )),
              ],
            ),
            Container(
              padding: EdgeInsets.only(left: 5),
              decoration: BoxDecoration(color: Color(0xff1B262C)),
              child: Center(
                child: Padding(
                  padding: const EdgeInsets.only(right: 2, left: 2, top: 3),
                  child: SingleChildScrollView(
                    child: Container(
                      margin: EdgeInsets.all(20),
                      child: Text(
                        zekrBody,
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 24),
                      ),
                    ),
                  ),
                ),
              ),
            ),
            Container(
              height: 20,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(20),
                      bottomRight: Radius.circular(20)),
                  color: Colors.green),
            ),
           ],
        ),
        padding: EdgeInsets.all(8));
  }
}

