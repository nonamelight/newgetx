import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:itmbti/fistpage.dart';
import 'package:itmbti/tools/g_button.dart';
import 'package:itmbti/tools/g_design.dart';
import 'package:itmbti/tools/g_lib.dart';

class InitPage extends StatefulWidget {
  const InitPage({Key? key}) : super(key: key);

  @override
  _InitPageState createState() => _InitPageState();
}

////Getx 버전
class _InitPageState extends State<InitPage> {
  //기기정보
  @override
  Widget build(BuildContext context) {
    final double ScreenWidth = MediaQuery.of(context).size.width; //기기의 너비
    final double ScreenHeight = MediaQuery.of(context).size.height; // 기기의 높이
    final double StatusBarHeight = MediaQuery.of(context).padding.top; // 상단 상태 바 높이 값
    return Scaffold(
      body: Container(
        width: ScreenWidth,
        height: ScreenHeight,
        color: color_deep_blue,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Text(
                  'IT ',
                  style: TextStyle(color: Colors.white, fontSize: 80),
                ),
                Text(
                  'MBTI',
                  style: TextStyle(color: Colors.white, fontSize: 40),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                GButton().RoundButton(
                    title: 'START',
                    color: Colors.white,
                    fontcolor: color_deep_blue,
                    onPressed: () {
                      Get.toNamed('/first');
                    })
              ],
            )
          ],
        ),
      ),
    );
  }
}
