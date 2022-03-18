import 'package:flutter/material.dart';
import 'package:get/get.dart';
 import 'package:zekr/logic/controller/home_controller.dart';
import 'package:zekr/view/widgets/home_screen_widgets/app_bar_container_gradient.dart';
import 'package:zekr/view/widgets/home_screen_widgets/app_bar_title_widget.dart';
import 'package:zekr/view/widgets/home_screen_widgets/drawer_widget.dart';

import '../widgets/home_screen_widgets/open_drower.dart';
import '../widgets/home_screen_widgets/tap_bar_widget.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({Key? key}) : super(key: key);
  final controller = Get.find<HomeController>();

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 3,
        child: Scaffold(
          appBar: AppBar(
            leading: OpenDrawer(),
            flexibleSpace: AppBarGradient(),
            centerTitle: true,
            title: AppBarTitle(
              tite: "وَذَكِّرْ",
            ),
            bottom: TabBar(
              tabs: [
                TapBarWidget(
                  tapTitle: "السبحه",
                ),
                TapBarImageWidget(),
                TapBarWidget(
                  tapTitle: 'حصن المسلم',
                )
              ],
            ),
          ),
          body: GetBuilder<HomeController>(
              builder: (_) {
            return TabBarView(children: controller.TabScreens);
          }),
          drawer: DrawerWidget(),
        ));
  }
}
