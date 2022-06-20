import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:itmbti/controller/init_controller.dart';
import 'package:itmbti/tools/g_button.dart';
import 'package:itmbti/tools/g_design.dart';

class Fourth4 extends StatefulWidget {
  @override
  State<Fourth4> createState() => _Fourth4();
}

class _Fourth4 extends State<Fourth4> {
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
                'assets/fourth4.jpg',
                width: ScreenWidth,
                height: ScreenHeight / 4,
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: margin_main_panel),
              child: Center(
                child: Text(
                  '그때그때 닥치는 일을 하기보다\n우선순위를 두고 움직인다',
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
          getxInitController.JorP = getxInitController.JorP + addPoint;
          Get.offAll(() => Fourth4());
          Get.toNamed('/first5');
        },
        title: title);
  }
}
