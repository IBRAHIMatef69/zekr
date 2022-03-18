import 'package:flutter/material.dart';
import 'package:zekr/utils/size_config.dart';
import 'package:zekr/view/widgets/elsb7a_widgets/choose_text.dart';
import 'package:zekr/view/widgets/elsb7a_widgets/restart_counter.dart';
import 'package:zekr/view/widgets/elsb7a_widgets/text_counter.dart';
import 'package:zekr/view/widgets/elsb7a_widgets/toast_widget.dart';
import 'package:zekr/view/widgets/elsb7a_widgets/total_count_in_shared_prefs.dart';

import '../widgets/elsb7a_widgets/increment.dart';

class Elsb7aScreen extends StatelessWidget {
  const Elsb7aScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TotalCountInSharedPrefs(),
              SizedBox(
                height: SizeConfig.defaultSize,
              ),
              Padding(
                padding:
                    EdgeInsets.symmetric(horizontal: SizeConfig.defaultSize!),
                child: ToastWidget(),
              ),
              SizedBox(
                height: SizeConfig.defaultSize! * 1,
                width: SizeConfig.screenWidth,
              ),
              TextCounter(),
              Increment(),
              RestartCounter(),
              SizedBox(
                height: SizeConfig.defaultSize,
              ),
              ChooseText()
            ],
          ),
        ),
      ),
    );
  }
}
