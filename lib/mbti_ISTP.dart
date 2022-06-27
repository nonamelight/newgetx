import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:itmbti/controller/init_controller.dart';
import 'package:itmbti/tools/g_button.dart';
import 'package:itmbti/tools/g_design.dart';
import 'package:itmbti/tools/g_lib.dart';
import 'package:url_launcher/url_launcher.dart';

class ISTP extends StatefulWidget {
  @override
  State<ISTP> createState() => _ISTP();
}

class _ISTP extends State<ISTP> {
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
                      '- ISTP -',
                      style: TextStyle(fontSize: 40, color: color_deep_blue),
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: margin_main_panel, bottom: margin_main_panel),
                  child: Center(
                    child: Text(
                      '1. 보안관제',
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
                  child: Text(' 보안관제는 모니터링, 자원관리, 로그 기록, 장애 대응, 사후보고 등의 업무를 주로 수행합니다. 보안관제 수행의 3원칙은 무중단의 원칙/전문성의 원칙/정보공유의 원칙(공격확산 방지)입니다. 보안관제를 잘 하기 위해서 네트워크와 서버, 방화벽에 대한 지식이 필요하며 로그를 통해 어떠한 공격이 수행되고 있는지 볼 수 있는 안목이 필요합니다.'),
                ),
                Container(
                  margin: EdgeInsets.only(
                    top: margin_main_panel * 2,
                    right: margin_main_panel,
                    left: margin_main_panel,
                  ),
                  child: Text('  예를 들어 Dos 공격이면 한 IP에서 지속적으로 같은 로그가 쌓이겠지만, DDoS 공격이면 여러 곳의 IP에서 다량의 같은 로그가 쌓이게 될 것입니다. 이렇게 탐지한 공격은 차단하거나 적절한 대처를 수행 후 보고서를 제출합니다. '),
                ),
                Container(
                  margin: EdgeInsets.only(
                    top: margin_main_panel * 2,
                    right: margin_main_panel,
                    left: margin_main_panel,
                  ),
                  child: Text('24시간 감시해야 하는 업무 특성 때문에 교대근무로 이루어집니다. 악성코드 공격이 들어올 경우, 악성코드를 분석하여 탐지기술을 개발 후 정책에 반영하여 유사한 악성코드를 탐지/차단하도록 배포합니다.'),
                ),
                Container(
                  margin: EdgeInsets.only(top: margin_main_panel * 3),
                  child: Column(
                    children: [
                      Image.asset(
                        'assets/monitoring.png',
                        width: ScreenWidth,
                        height: ScreenHeight / 4,
                      ),
                      Container(
                        margin: EdgeInsets.only(top: margin_inner_widget),
                        child: Text(
                          '한국인터넷진흥원(KISA) 관제센터',
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
                  child: Text(' 보안 직군을 고려하는 많은 학원생을 대상으로 다른 보안업무를 수행하기 위해 보안관제를 가장 먼저 가야 한다고 권고하는 학원들이 있습니다. 사실을 말하자면 보안관제의 수행 시 보안 기본기를 쌓는 데는 많은 도움이 됩니다. 실제 보안 관제를 겪은 후 다른 분야에서 보안업무를 수행하는 실무자분께서는 보안관제의 경험이 많은 도움이 되었다고 말합니다. '),
                ),
                Container(
                  margin: EdgeInsets.only(
                    top: margin_main_panel * 2,
                    right: margin_main_panel,
                    left: margin_main_panel,
                  ),
                  child: Text(' 그러나 반드시 선행되어야 하는 필수코스는 아닙니다. 보안 관제를 겪어보지 못한 많은 보안실무자도 보안업무를 잘 수행하고 있습니다. 관제 업무가 바쁘지 않아서 자기계발 시간이 많다는 이야기가 있는데, 회사마다 환경이 다 다릅니다. '),
                ),
                Container(
                  margin: EdgeInsets.only(
                    top: margin_main_panel * 2,
                    right: margin_main_panel,
                    left: margin_main_panel,
                  ),
                  child: Text(' 보안의 다른 직군을 가기 위해서 무조건 관제를 가야 한다는 고정관념이 주로 취업률을 높이려는 학원 때문에 생기기 때문에 꼭 관제를 거쳐야 할 필요성이 있는지는 본인의 목적에 따라 잘 분별하셔야 합니다. '),
                ),
                Container(
                  margin: EdgeInsets.only(top: margin_main_panel, bottom: margin_main_panel),
                  child: Center(
                    child: Text(
                      '2. 디지털포렌식',
                      style: TextStyle(fontSize: 40),
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: margin_main_panel * 3),
                  child: Column(
                    children: [
                      Image.asset(
                        'assets/forensic.png',
                        width: ScreenWidth,
                        height: ScreenHeight / 4,
                      ),
                      Container(
                        margin: EdgeInsets.only(top: margin_inner_widget),
                        child: Text(
                          '디지털포렌식과 연관된 많은 사건',
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
                  child: Text('  포렌식(Forensic)은 법의학 분야의 용어로 가장 먼저 사용되었습니다. 포렌식은 법정의 증거를 수사하기 위해서 범죄 흔적을 수사하는 용어였습니다. 주로 검찰이 증거수집을 위해 수행하는 업무 중 디지털 증거를 수집하는 분야를 따로 분리하여 디지털포렌식이라는 이름이 붙게 되었습니다. '),
                ),
                Container(
                  margin: EdgeInsets.only(
                    top: margin_main_panel * 2,
                    right: margin_main_panel,
                    left: margin_main_panel,
                  ),
                  child: Text('디지털포렌식을 공부한 분들이 많이 데이터복구 사업체를 차려서 디지털포렌식이 데이터복구를 하는 것인 줄 알고 계신 분들이 더러 있지만, 데이터복구는 디지털포렌식 일부분이며 정당한 법적 증거수집의 절차와 함께 디지털증거수집을 위한 하드디스크/SSD의 구조, 메모리 구조, 시스템 이벤트 로그, 현장보존 기술을 배우게 됩니다. '),
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
                  child: Text(' 포렌식의 원칙은 정당성, 무결성, 연계보관설, 재현성, 신속성입니다. 정당하게 수집된 증거와 적합한 절차가 아니면 법정에서 증거로 채택되지 않으며, 증거로 채택되기 위해서 신뢰성 있도록 증거를 확보해야 합니다.'),
                ),
                Container(
                  margin: EdgeInsets.only(
                    top: margin_main_panel * 2,
                    right: margin_main_panel,
                    left: margin_main_panel,
                  ),
                  child: Text('  예를 들어서 현장을 덮쳤을 때 컴퓨터가 켜져 있는데, 컴퓨터 전원을 뽑아버려서 이벤트 로그에 ShutDown이 올라가고 메모리가 삭제된다면 현장의 증거라고 보기는 어렵습니다. 이렇게 켜져 있는 컴퓨터의 모든 메모리의 전자적 신호와 로그 및 컴퓨터의 상태를 그대로 보존하여 복사하는 기술이 필요합니다.'),
                ),
                Container(
                  margin: EdgeInsets.only(
                    top: margin_main_panel * 2,
                    right: margin_main_panel,
                    left: margin_main_panel,
                  ),
                  child: Text(' 디지털포렌식은 기계어에 가까운 어셈블리언어(Assembly)와 어셈블리언어를 다루는 툴을 주로 학습합니다. 또한, 민/형사 증거 관련 법을 함께 공부합니다. 디지털포렌식에 도전하기 위한 자격증으로는 디지털포렌식 자격증 2급이 있으며, 2급을 취득 후 경력이 쌓여야 1급에 도전할 수 있습니다.'),
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
          Get.offAll(() => ISTP());
          Get.toNamed('/fourth7');
        },
        title: title);
  }
}
