import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:itmbti/controller/init_controller.dart';
import 'package:itmbti/tools/g_button.dart';
import 'package:itmbti/tools/g_design.dart';
import 'package:itmbti/tools/g_lib.dart';
import 'package:url_launcher/url_launcher.dart';

class ESFJ extends StatefulWidget {
  @override
  State<ESFJ> createState() => _ESFJ();
}

class _ESFJ extends State<ESFJ> {
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
                      '- ESFJ -',
                      style: TextStyle(fontSize: 40, color: color_deep_blue),
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: margin_main_panel, bottom: margin_main_panel),
                  child: Center(
                    child: Text(
                      '게임 그래픽 디자이너',
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
                  child: Text(' 게임 그래픽 디자이너는 게임기획자와 게임 시나리오 작가가 구상한 내용을 참고하여 캐릭터와 배경화면 등을 구상합니다.'),
                ),
                Container(
                  margin: EdgeInsets.only(top: margin_main_panel * 3),
                  child: Column(
                    children: [
                      Image.asset(
                        'assets/unrealcity.png',
                        width: ScreenWidth,
                        height: ScreenHeight / 4,
                      ),
                      Container(
                        margin: EdgeInsets.only(top: margin_inner_widget),
                        child: Text(
                          '언리얼엔진5 공식홈페이지 소개영상中',
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
                  child: Text('스케치 작업을 거쳐 색을 입히고, 작업계획을 세워 그래픽 소프트웨어를 이용해 캐릭터의 모습과 주요 움직임, 아이템, 배경화면을 구성하여 그려넣습니다. '),
                ),
                Container(
                  margin: EdgeInsets.only(
                    top: margin_main_panel * 2,
                    right: margin_main_panel,
                    left: margin_main_panel,
                  ),
                  child: Text('게임 완성 후 캐릭터나 배경이 어색한곳을 수정 보완하며, 게임상의 메뉴, 창, 설정창 등의 인터페이스 디자인을 담당합니다.'),
                ),
                Container(
                  margin: EdgeInsets.only(top: margin_main_panel * 3),
                  child: Column(
                    children: [
                      Image.asset(
                        'assets/gamegraphic.png',
                        width: ScreenWidth,
                        height: ScreenHeight / 4,
                      ),
                      Container(
                        margin: EdgeInsets.only(top: margin_inner_widget),
                        child: Text(
                          '게임그래픽 디자인',
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
                  child: Text('모델러가 만들어 놓은 입체물에 색감이나 질감을 입히며, 캐릭터나 배경을 3D 프로그램을 이용하여 만들기도 합니다. 반복되는 동작들을 정교화하며 각종 이펙트를 제작합니다.'),
                ),
                Container(
                  margin: EdgeInsets.only(
                    top: margin_main_panel * 2,
                    right: margin_main_panel,
                    left: margin_main_panel,
                  ),
                  child: Text('게임그래픽 디자이너가 되기 위해서는 전문대학이나 대학교의 디자인/멀티미디어/컴퓨터그래픽 관련 학과를 전공하거나 웹/게임/컴퓨터그래픽 전문 교육기관에서 훈련을 받는것이 좋습니다.'),
                ),
                Container(
                  margin: EdgeInsets.only(
                    top: margin_main_panel * 2,
                    right: margin_main_panel,
                    left: margin_main_panel,
                  ),
                  child: Text('게임 그래픽 업계에서 신입사원에게 요구하는 스펙은 실무에 바로 투입할 수 있는 수준을 요구하고 있기 때문에, 포토샵, 맥스, 게임엔진, 서브스턴스 페인터는 기본이고 실무에 바로 쓸 수 있는 미적감각을 요구하기도 합니다.'),
                ),
                Container(
                  margin: EdgeInsets.only(top: margin_main_panel * 3),
                  child: Column(
                    children: [
                      Image.asset(
                        'assets/crying.png',
                        width: ScreenWidth,
                        height: ScreenHeight / 4,
                      ),
                      Container(
                        margin: EdgeInsets.only(top: margin_inner_widget),
                        child: Text(
                          '게임그래픽 디자인2',
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
                  child: Text('때문에 정말 그림을 그리는것이나 미술 공예를 좋아하는 사람이 취업에 유리합니다.'),
                ),
                Container(
                  margin: EdgeInsets.only(top: margin_main_panel * 3, bottom: margin_main_panel),
                  child: Center(
                    child: Text(
                      '메타버스 디자이너',
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
                  child: Text('최근 새롭게 떠오르고 있는 메타버스는 메타버스를 구성하는 기술과 플랫폼을 바탕으로 새로운 직업이 생기고 있습니다. 메타버스의 디자이너로는 아바타 의상디자이너와 가상세계 배경을 만드는 디자이너가 있습니다.'),
                ),
                Container(
                  margin: EdgeInsets.only(top: margin_main_panel * 3),
                  child: Column(
                    children: [
                      Image.asset(
                        'assets/naverz.png',
                        width: ScreenWidth,
                        height: ScreenHeight / 4,
                      ),
                      Container(
                        margin: EdgeInsets.only(top: margin_inner_widget),
                        child: Text(
                          '네이버 제페토 아바타',
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
                  child: Text(' 메타버스에서 디자인으로 수익을 창출하는 플랫폼으로는 로블록스, 제페토가 대표적이라고 할 수 있습니다. 가상 세계인 메타버스의 디자인의 시장성을 인정한 대기업 구찌, 디올, 자라, 나이키, 랄프로렌 등 패션 브랜드도 메타버스 사업에 적극적으로 뛰어들고 있습니다. '),
                ),
                Container(
                  margin: EdgeInsets.only(
                    top: margin_main_panel * 2,
                    right: margin_main_panel,
                    left: margin_main_panel,
                  ),
                  child: Text('메타버스 3D 그래픽을 다루기 위해서는 Maya, Max 등의 디자인 프로그램을 다룰 수 있어야합니다. 경우에 따라 게임개발 엔진인 Unity기술을 요구하기도 합니다.'),
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
          Get.offAll(() => ESFJ());
          Get.toNamed('/fourth7');
        },
        title: title);
  }
}
