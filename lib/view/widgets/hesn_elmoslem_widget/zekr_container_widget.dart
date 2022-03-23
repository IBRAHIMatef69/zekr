import 'package:clipboard/clipboard.dart';
import 'package:flutter/material.dart';

class ZekrContainerWidget extends StatelessWidget {
  final String zekrBody;
  final String zekrCategory;
  final int zekrCount;
  final Color r;
  final Color g;
  final Color color;
  final Function() onTap;
  final Function() onPressed;

  ZekrContainerWidget(
      {Key? key,
      required this.zekrBody,
      required this.zekrCount,
      required this.r,
      required this.g,
      required this.onTap,
      required this.onPressed,
      required this.color,
      required this.zekrCategory})
      : super(key: key);

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
                      '$zekrCategory',
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
              height: 45,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(20),
                      bottomRight: Radius.circular(20)),
                  color: color),
              child: InkWell(
                onTap: onTap,
                child: Stack(
                  children: [
                    Positioned(
                        left: 10,
                        top: 1,
                        child: IconButton(
                          color: Colors.white,
                          onPressed: onPressed,
                          icon: Icon(Icons.rotate_right),
                        )),
                    Positioned(
                      left: MediaQuery.of(context).size.width*.5,
                      top: MediaQuery.of(context).size.width*.04,
                      child: Container(
                        width: 160,
                        height: 35,
                        child: Text(
                          '${zekrCount}',
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
        padding: EdgeInsets.all(8));
    ;
  }
}
