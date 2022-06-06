import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:itmbti/controller/init_controller.dart';
import 'package:itmbti/fistpage.dart';
import 'package:itmbti/initpage.dart';
import 'package:itmbti/secondpage.dart';
import 'package:itmbti/third.dart';

void main() async {
  GetxInitController getxInitController = Get.put(GetxInitController());
  runApp(GetMaterialApp(
    title: 'Getx Test',
    theme: ThemeData(fontFamily: 'TMoney'),
    home: InitPage(),
    initialRoute: '/',
    getPages: [
      GetPage(name: '/', page: () => InitPage()),
      GetPage(name: '/first', page: () => FirstPage()),
      GetPage(name: '/second', page: () => SecondPage()),
      GetPage(name: '/third', page: () => Third()),
    ],
    // },
  ));
}
