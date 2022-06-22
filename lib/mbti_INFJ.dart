import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:itmbti/controller/init_controller.dart';
import 'package:itmbti/tools/g_button.dart';
import 'package:itmbti/tools/g_design.dart';
import 'package:itmbti/tools/g_lib.dart';
import 'package:url_launcher/url_launcher.dart';

class INFJ extends StatefulWidget {
  @override
  State<INFJ> createState() => _INFJ();
}

class _INFJ extends State<INFJ> {
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
                      '- INFJ -',
                      style: TextStyle(fontSize: 40, color: color_deep_blue),
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: margin_main_panel, bottom: margin_main_panel),
                  child: Center(
                    child: Text(
                      'CS/SW 개발자',
                      style: TextStyle(fontSize: 40),
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: margin_main_panel, bottom: margin_main_panel),
                  child: Center(
                    child: Text(
                      '(Client & Server/SoftWare) ',
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
                  child: Text(' 개발자는 IT에서 가장 기초적인 기술을 바탕으로 다양한 서비스를 ‘만드는 데’ 초점을 두고 있습니다. 프리랜서나 재택근무의 가능성이 가장 큰 직군 중의 하나입니다. 하지만 개발자라고 무조건 재택근무가 가능한 것이 아닙니다. 보통 중견기업 이상의 회사는 개인정보 또는 기업 기밀정보가 새어나가지 않도록 독자적인 내부 네트워크를 구축하여 운영합니다.'),
                ),
                Container(
                  margin: EdgeInsets.only(
                    top: margin_main_panel * 2,
                    right: margin_main_panel,
                    left: margin_main_panel,
                  ),
                  child: Text(' DMZ라는 인터넷망과 회사 내부 네트워크의 중간 지대를 만들어 외부에서 내부망으로 침입하지 못하도록 설계한 다음 그곳에서 실제 서비스를 운영합니다.'),
                ),
                Container(
                  margin: EdgeInsets.only(top: margin_main_panel * 3),
                  child: Image.asset(
                    'assets/code.png',
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
                  child: Text('CS 개발자는 프론트엔드/백엔드를 개발하는 웹 개발자와는 결이 약간 다릅니다. 아래한글, 엑셀, 파워포인트 또는 게임 등과 같이 클라이언트의 PC에 설치되어 서버와 통신하거나 독자적으로 실행되는 프로그램을 개발하는 업무를 주로 하는 개발자를 CS 개발자라고 부릅니다.'),
                ),
                Container(
                  margin: EdgeInsets.only(
                    top: margin_main_panel * 2,
                    right: margin_main_panel,
                    left: margin_main_panel,
                  ),
                  child: Text(' CS 개발과 웹 개발의 차이점은 웹 개발은 클라이언트의 요청에 따라 모든 계산을 서버에서 담당하여 데이터를 반환해 주지만, CS 개발은 클라이언트의 PC에 프로그램이 설치되어 원하는 작업을 클라이언트가 계산하기 때문에 클라이언트의 PC 성능에 따라서 속도가 달라질 수 있으며, 프로그램 형식으로 배포가 되는 특징이 있습니다.'),
                ),
                Container(
                  margin: EdgeInsets.only(top: margin_main_panel * 3),
                  child: Column(
                    children: [
                      Image.asset(
                        'assets/CS.png',
                        width: ScreenWidth,
                        height: ScreenHeight / 4,
                      ),
                      Container(
                        margin: EdgeInsets.only(top: margin_inner_widget),
                        child: Text(
                          'CS프로그램 예시1. 고객관리 프로그램 ',
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
                  child: Text(' 보통 게임 설치 후 그래픽카드의 성능에 따라서 버벅이거나, 무거운 3D 작업프로그램 또는 작곡프로그램이나 영상편집 프로그램 등을 돌릴 때 PC의 성능이 작업의 효율을 결정하는 것이 그 예시라고 할 수 있습니다. '),
                ),
                Container(
                  margin: EdgeInsets.only(top: margin_main_panel * 3),
                  child: Column(
                    children: [
                      Image.asset(
                        'assets/cs2.png',
                        width: ScreenWidth,
                        height: ScreenHeight / 4,
                      ),
                      Container(
                        margin: EdgeInsets.only(top: margin_inner_widget),
                        child: Text(
                          'CS프로그램 예시2. 작곡프로그램 ',
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
                  child: Text('CS 프로그램은 PC에만 국한되지 않고 앱 개발 또한 CS 개발에 포함이 될 수 있습니다. 하지만 앱의 경우 웹페이지를 앱으로 변환해주는 웹앱 기술 또한 떠오르고 있으므로 단순히 CS로만 분류하기에는 모호한 면이 있습니다. CS 개발자는 주로 회사 전용 프로그램을 만드는 경우가 많습니다. '),
                ),
                Container(
                  margin: EdgeInsets.only(
                    top: margin_main_panel * 2,
                    right: margin_main_panel,
                    left: margin_main_panel,
                  ),
                  child: Text('CS 개발자는 주로 화면에 그려주는 라이브러리를 많이 사용합니다. 해외에는 리눅스 사용자가 더러 있지만, 우리나라의 일반 사용자는 대부분(거의 모두) Windows를 사용하기 때문에 Windows를 바탕으로 한 프로그램을 주로 개발합니다. 최근에는 파이썬(Python)이 많이 떠오르고 있지만, 주로 스타트업 벤처기업이 많이 사용하며, 주된 시장은 C#, DotNet(.NET) 기술을 많이 사용합니다. '),
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
          Get.offAll(() => INFJ());
          Get.toNamed('/fourth7');
        },
        title: title);
  }
}
