import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:itmbti/controller/init_controller.dart';
import 'package:itmbti/tools/g_button.dart';
import 'package:itmbti/tools/g_design.dart';

class FirstPage extends StatefulWidget {
  @override
  State<FirstPage> createState() => _FirstPage();
}

class _FirstPage extends State<FirstPage> {
  GetxInitController getxInitController = Get.put(GetxInitController());
  @override
  void initState() {
    super.initState();
    getxInitController.Clear();
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
                'assets/firstpage.jpg',
                width: ScreenWidth,
                height: ScreenHeight / 4,
              ),
            ),
            Container(
              height: 80,
              margin: EdgeInsets.only(top: margin_main_panel),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Center(
                    child: Text(
                      '내 성격에 맞는 IT 직업은 무엇일까?',
                      style: TextStyle(fontSize: 20),
                    ),
                  ),
                  Text(
                    '※간단한 성향파악과 결과이므로 재미로만 즐겨주시기 바랍니다',
                    style: TextStyle(fontSize: 12),
                  ),
                  Text(
                    '소요시간 : 3~5분',
                    style: TextStyle(fontSize: 12, color: Colors.blue),
                  ),
                ],
              ),
            ),
            GButton().RoundButton(
                color: color_deep_blue,
                height: 40,
                title: '검사하러 가기 ☞',
                onPressed: () {
                  Get.offAll(() => FirstPage());
                  // Get.toNamed('/first1');
                  Get.toNamed('/ESFJ');
                }),
          ],
        ),
      ),
    );
  }
}
