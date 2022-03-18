import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:workmanager/workmanager.dart';
import 'package:zekr/routes/routes.dart';


import 'serveces/local_notification_services.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
    await Workmanager().initialize(callbackDispatcher, );

  await GetStorage.init();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Zekr',
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
   getPages: AppRoutes.routes,
      initialRoute: Routes.splashScreen,
    );
  }
}
