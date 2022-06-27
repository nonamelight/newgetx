import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:itmbti/controller/init_controller.dart';
import 'package:itmbti/tools/g_button.dart';
import 'package:itmbti/tools/g_design.dart';
import 'package:itmbti/tools/g_lib.dart';
import 'package:url_launcher/url_launcher.dart';

class INTP extends StatefulWidget {
  @override
  State<INTP> createState() => _INTP();
}

class _INTP extends State<INTP> {
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
                      '- INTP -',
                      style: TextStyle(fontSize: 40, color: color_deep_blue),
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: margin_main_panel, bottom: margin_main_panel),
                  child: Center(
                    child: Text(
                      '모의해커',
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
                  child: Text('  모의해킹은 대상 정보시스템 자산의 취약점과 통제 공동(Control hole) 내역을 파악하기 위해 해커 및 크래커들이 사용하는 기법을 이용하는 모의 침투 테스트입니다. 모의해킹은 대상정보 시스템 자산에 대한 보안 운영상의 취약점을 파악한 후 개선 사항을 제시하기 위한 것입니다. '),
                ),
                Container(
                  margin: EdgeInsets.only(
                    top: margin_main_panel * 2,
                    right: margin_main_panel,
                    left: margin_main_panel,
                  ),
                  child: Text(' 모의해킹과 악의적인 해킹은 허락을 받고 하느냐/받지 않고 하느냐, 취약점에 대해서 상대방에게 알리느냐/알리지 않고 불법으로 이용하느냐의 차이라고 볼 수 있습니다. 그 때문에 실력보다 윤리적인 자세와 태도가 더욱 요구됩니다. 기업에서도 모의 해커를 채용할 때 실력보다 인성과 윤리 사상을 면접하는 이유가 이것 때문입니다. 실력은 기업에서 길러줘도 되지만, 윤리 의식이 결여된다면 기업뿐만 아니라 사회가 위험해질 수도 있기 때문입니다. '),
                ),
                Container(
                  margin: EdgeInsets.only(top: margin_main_panel * 3),
                  child: Image.asset(
                    'assets/testhk.png',
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
                  child: Text(' 영화에서 보는 해킹은 대부분 허구적인 경우가 많습니다. 보통 영화처럼 한 시스템의 권한을 모두 획득하여 내 마음대로 조작할 정도가 될 정도면 적어도 3년~10년 정도의 정찰 기간이 필요합니다. 해커들이 사용하거나 학습 시에 사용하는 칼리 리눅스(Kali Linux)에서는 “The quieter you become, the more you are able to hear(더 조용하면 더 많이 들린다)”를 모토로 내세우고 있습니다. '),
                ),
                Container(
                  margin: EdgeInsets.only(
                    top: margin_main_panel * 2,
                    right: margin_main_panel,
                    left: margin_main_panel,
                  ),
                  child: Text(' 스캐닝이 완료되면 취약점 분석을 통해 침투를 하게 됩니다. 권한 상승 이후 원하는 정보를 가져가고, 백도어를 만든 다음 로그를 지우고 나오는 것은 그렇게 오래 걸리지 않습니다. '),
                ),
                Container(
                  margin: EdgeInsets.only(top: margin_main_panel * 3),
                  child: Column(
                    children: [
                      Image.asset(
                        'assets/kisahk.png',
                        width: ScreenWidth,
                        height: ScreenHeight / 4,
                      ),
                      Container(
                        margin: EdgeInsets.only(top: margin_inner_widget),
                        child: Text(
                          '출처: KISA 모의해킹수행절차',
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
                  child: Text('  모의해킹이 시행되면 기업에서 요구하는 범위에 한정하여 수행하는 경우가 많습니다. 아무 정보도 없이 블라인드로 모의해킹을 하면 비용도 많이 들뿐더러 오래 걸리기 때문에 이런 요구를 하는 기업은 거의 없습니다. 모의해킹을 요청하는 목적은 대부분 ‘취약점에 대하여 안전하게 조치하였다’라는 보고서를 갖추기 위함이 큽니다. 그 때문에 연구사업이 아닌 이상, 모의해킹의 범위는 생각보다 단조롭고 반복적일 수 있습니다. '),
                ),
                Container(
                  margin: EdgeInsets.only(top: margin_main_panel * 3, bottom: margin_main_panel),
                  child: Center(
                    child: Text(
                      '악성코드 분석',
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
                  child: Text('  악성코드 분석은 악의적인 목적을 하는 코드를 분석하는 직업입니다. 보안의 꽃이라고 불리는 분야를 이야기하자면 빠지지 않는 분야입니다. 당연히 코딩능력이 필수적이며, 악성코드는 주로 시스템과 네트워크를 타겟으로 이루어지기 때문에 시스템과 네트워크에 대한 종합적인 이해가 필요하며, 특히 프로세스와 프로그램 동작 구조에 대한 지식이 깊게 필요합니다. '),
                ),
                Container(
                  margin: EdgeInsets.only(
                    top: margin_main_panel * 2,
                    right: margin_main_panel,
                    left: margin_main_panel,
                  ),
                  child: Text(' 보통 악성코드가 날것의 코드로 오는 경우는 거의 없습니다. 컴파일러를 통해 컴퓨터가 알 수 있는 바이너리 파일로 바뀌어서 작동하기 때문에 리버스 엔지니어링을 통해서 역으로 코드로 구현하는 경우가 많습니다. 어떤 악성코드는 날것의 코드로 오기도 하지만, 변수명 수백 개가 a, b, c, a1, B1, c1과같이 단순하게 되어 알아보기 힘들거나 난독 화가 되어 해석 또는 리버스 엔지니어링이 힘들기도 합니다. '),
                ),
                Container(
                  margin: EdgeInsets.only(top: margin_main_panel * 3),
                  child: Column(
                    children: [
                      Image.asset(
                        'assets/binary.png',
                        width: ScreenWidth,
                        height: ScreenHeight / 4,
                      ),
                      Container(
                        margin: EdgeInsets.only(top: margin_inner_widget),
                        child: Text(
                          '바이너리 파일 예시',
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
                  child: Text(' 매우 고급기술이 요구되기 때문에 신입은 거의 없습니다. 보통 신입의 스펙 예시를 들자면, 워너크라이라는 랜섬웨어를 분석하여 보고서를 다수 제작하고, 백신 구조를 설계 및 제작하여 포트폴리오를 제출했더니 겨우 기본이 되었다고 신입으로 받아줬다는 일화가 있습니다.'),
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
          Get.offAll(() => INTP());
          Get.toNamed('/fourth7');
        },
        title: title);
  }
}
