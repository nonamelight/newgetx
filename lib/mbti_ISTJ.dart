import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:itmbti/controller/init_controller.dart';
import 'package:itmbti/tools/g_button.dart';
import 'package:itmbti/tools/g_design.dart';
import 'package:itmbti/tools/g_lib.dart';
import 'package:url_launcher/url_launcher.dart';

class ISTJ extends StatefulWidget {
  @override
  State<ISTJ> createState() => _ISTJ();
}

class _ISTJ extends State<ISTJ> {
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
                      '- ISTJ -',
                      style: TextStyle(fontSize: 40, color: color_deep_blue),
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: margin_main_panel, bottom: margin_main_panel),
                  child: Center(
                    child: Text(
                      '1.시스템 관리자',
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
                  child: Text('컴퓨터 시스템이나 네트워크를 운영하고 유지보수하는 업무를 주로 맡습니다. 시스템의 자원이 충분한지 모니터링하며, 시스템이 오작동할 경우 정상 작동하도록 만들어야 하는 책임이 있습니다. 오작동할 경우 직접 작동하도록 기술을 사용할 수도 있겠지만, 시스템을 구축했던 외주업체가 있다면 연락하여 기술지원을 요청해야 합니다. '),
                ),
                Container(
                  margin: EdgeInsets.only(top: margin_main_panel * 3),
                  child: Image.asset(
                    'assets/fourth1.jpg',
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
                    child: Text(' 시스템의 용도에 따라 서버 관리 방법이 각각 다르므로 다양한 서비스에 대한 이해가 필요합니다. 서비스 또한 네트워크를 통해 이루어지기 때문에 네트워크 지식은 당연히 필요합니다. 시스템의 운영이 잘 되고 있는지, 관리가 잘 되고 있는지는 대부분 증적을 남겨야 하기 때문에 문서작업 업무가 상당수를 차지합니다. 보안 담당자가 없다면 보안도 함께 맡는 경우가 더러 있습니다. ')),
                Container(
                  margin: EdgeInsets.only(top: margin_main_panel * 3),
                  child: Column(
                    children: [
                      Image.asset(
                        'assets/serverroom.png',
                        width: ScreenWidth,
                        height: ScreenHeight / 4,
                      ),
                      Container(
                        margin: EdgeInsets.only(top: margin_inner_widget),
                        child: Text(
                          '시스템관리자가 관리하는 서버실 사진. ',
                          style: TextStyle(fontSize: 12, color: Colors.blue),
                        ),
                      )
                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(
                    top: margin_main_panel * 2,
                    right: margin_main_panel,
                    left: margin_main_panel,
                  ),
                  child: Text(' 시스템 관리자가 수행하는 문서작업을 구체적으로 예를 들면, 서버 실의 출입 대장부를 관리하거나, 서버 접근 권한을 결재시스템이나 E-Mail로 요청을 받거나, 서버에 각각 할당된 IP 주소와 접근 계정/비밀번호는 무엇인지, 랙에 설치된 수십 개/수백 개의 서버별 용도가 무엇인지 문서로 정리되어 있어야 합니다. '),
                ),
                Container(
                  margin: EdgeInsets.only(
                    top: margin_main_panel * 2,
                    right: margin_main_panel,
                    left: margin_main_panel,
                  ),
                  child: Text('서버를 입고할 때 시스템 관리자와 상의를 거쳐야 합니다. 왜냐하면, 서버실 내의 랙(서버를 거치하는 캐비닛)에 공간이 충분한지, 위치는 어디로 할 것인지에 대한 의논이 없다면 서버만 덜렁 들어오고 서버실 내에 설치가 불가능할 수도 있기 때문입니다.'),
                ),
                Container(
                  margin: EdgeInsets.only(
                    top: margin_main_panel * 2,
                    right: margin_main_panel,
                    left: margin_main_panel,
                  ),
                  child: Text(' 혹여나 ISMS와 같은 보안 인증심사를 진행한다고 하면 시스템 관리자는 인증심사를 통과하기 위한 로그 기록 준비, 백업주기 증적, 네트워크 구성도 그리기, 보안설정 현황 등 산더미 같은 서류 업무를 수행하기도 합니다.'),
                ),
                Container(
                  margin: EdgeInsets.only(top: margin_main_panel * 3),
                  child: Column(
                    children: [
                      Image.asset(
                        'assets/systemexcel.png',
                        width: ScreenWidth * 7 / 8,
                        height: ScreenHeight / 4,
                      ),
                      Container(
                        margin: EdgeInsets.only(top: margin_inner_widget),
                        child: Text(
                          '시스템 관리자가 관리하는 문서 예시 ',
                          style: TextStyle(fontSize: 12, color: Colors.blue),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(
                          top: margin_main_panel * 2,
                          right: margin_main_panel,
                          left: margin_main_panel,
                        ),
                        child: Text(' 또한, 서버가 증설되거나 신축될 때 업체가 정상적인 서버를 가지고 왔는지, 혹시 RAM이나 디스크 등이 유실되진 않았는지, 운영체제는 정상적으로 설치되어 작동하는지, 라이센스는 문제가 없는 것인지 등을 사진과 스크린샷으로 모두 남겨 보고서로 작성합니다. 왜냐하면, 다음에 문제가 발생하면 책임을 물을 수 있기 때문입니다.'),
                      ),
                      Container(
                        margin: EdgeInsets.only(
                          top: margin_main_panel * 2,
                          right: margin_main_panel,
                          left: margin_main_panel,
                        ),
                        child: Text(' 예를 들어서 나중에 확인해보니 RAM 카드가 하나 없거나, 운영체제가 정상 설치된 줄 알았는데 에러가 나거나, 라이센스에 문제가 생겼거나 할 경우, 업체의 잘못에 대해서 증명을 할 수 없으면 시스템 관리자가 책임을 지게 됩니다. '),
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
          Get.offAll(() => ISTJ());
          Get.toNamed('/fourth7');
        },
        title: title);
  }
}
