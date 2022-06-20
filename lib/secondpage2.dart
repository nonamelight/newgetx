import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:itmbti/controller/init_controller.dart';
import 'package:itmbti/tools/g_button.dart';
import 'package:itmbti/tools/g_design.dart';

class SecondPage2 extends StatefulWidget {
  @override
  State<SecondPage2> createState() => _SecondPage2();
}

class _SecondPage2 extends State<SecondPage2> {
  GetxInitController getxInitController = Get.find<GetxInitController>();
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final double ScreenWidth = MediaQuery.of(context).size.width; //기기의 너비
    final double ScreenHeight = MediaQuery.of(context).size.height; // 기기의 높이
    final double StatusBarHeight = MediaQuery.of(context).padding.top; // 상단 상태 바 높이 값
    return Scaffold(
      body: Container(
        color: Colors.white,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Container(
              margin: EdgeInsets.only(top: StatusBarHeight + 30),
              child: Image.asset(
                'assets/second2.jpg',
                width: ScreenWidth,
                height: ScreenHeight / 4,
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: margin_main_panel),
              child: Center(
                child: Text(
                  '이론보다 경험에 의존한다',
                  style: TextStyle(fontSize: 20),
                ),
              ),
            ),
            Container(
                child: Column(
              children: [
                SelectButton('매우 그렇다', 2),
                SelectButton('그렇다', 1),
                SelectButton('보통이다', 0),
                SelectButton('아니다', -1),
                SelectButton('절대 아니다', -2),
              ],
            )),
          ],
        ),
      ),
    );
  }

  Widget SelectButton(String title, int addPoint) {
    return GButton().RoundButton(
        color: color_deep_blue,
        marginBottom: 5,
        height: 35,
        onPressed: () {
          getxInitController.NorS = getxInitController.NorS + addPoint;
          Get.offAll(() => SecondPage2());
          Get.toNamed('/third2');
        },
        title: title);
  }
}
