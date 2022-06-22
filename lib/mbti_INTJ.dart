import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:itmbti/controller/init_controller.dart';
import 'package:itmbti/tools/g_button.dart';
import 'package:itmbti/tools/g_design.dart';
import 'package:itmbti/tools/g_lib.dart';
import 'package:url_launcher/url_launcher.dart';

class INTJ extends StatefulWidget {
  @override
  State<INTJ> createState() => _INTJ();
}

class _INTJ extends State<INTJ> {
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
      body: Scrollbar(
        thumbVisibility: true,
        thickness: 10,
        child: SingleChildScrollView(
          child: Container(
            color: Colors.white,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Container(
                  margin: EdgeInsets.only(top: StatusBarHeight),
                  child: Center(
                    child: Text(
                      '- INTJ -',
                      style: TextStyle(fontSize: 40, color: color_deep_blue),
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: margin_main_panel, bottom: margin_main_panel),
                  child: Center(
                    child: Text(
                      '데이터사이언스',
                      style: TextStyle(fontSize: 40),
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: margin_main_panel, bottom: margin_main_panel),
                  child: Center(
                    child: Text(
                      '빅데이터',
                      style: TextStyle(fontSize: 20),
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(
                    top: margin_main_panel * 2,
                    right: margin_main_panel,
                    left: margin_main_panel,
                  ),
                  child: Text(' 데이터사이언스(Data Science)이란 데이터 마이닝(Data Mining)과 정형(일정한 형식을 가진 데이터), 비정형(형식이 없이 쓰인 데이터) 형태를 포함한 다양한 데이터로부터 지식과 인사이트를 추출하는데 과학적 방법론, 프로세스, 알고리즘, 시스템을 동원하는 융합 분야입니다(Wiki). AI와 머신러닝, 딥러닝에 대해서는 많이 들어보셨겠지만, 모두 데이터를 바탕으로 작동되는 데이터사이언스 일부입니다. '),
                ),
                Container(
                  margin: EdgeInsets.only(
                    top: margin_main_panel * 2,
                    right: margin_main_panel,
                    left: margin_main_panel,
                  ),
                  child: Text(' 데이터사이언스는 데이터를 다루는 IT 지식과 통계지식이 필요합니다. 학원에서 가르치는 AI, 빅데이터는 통계의 결과를 통해 만든 라이브러리 툴을 통해 보여주는 최소한의 실무역량을 가르칩니다. '),
                ),
                Container(
                  margin: EdgeInsets.only(
                    top: margin_main_panel * 2,
                    right: margin_main_panel,
                    left: margin_main_panel,
                  ),
                  child: Text(' 왜냐하면, 빅데이터/AI를 다루기 위해서는 선형대수학을 비롯한 통계에 대한 지식이 깊어야하는데, 통계학과 학사/석사를 졸업하신 분들께서 IT를 배워서 융합지식으로 AI를 하는 경우가 일반적이거나, IT를 하시는 분께서 석사진학 후 통계를 배워서 AI를 접목하는 경우가 일반적이기 때문에 얕은 학문이 아닙니다. '),
                ),
                Container(
                  margin: EdgeInsets.only(top: margin_main_panel * 3),
                  child: Image.asset(
                    'assets/ds.png',
                    width: ScreenWidth,
                    height: ScreenHeight / 4,
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(
                    top: margin_main_panel * 2,
                    right: margin_main_panel,
                    left: margin_main_panel,
                  ),
                  child: Text(' AI를 상상하는 우리는 터미네이터나 아이로봇과 같은 사고가 가능한 지능적인 로봇을 생각하지만, 실제로는 도로의 신호등을 구별하는 것조차 고급기술로 분류됩니다. AI의 분야를 말하기 위해서는 머신러닝과 딥러닝의 분야를 명확하게 구분할 줄 알아야 합니다. 예를 들어 사진 한 장을 놓고 강아지인지 고양이인지 구분하는 학습을 시킨다고 할 때, 머신러닝은 무수한 사진을 학습하며 강아지의 일반적이고 통계적인 모양을 통해 구분하게 됩니다.'),
                ),
                Container(
                  margin: EdgeInsets.only(
                    top: margin_main_panel * 2,
                    right: margin_main_panel,
                    left: margin_main_panel,
                  ),
                  child: Text(' 그러나 딥러닝은 조금 다릅니다. 강아지의 사진 속에서 x, y 좌표의 픽셀 색깔 다음의 x1, y1 좌표의 색깔이 무엇이 나오는지 통계를 내며 학습합니다. (0, 0) 픽셀 다음에 (0, 1) 픽셀을 학습하였다면 다시 (0, 0) 픽셀을 기준으로 (1, 0)과 (1, 1) 픽셀을 학습하게 됩니다. 이렇게 무수한 반복을 통해 만들어진 학습 통계를 바탕으로 딥러닝은 새로운 강아지도 만들어내고, 강아지인지 배경화면인지를 구별할 수 있는 것입니다. '),
                ),
                Container(
                  margin: EdgeInsets.only(top: margin_main_panel * 3),
                  child: Column(
                    children: [
                      Image.asset(
                        'assets/dogai.png',
                        width: ScreenWidth,
                        height: ScreenHeight / 4,
                      ),
                      Container(
                        margin: EdgeInsets.only(top: margin_inner_widget),
                        child: Text(
                          '데이터사이언스의 범위',
                          style: TextStyle(fontSize: 12, color: Colors.blue),
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(
                    top: margin_main_panel * 2,
                    right: margin_main_panel,
                    left: margin_main_panel,
                  ),
                  child: Text(' AI 실무나 사용이 목적이라고 하시면 R, Python을 공부하시고, AI의 알고리즘에 관해서 공부해보시는 것을 추천해 드립니다. 그러나 AI에 대해서 이론적이고 원론적인 심도있는 학습과 연구를 원하시는 분께서는 데이터사이언스나 통계학과 석/박사 학위로 진학을 하시는 것이 시간/비용적으로 절약할 수 있을 것입니다. '),
                ),
                Container(
                  margin: EdgeInsets.only(
                    top: margin_main_panel * 2,
                    right: margin_main_panel,
                    left: margin_main_panel,
                  ),
                  child: Text(' 데이터사이언스, 통계 쪽에서는 유명한 대회가 하나 있습니다. 케글(Keggle)이라고 하는 통계 대회가 주기적으로 열립니다. 주어진 다량의 데이터로 최선의 알고리즘으로 빠르고 정확하게 결괏값을 추출하는 대회입니다. 혹 어려운 석/박사의 길이 아니라 빅데이터에 대해서 어느 정도 학습하고 싶으신 분께서는 2020년부터 시행된 빅데이터 분석기사를 도전하시면 빅데이터의 기초 통계지식과 이론을 배우실 수 있습니다.'),
                ),
                GButton().BaseButton(
                    marginTop: margin_main_panel,
                    marginBottom: StatusBarHeight,
                    title: '더 많은 정보 보기 ☞',
                    onPressed: () async {
                      await launchUrl(Uri.parse('https://kmong.com/gig/335637'), mode: LaunchMode.platformDefault);
                    }),
              ],
            ),
          ),
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
          getxInitController.TorF = getxInitController.TorF + addPoint;
          Get.offAll(() => INTJ());
          Get.toNamed('/fourth7');
        },
        title: title);
  }
}
