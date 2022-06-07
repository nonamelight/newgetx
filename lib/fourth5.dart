import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:itmbti/controller/init_controller.dart';
import 'package:itmbti/tools/g_button.dart';
import 'package:itmbti/tools/g_design.dart';

class Fourth5 extends StatefulWidget {
  @override
  State<Fourth5> createState() => _Fourth5();
}

class _Fourth5 extends State<Fourth5> {
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
                'assets/fourth5.jpg',
                width: ScreenWidth,
                height: ScreenHeight / 4,
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: margin_main_panel),
              child: Center(
                child: Text(
                  '주말 전체를 처음부터 끝까지\n혼자서 지루하지않게 보낼 수 있다',
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
          Get.toNamed('/first6');
        },
        title: title);
  }
}
