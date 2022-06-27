import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:itmbti/controller/init_controller.dart';
import 'package:itmbti/tools/g_button.dart';
import 'package:itmbti/tools/g_design.dart';
import 'package:itmbti/tools/g_lib.dart';
import 'package:url_launcher/url_launcher.dart';

class INFP extends StatefulWidget {
  @override
  State<INFP> createState() => _INFP();
}

class _INFP extends State<INFP> {
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
                      '- INFP -',
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
                      '앱/웹 디자이너',
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
                  child: Text(' 웹/앱 디자이너는 마케터들이 기획한 상품이나 프로모션을 각 온라인 채널(웹사이트, 앱, 이메일 등)에 맞게 디자인을 하거나, 웹사이트의 UI를 부분적으로 개선하는 작업을 주로 맡습니다. 마케팅터들은 더 자극적이고 화려한 디자인을 원하기 때문에 다양한 요구를 하지만, 디자인을 실현하기 위해 개발자들이 코딩으로 웹/앱에 적용을 해야하기 때문에 기술적으로 가능한 선에서 협상을 진행하기도합니다.'),
                ),
                Container(
                  margin: EdgeInsets.only(
                    top: margin_main_panel * 2,
                    right: margin_main_panel,
                    left: margin_main_panel,
                  ),
                  child: Text('대부분의 IT 회사들은 온라인으로 마케팅하는 채널과 홈페이지 또는 앱이 있습니다. 이러한 아이템의 메인, 상세페이지,배너 등의 디자인을 진행하며 같은 디자인이더라도 디바이스의 환경에 따라 다른 크기로 그리기도 합니다.'),
                ),
                Container(
                  margin: EdgeInsets.only(top: margin_main_panel * 3),
                  child: Column(
                    children: [
                      Image.asset(
                        'assets/baemin.png',
                        width: ScreenWidth,
                        height: ScreenHeight / 4,
                      ),
                      Container(
                        margin: EdgeInsets.only(top: margin_inner_widget),
                        child: Text(
                          '배달의 민족 웹페이지 메인화면. ',
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
                  child: Text(' 디자이너를 시작하기위해 기본적인 디자인툴(스케치, 피그마, 어도비 XD)를 다룰 줄 알아야하고 아이콘이나 일러스트레이션을 만들기 위해 어도비 일러스트레이터 프로그램을 사용할 줄 알면 좋습니다.'),
                ),
                Container(
                  margin: EdgeInsets.only(
                    top: margin_main_panel * 2,
                    right: margin_main_panel,
                    left: margin_main_panel,
                  ),
                  child: Text(' 또한 퍼블리싱이라고 부르는 HTML, CSS, 자바스크립트는 디자인을 구조화하여 코딩으로 구현하는 기술입니다. 중견기업 이상에서는 개발자가 있어서 퍼블리셔와 개발자의 경계가 모호하지만, 중소기업에서는 디자이너에게 퍼블리싱, 더 나아가 디자인 기획까지 요구하는 경우가 많이 있습니다.'),
                ),
                Container(
                  margin: EdgeInsets.only(top: margin_main_panel * 3),
                  child: Column(
                    children: [
                      Image.asset(
                        'assets/naverhtml.png',
                        width: ScreenWidth,
                        height: ScreenHeight / 4,
                      ),
                      Container(
                        margin: EdgeInsets.only(top: margin_inner_widget),
                        child: Text(
                          '크롬에서 F12를 누르면 보이는 HTML 코드',
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
                  child: Text(' 경력 디자이너들의 이야기에 의하면 사실상 디자인의 실력보다 디자인을 의뢰하는 커스터머의 의견이 더 중요하다고 합니다. 디자인은 개인의 취향이나 관점이 보는사람마다 다를수 있어서 디자인에 대한 의견을 좁혀가는 기술이 중요합니다.'),
                ),
                Container(
                  margin: EdgeInsets.only(
                    top: margin_main_panel * 2,
                    right: margin_main_panel,
                    left: margin_main_panel,
                  ),
                  child: Text(' 디자인의 척도가 상대적이다보니 디자이너의 평균 초봉은 많이 낮은편이며 기업의 크기에 따라 연봉이 많이 결정됩니다. 그러나 디자이너의 큰 장점이라고 하면 경력과 실력에 따라 외주를 받아 부수입을 벌 수 있다는 점입니다. '),
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
          Get.offAll(() => INFP());
          Get.toNamed('/fourth7');
        },
        title: title);
  }
}
