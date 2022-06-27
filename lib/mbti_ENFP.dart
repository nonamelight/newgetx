import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:itmbti/controller/init_controller.dart';
import 'package:itmbti/tools/g_button.dart';
import 'package:itmbti/tools/g_design.dart';
import 'package:itmbti/tools/g_lib.dart';
import 'package:url_launcher/url_launcher.dart';

class ENFP extends StatefulWidget {
  @override
  State<ENFP> createState() => _ENFP();
}

class _ENFP extends State<ENFP> {
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
                      '- ENFP -',
                      style: TextStyle(fontSize: 40, color: color_deep_blue),
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: margin_main_panel, bottom: margin_main_panel),
                  child: Center(
                    child: Text(
                      '프론트엔드 개발자',
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
                    'assets/baemin.png',
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
                  child: Text('직장내 프론트엔드 개발자는 대개 기획에 따라 움직입니다. 웹 디자이너가 디자인에 대한 뼈대를 잡으면 퍼블리셔가 디자인에 관한 내용을 채워줍니다. 그러면 프론트엔드 개발자는 이렇게 설계된 디자인에 대한 효과를 넣어줍니다. 즉, 웹페이지의 전면부 효과를 개발하는 역할입니다. '),
                ),
                Container(
                  margin: EdgeInsets.only(
                    top: margin_main_panel * 2,
                    right: margin_main_panel,
                    left: margin_main_panel,
                  ),
                  child: Text('최근에는 퍼블리셔와 프론트엔드 개발자의 경계가 모호해지고 있습니다. 외국은 퍼블리셔의 개념 자체가 없다고 말하기도 합니다. 프론트엔드 개발자는 버튼을 누르면 메뉴가 스르륵 나온다던지, 글씨가 이동한다던지, 스크롤바를 돌리면 사진이 유동적으로 움직인다던지 등의 기능을 요구에 따라 넣어줍니다. 배달의 민족 홈페이지에 들어갔을 때 스크롤 바를 움직이면 페이지 단위로 사진이 넘어가는 것이 대표적인 예시입니다.'),
                ),
                Container(
                  margin: EdgeInsets.only(top: margin_main_panel * 3),
                  child: Column(
                    children: [
                      Image.asset(
                        'assets/code.png',
                        width: ScreenWidth,
                        height: ScreenHeight / 4,
                      ),
                      Container(
                        margin: EdgeInsets.only(top: margin_inner_widget),
                        child: Text(
                          '코딩화면',
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
                  child: Text('  프론트엔드 개발자들의 작업은 보통 인터넷 익스플로러나 구글 크롬을 열고서 F12 키를 누르면 보이는 소스코드로 확인할 수 있습니다. 물론 보안이 철저한 기업일수록 화면에 뿌려지는 소스코드만 노출하고 계산이 되거나 효과가 보이는 소스코드는 노출시키지 않습니다. 왜냐하면, 이렇게 노출되는 계산 소스코드를 악용하여 해킹에 이용되기도 하기 때문입니다. '),
                ),
                Container(
                  margin: EdgeInsets.only(
                    top: margin_main_panel * 2,
                    right: margin_main_panel,
                    left: margin_main_panel,
                  ),
                  child: Text('프론트엔드에 대한 취업을 원하시거나 학습하기를 원하시는 분께서는 HTML, CSS에 대한 학습은 필수입니다. HTML과 CSS는 단순하게 웹 브라우저에 글씨나 표, 그림을 보여주고 꾸며주는 역할을 합니다. 그리고 이렇게 꾸며진 것을 다양하게 효과를 주기 위한 기술로 Javascript, React, Vue.js 등의 기술이 있습니다. '),
                ),
                Container(
                  margin: EdgeInsets.only(top: margin_main_panel, bottom: margin_main_panel),
                  child: Center(
                    child: Text(
                      '보안컨설팅',
                      style: TextStyle(fontSize: 40),
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: margin_main_panel * 3),
                  child: Column(
                    children: [
                      Image.asset(
                        'assets/meetpeople.jpg',
                        width: ScreenWidth,
                        height: ScreenHeight / 4,
                      ),
                      Container(
                        margin: EdgeInsets.only(top: margin_inner_widget),
                        child: Text(
                          '컨설팅의 특성상 사람을 많이 만난다',
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
                  child: Text(' 보안컨설팅은 상시 존재하는 위협과 취약점을 정확히 파악하고 분석/평가하여 고객 맞춤형 최적의 보호 대책을 제시하는 직업입니다. 내부/외부로부터 침해사고를 예방하고, 빠른 탐지/신속한 복구가 가능하도록 체계를 정비하도록 컨설팅을 해줍니다. '),
                ),
                Container(
                  margin: EdgeInsets.only(
                    top: margin_main_panel * 2,
                    right: margin_main_panel,
                    left: margin_main_panel,
                  ),
                  child: Text(' 또한, 지속적인 위험관리로 정보보호 수준을 향상하고, 체계적인 위험 통제를 목표로 합니다. 모의해킹 또한 보안컨설팅과 마찬가지로 기술적인 위협과 취약점에 대한 분석으로 보완해야 할 보고서를 제공한다는 점에서 보안컨설팅 일부이지만, 보안컨설팅은 조금 더 포괄적인 컨설팅을 말합니다. 기술적인 지식을 바탕으로 관리적, 제도적인 부분의 고려사항을 고객에게 제공해야 합니다. '),
                ),
                Container(
                  margin: EdgeInsets.only(top: margin_main_panel * 3),
                  child: Column(
                    children: [
                      Image.asset(
                        'assets/consult.png',
                        width: ScreenWidth,
                        height: ScreenHeight / 4,
                      ),
                      Container(
                        margin: EdgeInsets.only(top: margin_inner_widget),
                        child: Text(
                          '정보보호 컨설팅 범위와 종류 ',
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
                  child: Text(' 그 때문에 왜 이러한 고려사항이 필요한지에 대하여 근거를 말할 수 있어야 하며, 근거를 바탕으로 설계될 모델이나 네트워크 구성도 또는 보안 정책 등이 PPT 혹은 문서로 나와야 합니다. 정답이 없어서 어려워하는 고객에게 기준점과 정답을 제시해줘야 하므로 문제해결 능력, 논리적인 사고, 연구능력이 요구됩니다. '),
                ),
                Container(
                  margin: EdgeInsets.only(
                    top: margin_main_panel * 2,
                    right: margin_main_panel,
                    left: margin_main_panel,
                  ),
                  child: Text(' 또한, 직접 출장을 다니거나 고객을 만나며 회의를 진행하는 경우가 다수 있으므로 대인관계 능력, 의사소통 능력, 발표능력이 요구됩니다. 이렇게 요구사항 정의와 달성해야 할 목표가 나왔다면 목표를 달성할 수 있도록 사업관리와 각 부분에 적합하게 필요한 업체 혹은 인재를 배치하는 팀워크 능력이 필요합니다.'),
                ),
                Container(
                  margin: EdgeInsets.only(
                    top: margin_main_panel * 2,
                    right: margin_main_panel,
                    left: margin_main_panel,
                  ),
                  child: Text(' 그 때문에 보안업계에서 보안컨설팅을 말하는 것은 모의해킹보다는 관리적/제도적 측면의 인문학적 컨설팅을 일컫는 경우가 많습니다. 이러한 이유로 같은 컨설팅이지만 기술적인 모의해킹과 인문학적인 보안컨설팅을 분리하여 설명합니다. 컨설팅 관련 자격증으로는 ISMS/ISMP-P, ISO27001, PIA, CPPG, 정보보안기사, CISA/CISSP 등이 있습니다.'),
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
          Get.offAll(() => ENFP());
          Get.toNamed('/fourth7');
        },
        title: title);
  }
}
