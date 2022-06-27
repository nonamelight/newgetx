import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:itmbti/controller/init_controller.dart';
import 'package:itmbti/tools/g_button.dart';
import 'package:itmbti/tools/g_design.dart';
import 'package:itmbti/tools/g_lib.dart';
import 'package:url_launcher/url_launcher.dart';

class ESTJ extends StatefulWidget {
  @override
  State<ESTJ> createState() => _ESTJ();
}

class _ESTJ extends State<ESTJ> {
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
                      '- ESTJ -',
                      style: TextStyle(fontSize: 40, color: color_deep_blue),
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: margin_main_panel, bottom: margin_main_panel),
                  child: Center(
                    child: Text(
                      '임베디드 개발자',
                      style: TextStyle(fontSize: 40),
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(
                    top: margin_main_panel * 2,
                    right: margin_main_panel,
                    left: margin_main_panel,
                  ),
                  child: Text(' 임베디드 개발은 정보통신보다는 전자공학 쪽에 가까운 학문입니다. 특히 사물인터넷이라고 불리는 IoT 개발 분야는 주목을 받고 있습니다. 말 그대로 사물이 인터넷에 연결되어 사용자와 유기적으로 작동하게 만드는 개발 분야입니다.'),
                ),
                Container(
                  margin: EdgeInsets.only(top: margin_main_panel * 3),
                  child: Column(
                    children: [
                      Image.asset(
                        'assets/breadboard.png',
                        width: ScreenWidth,
                        height: ScreenHeight / 4,
                      ),
                      Container(
                        margin: EdgeInsets.only(top: margin_inner_widget),
                        child: Text(
                          '전자기판',
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
                  child: Text(' 서버와 연결되어 결제 후 사용 가능한 전동킥보드, 집에 있는 가스 밸브나 전등을 확인할 수 있는 월 패드, 사람의 목소리를 인식하여 음악을 틀어주거나 전화를 걸어주는 AI 스피커, 카드 정보를 읽어 금융데이터와 통신하는 카드리더기 등이 사물인터넷 분야입니다.  '),
                ),
                Container(
                  margin: EdgeInsets.only(
                    top: margin_main_panel * 2,
                    right: margin_main_panel,
                    left: margin_main_panel,
                  ),
                  child: Text('Bread Board라고 불리는 전자기판에 반도체와 센서를 얹은 후 개발자가 의도하는 대로 기계가 작동하도록 코딩합니다. 최근 건물 출입구마다 있는 온도감지 계와 가게마다 설치된 대기 순번을 조회하고 알려주는 기계 등 임베디드의 적용 분야는 많습니다. 주로 전자회로도와 센서, 전기, 코딩에 관해서 공부를 합니다. 업무 특성상 납땜을 할때가 많습니다.'),
                ),
                Container(
                  margin: EdgeInsets.only(top: margin_main_panel * 3),
                  child: Column(
                    children: [
                      Image.asset(
                        'assets/imbeded.png',
                        width: ScreenWidth,
                        height: ScreenHeight / 4,
                      ),
                      Container(
                        margin: EdgeInsets.only(top: margin_inner_widget),
                        child: Text(
                          '임베디드 IoT의 응용 기기들',
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
                  child: Text(' 이렇게 다양한 적용 분야가 있기에 임베디드 쪽을 처음 생각하시는 분께서는 임베디드 개발보다는 임베디드 사업을 많이 생각합니다. 그러나 임베디드 개발이 아니라 임베디드 사업을 생각하는 분께서는 신중해야 합니다. 임베디드 특성상 소프트웨어만 파는 것이 아니라 하드웨어를 같이 판매하게 됩니다.'),
                ),
                Container(
                  margin: EdgeInsets.only(
                    top: margin_main_panel * 2,
                    right: margin_main_panel,
                    left: margin_main_panel,
                  ),
                  child: Text(' 그 때문에 디자인과 기능이 나오면 공장에 의뢰하여 대량생산을 거친 다음 판매를 해야 하는데, 어설픈 제품을 만들거나 마케팅에 실패하여 판매되지 않으면 악성 재고로 남을 가능성이 있습니다. 개발과 사업이라는 부분은 교집합이 있지만, 전혀 다른 분야임을 자각하고 신중하게 고려해야 합니다. 혹시라도 임베디드 사업을 하실 것이라면 개발보다는 자본을 갖고 사업을 배우는 것이 더 빠른 길일 수 있습니다.'),
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
          Get.offAll(() => ESTJ());
          Get.toNamed('/fourth7');
        },
        title: title);
  }
}
