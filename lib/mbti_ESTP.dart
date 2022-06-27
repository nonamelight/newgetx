import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:itmbti/controller/init_controller.dart';
import 'package:itmbti/tools/g_button.dart';
import 'package:itmbti/tools/g_design.dart';
import 'package:itmbti/tools/g_lib.dart';
import 'package:url_launcher/url_launcher.dart';

class ESTP extends StatefulWidget {
  @override
  State<ESTP> createState() => _ESTP();
}

class _ESTP extends State<ESTP> {
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
                      '- ESTP -',
                      style: TextStyle(fontSize: 40, color: color_deep_blue),
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: margin_main_panel, bottom: margin_main_panel),
                  child: Center(
                    child: Text(
                      '네트워크 엔지니어',
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
                  child: Text('  네트워크 엔지니어는 통신에 관련된 장비를 주로 다루게 됩니다. 스위치, 라우터 등에 접근하여 명령어를 통해 네트워크망을 구성합니다. 우리가 인터넷을 신청하면 출동하는 KT나 LG U+, SKT 등의 기사님들도 네트워크 엔지니어에 포함이 됩니다. 이런 기사님들처럼 전봇대를 오르내리며 랜선작업을 하는 경우도 있지만, 서버실에 들어가서 네트워크를 서로 묶어주는 스위치와 라우터와 같은 기기를 만져야하는 경우도 있습니다.'),
                ),
                Container(
                  margin: EdgeInsets.only(
                    top: margin_main_panel * 2,
                    right: margin_main_panel,
                    left: margin_main_panel,
                  ),
                  child: Text('작게는 업무망, 전화망 등을 다루지만, 크게는 도시/국가의 인터넷 망을 다루기도 합니다. 큰 네트워크를 다루는 사람은 실수로 날린 명령어 하나로 도시의 인터넷 전체가 마비될 수도 있습니다. 물론, 그런 중대한 업무에는 실수를 방지하기 위해 미리 명령어를 검토하고 가겠지만요. '),
                ),
                Container(
                  margin: EdgeInsets.only(top: margin_main_panel * 3),
                  child: Image.asset(
                    'assets/nettools.png',
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
                  child: Text('네트워크는 다양한 프로토콜이 존재합니다. 전화선, 인터넷, 무선통신, 블루투스가 모두 통신하는 프로토콜이 다릅니다. 특히 네트워크는 해커가 네트워크를 염탐할 수 있기 때문에 VPN 터널링이나 폐쇄망, 전용선구축 등 보안 통신 기술이 함께 요구되기도 합니다. 더 나아가서는 네트워크 내에 묶여있는 특정 기기나 주소 등을 차단하는 방화벽을 다루기도 합니다. '),
                ),
                Container(
                  margin: EdgeInsets.only(
                    top: margin_main_panel * 2,
                    right: margin_main_panel,
                    left: margin_main_panel,
                  ),
                  child: Text(' IT 분야가 발전하면서 컴맹이라는 용어 이후 넷맹이라는 용어가 새로 생겼습니다. 네트워크의 프로토콜을 알지 못하면 개발을 하거나 서버를 운영할 때에 많은 난관에 부딪히게 됩니다. 요즘 인터넷 없는 PC는 찾아보기 힘들 정도로 대부분의 PC가 네트워크에 묶이게 됩니다.'),
                ),
                Container(
                  margin: EdgeInsets.only(
                    top: margin_main_panel * 2,
                    right: margin_main_panel,
                    left: margin_main_panel,
                  ),
                  child: Text(' 온라인 서비스를 운영하다가 장애가 발생하였을 때, 하드웨어의 문제인지, 시스템의 문제인지, 네트워크의 문제인지, 클라이언트의 문제인지를 진단하게 됩니다. 네트워크에 대한 지식이 없다면 시스템 운영이 힘들다는 이유는 이 때문입니다. 네트워크 엔지니어는 이보다 더 심도있는 기술력을 갖춰야 합니다. '),
                ),
                Container(
                  margin: EdgeInsets.only(top: margin_main_panel * 3),
                  child: Column(
                    children: [
                      Image.asset(
                        'assets/networkengineer.png',
                        width: ScreenWidth,
                        height: ScreenHeight / 4,
                      ),
                      Container(
                        margin: EdgeInsets.only(top: margin_inner_widget),
                        child: Text(
                          '네트워크 엔지니어',
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
                  child: Text('수많은 서버와 PC를 같거나 다른 네트워크로 묶고, 각각의 클라이언트들에게 자동/수동으로 고유의 네트워크 주소를 할당해 주어야 합니다. 때로는 외부에서 내부로 들어올 수 없도록 네트워크를 분리하는 작업을 요구받을 수도 있습니다. 새벽에 네트워크 장애가 발생한다면 비자발적인 출근을 하게 되는 경우도 있습니다. '),
                ),
                Container(
                  margin: EdgeInsets.only(
                    top: margin_main_panel * 2,
                    right: margin_main_panel,
                    left: margin_main_panel,
                  ),
                  child: Text(' 네트워크 엔지니어링 기술이 익숙해진다면 네트워크 관리자의 길을 생각해 볼 수도 있습니다. 네트워크 관리자는 엔지니어링 기술은 일부 맡고, 대부분 네트워크의 설계나 방화벽 정책 설정, 통제, 기획 등의 업무를 맡습니다. 기술보다는 문서와 친해지게 될수도 있습니다. 네트워크 지식을 통해 다양한 경우의 수를 생각하여 안전하고 효율적으로 네트워크를 설계해야 하는 책임이 있습니다.'),
                ),
                Container(
                  margin: EdgeInsets.only(
                    top: margin_main_panel * 2,
                    right: margin_main_panel,
                    left: margin_main_panel,
                  ),
                  child: Text(' 네트워크를 공부하기 위해서는 국내 자격증으로는 네트워크관리사 2급/1급이 있으며, 라우터와 스위치의 대부분의 시장을 장악하고 있는 CISCO 사의 사설 자격증 CCNA/CCNP를 취득한다면 네트워크 취업 쪽에 유리할 수 있습니다. 왜냐하면, CISCO 사에서 CCNP 자격증을 가진 엔지니어에게 CISCO 장비를 대폭 할인해주기 때문에 네트워크 장비를 사고파는 기업에서는 CISCO 자격증을 소지한 엔지니어를 선호하기도 합니다.'),
                ),
                Container(
                  margin: EdgeInsets.only(top: margin_main_panel * 3),
                  child: Column(
                    children: [
                      Image.asset(
                        'assets/cisco.png',
                        width: ScreenWidth,
                        height: ScreenHeight / 4,
                      ),
                      Container(
                        margin: EdgeInsets.only(top: margin_inner_widget),
                        child: Text(
                          '네트워크관련 CISCO 자격증',
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
                  child: Text('  단순 장비 할인뿐만 아니라 CCNA/CCNP 자격증을 갖고 있다는 것은 라우터/스위치의 명령어를 통해 네트워크를 구축할 수 있다는 기초실력 증명이 되기도 합니다. CCNP는 CCNA 자격이 있어야 응시할 수 있습니다. CCNA는 비록 영문으로 시험이 이루어지지만, 덤프가 대부분입니다. CISCO의 자격증은 비록 민간자격증이지만, 네트워크 관리가 필요한 많은 기업에서 실질적인 가치를 인정합니다. 네트워크 각 자격증은 한화로 약 30~35만 원 정도 접수비용이 들어갑니다.'),
                ),
                Container(
                  margin: EdgeInsets.only(
                    top: margin_main_panel * 2,
                    right: margin_main_panel,
                    left: margin_main_panel,
                  ),
                  child: Text(' CCNP 위에는 CCIE, CCA 자격증이 있는데, 이는 가진 사람이 손에 꼽을 정도로 매우 어려운 난이도이며, 해당 분야의 전문가임을 공인받았다는 증거로 보기도 합니다. 만약 무선 쪽 엔지니어를 계획한다면 정보통신기사 자격증 또한 생각해볼 수 있습니다.'),
                ),
                GButton().BaseButton(
                    marginTop: margin_main_panel * 2,
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
          Get.offAll(() => ESTP());
          Get.toNamed('/fourth7');
        },
        title: title);
  }
}
