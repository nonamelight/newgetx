import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:itmbti/controller/init_controller.dart';
import 'package:itmbti/tools/g_button.dart';
import 'package:itmbti/tools/g_design.dart';

class FirstPage1 extends StatefulWidget {
  @override
  State<FirstPage1> createState() => _FirstPage1();
}

class _FirstPage1 extends State<FirstPage1> {
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
                'assets/meetpeople.jpg',
                width: ScreenWidth,
                height: ScreenHeight / 4,
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: margin_main_panel),
              child: Center(
                child: Text(
                  '나는 사람을 많이 만나는 직업이 좋다',
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
          getxInitController.EorI = getxInitController.EorI + addPoint;

          Get.offAll(() => FirstPage1());
          Get.toNamed('/third');
        },
        title: title);
  }
}
