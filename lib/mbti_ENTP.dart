import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:itmbti/controller/init_controller.dart';
import 'package:itmbti/tools/g_button.dart';
import 'package:itmbti/tools/g_design.dart';
import 'package:itmbti/tools/g_lib.dart';
import 'package:url_launcher/url_launcher.dart';

class ENTP extends StatefulWidget {
  @override
  State<ENTP> createState() => _ENTP();
}

class _ENTP extends State<ENTP> {
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
                      '- ENTP -',
                      style: TextStyle(fontSize: 40, color: color_deep_blue),
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: margin_main_panel, bottom: margin_main_panel),
                  child: Center(
                    child: Text(
                      '게임 개발자',
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
                  child: Text(' CS 산업 중 일부인 게임 산업은 그 산업이 매우 독특합니다. 개발의 꽃이라고 부를 정도로 모든 개발 지식의 집약체라고 볼 수 있습니다. 게임 산업은 C++과 C#이 주류 언어입니다. '),
                ),
                Container(
                  margin: EdgeInsets.only(
                    top: margin_main_panel * 2,
                    right: margin_main_panel,
                    left: margin_main_panel,
                  ),
                  child: Text('3D 게임을 개발하기 위해서 3D 디자인에 대해서 학습해야 하는 경우도 있으며, FPS 게임의 코어개발 같은 경우에는 탄도학과 물리학까지 계산되기도 합니다(그러나 탄도학과 물리학을 학습해야 하는 경우는 매우 드뭅니다). '),
                ),
                Container(
                  margin: EdgeInsets.only(
                    top: margin_main_panel * 2,
                    right: margin_main_panel,
                    left: margin_main_panel,
                  ),
                  child: Text('사용자의 동선을 학습하여 공격하는 AI가 적용되기도 하며, 최근에는 블록체인 토큰을 사용한 NFC 기술을 바탕으로 창작에 대한 저작권을 보장해 주는 메타버스라고 하는 온라인 게임 또한 출시되었습니다. 일반적인 게임 개발이라고 하면, 게임을 개발하기 위한 특수한 엔진인 언리얼 엔진, Unity를 추가로 학습하여야 합니다. '),
                ),
                Container(
                  margin: EdgeInsets.only(top: margin_main_panel * 3),
                  child: Column(
                    children: [
                      Image.asset(
                        'assets/unrealmain.png',
                        width: ScreenWidth,
                        height: ScreenHeight / 4,
                      ),
                      Container(
                        margin: EdgeInsets.only(top: margin_inner_widget),
                        child: Text(
                          '언리얼엔진 공식 홈페이지 메인화면',
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
                  child: Text('  언리얼 엔진과 Unity의 차이라고 하면, 개발 환경과 수익 발생 시 수수료라고 볼 수 있습니다. 또한, 언리얼 엔진은 C++를 주로 사용하지만, Unity는 C#을 기본 스크립트 언어로 사용합니다. Unity가 2D와 같은 단순한 게임에 특화되어있다고 한다면 언리얼 엔진은 3D 게임과 같은 고성능 게임을 개발하는데 특화가 되어있습니다.'),
                ),
                Container(
                  margin: EdgeInsets.only(
                    top: margin_main_panel * 2,
                    right: margin_main_panel,
                    left: margin_main_panel,
                  ),
                  child: Text(' 그렇다고 Unity가 3D를 개발하지 못하는 것은 아니지만, 만화 같은 3D 그래픽을 표현하는 데는 Unity, 현실 같은 그래픽을 표현하는 데에는 언리얼 엔진이 특화되어있다고 보시면 됩니다. 덧붙여서 언리얼 엔진은 블루프린팅이라고 하여 개발 언어를 모르는 사람도 알고리즘을 시각적으로 디자인하여 게임을 개발할 수 있는 환경을 제공해줍니다.'),
                ),
                Container(
                  margin: EdgeInsets.only(top: margin_main_panel * 3),
                  child: Column(
                    children: [
                      Image.asset(
                        'assets/unitymain.png',
                        width: ScreenWidth,
                        height: ScreenHeight / 4,
                      ),
                      Container(
                        margin: EdgeInsets.only(top: margin_inner_widget),
                        child: Text(
                          'Unity 공식 홈페이지 메인화면',
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
                  child: Text(' 위의 엔진들을 사용하여 만든 대표적인 게임으로는 Unity로 만든 하스스톤, 포켓몬GO, 테라M 등이 있으며, 언리얼 엔진으로 만든 리니지2레볼루션, 스트리트파이터 5, 배틀그라운드가 있습니다.'),
                ),
                Container(
                  margin: EdgeInsets.only(
                    top: margin_main_panel * 2,
                    right: margin_main_panel,
                    left: margin_main_panel,
                  ),
                  child: Text('Unity의 경우 Unity를 통해 개발한 앱이 연 1억 원의 수익이 나게 된다면 무료 라이센스가 아니라 유료 라이센스를 사용해야합니다. 반면 언리얼엔진은 만들어진 게임이 수익이 발생하면 무조건 수익의 5%만큼 로열티를 지불해야합니다. 언리얼엔진은 공식 문서가 한글화가 되어있기 때문에 한국인에게 조금 더 접근성이 좋다고 할 수 있습니다.'),
                ),
                Container(
                  margin: EdgeInsets.only(top: margin_main_panel * 3),
                  child: Column(
                    children: [
                      Image.asset(
                        'assets/gamestudy.png',
                        width: ScreenWidth,
                        height: ScreenHeight / 4,
                      ),
                      Container(
                        margin: EdgeInsets.only(top: margin_inner_widget),
                        child: Text(
                          '각 엔진의 홈페이지에서 제공하는 무료강의',
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
                  child: Text(' 게임 엔진을 학습하는 방법은 의외로 간단합니다. 각 엔진의 공식 홈페이지에 접속하면 엔진을 활용하는 방법에 대한 문서와 동영상 강의를 무료로 배포합니다. 단, Unity는 대부분 영어 강의이며 일부 한국어 강의를 제공합니다.'),
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
          Get.offAll(() => ENTP());
          Get.toNamed('/fourth7');
        },
        title: title);
  }
}
