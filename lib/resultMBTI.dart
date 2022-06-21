import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:itmbti/controller/init_controller.dart';
import 'package:itmbti/tools/g_button.dart';
import 'package:itmbti/tools/g_design.dart';

class ResultMBTI extends StatefulWidget {
  @override
  State<ResultMBTI> createState() => _ResultMBTI();
}

class _ResultMBTI extends State<ResultMBTI> with TickerProviderStateMixin {
  GetxInitController getxInitController = Get.find<GetxInitController>();
  Future<bool>? GetData;

  @override
  void initState() {
    super.initState();
    GetData = getxInitController.Loading();
  }

  @override
  Widget build(BuildContext context) {
    final double ScreenWidth = MediaQuery.of(context).size.width; //기기의 너비
    final double ScreenHeight = MediaQuery.of(context).size.height; // 기기의 높이
    final double StatusBarHeight = MediaQuery.of(context).padding.top; // 상단 상태 바 높이 값
    double fontsize = 50;
    double explainFontSize = 12;
    return StatefulBuilder(builder: (BuildContext context, snapshot) {
      //정상적으로 데이터를 받아왔음.
      return Scaffold(
        body: Stack(children: [
          Container(
            color: color_deep_blue,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Container(
                  color: color_greyblue,
                  margin: EdgeInsets.only(top: StatusBarHeight),
                  child: Center(
                    child: Text(
                      '결과',
                      style: TextStyle(fontSize: fontsize, color: Colors.white),
                    ),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      margin: EdgeInsets.only(top: margin_main_panel),
                      child: Center(
                        child: getxInitController.EorI >= 0
                            ? Text(
                                'E',
                                style: TextStyle(fontSize: fontsize, color: Colors.white),
                              )
                            : Text(
                                'I',
                                style: TextStyle(fontSize: fontsize, color: Colors.white),
                              ),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(top: margin_main_panel),
                      child: Center(
                        child: getxInitController.NorS >= 0
                            ? Text(
                                'S',
                                style: TextStyle(fontSize: fontsize, color: Colors.white),
                              )
                            : Text(
                                'N',
                                style: TextStyle(fontSize: fontsize, color: Colors.white),
                              ),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(top: margin_main_panel),
                      child: Center(
                        child: getxInitController.TorF >= 0
                            ? Text(
                                'T',
                                style: TextStyle(fontSize: fontsize, color: Colors.white),
                              )
                            : Text(
                                'F',
                                style: TextStyle(fontSize: fontsize, color: Colors.white),
                              ),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(top: margin_main_panel),
                      child: Center(
                        child: getxInitController.JorP >= 0
                            ? Text(
                                'J',
                                style: TextStyle(fontSize: fontsize, color: Colors.white),
                              )
                            : Text(
                                'P',
                                style: TextStyle(fontSize: fontsize, color: Colors.white),
                              ),
                      ),
                    ),
                  ],
                ),
                Divider(
                  color: Colors.white,
                  thickness: 1,
                ),
                Container(
                  width: ScreenWidth,
                  margin: EdgeInsets.only(top: margin_main_panel, left: margin_main_panel, right: margin_main_panel),
                  height: 240,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        child: getxInitController.EorI >= 0
                            ? Text(
                                'E:당신은 외향적인 성향이 강하며 사람을 만나는 것을 좋아합니다.\n새로운 환경과 새로운 사람을 만나는 것을 어려워하지 않습니다.',
                                style: TextStyle(fontSize: explainFontSize, color: Colors.white),
                              )
                            : Text(
                                'I:당신은 내향적인 성향이며 사색하는 것을 좋아합니다.\n넓은 인관관계보다 가까운 사람과 깊은 관계를 맺는 편입니다.',
                                style: TextStyle(fontSize: explainFontSize, color: Colors.white),
                              ),
                      ),
                      Container(
                        margin: EdgeInsets.only(top: margin_main_panel),
                        child: getxInitController.NorS >= 0
                            ? Text(
                                'S:경험을 중시하며, 현재 닥친 현실적인 문제인식이 뛰어납니다.\n때문에 창의적인 아이디어를 끝없이 보여줘야하는\n업무보다 현재 주어진 상황을 해결하는 업무를 선호할 수 있습니다.',
                                style: TextStyle(fontSize: explainFontSize, color: Colors.white),
                              )
                            : Text(
                                'N:또한 상상이 풍부합니다. 크고 작은 일에 의미를 부여하거나\n앞으로 일어날 일에 대해 생각하는것을 좋아합니다. ',
                                style: TextStyle(fontSize: explainFontSize, color: Colors.white),
                              ),
                      ),
                      Container(
                        margin: EdgeInsets.only(top: margin_main_panel),
                        child: getxInitController.TorF >= 0
                            ? Text(
                                'T:논리적인 생각에 따라 이성적으로 생각하며, 감정에 크게 휘둘리지 않습니다.',
                                style: TextStyle(fontSize: explainFontSize, color: Colors.white),
                              )
                            : Text(
                                'F:머리보다는 가슴을 따라 움직이며,\n공감과 위로를 잘해줍니다.',
                                style: TextStyle(fontSize: explainFontSize, color: Colors.white),
                              ),
                      ),
                      Container(
                        margin: EdgeInsets.only(top: margin_main_panel),
                        child: getxInitController.JorP >= 0
                            ? Text(
                                'J:계획하기를 좋아하며 체계적인 업무속에 안정감을 느낍니다.',
                                style: TextStyle(fontSize: explainFontSize, color: Colors.white),
                              )
                            : Text(
                                'P:정해진 틀에 얽매이는것을 답답해하며 \n상황에 따라 움직일때 편합니다.',
                                style: TextStyle(fontSize: explainFontSize, color: Colors.white),
                              ),
                      ),
                    ],
                  ),
                ),
                GButton().RoundButton(
                    color: color_deep_blue,
                    bordercolor: color_yellow,
                    marginBottom: margin_main_panel * 5,
                    height: 40,
                    title: '추천 IT 직군 ☞',
                    onPressed: () {
                      getxInitController.CalcMBTI();
                      Get.offAll(() => ResultMBTI());
                      if (getxInitController.charMBTI == 'ISTJ') {
                        Get.toNamed('/ISTJ');
                      } else if (getxInitController.charMBTI == 'ISFJ') {
                        Get.toNamed('/ISFJ');
                      } else if (getxInitController.charMBTI == 'INFJ') {
                        Get.toNamed('/INFJ');
                      } else if (getxInitController.charMBTI == 'INTJ') {
                        Get.toNamed('/INTJ');
                      } else if (getxInitController.charMBTI == 'ISTP') {
                        Get.toNamed('/ISTP');
                      } else if (getxInitController.charMBTI == 'ISFP') {
                        Get.toNamed('/ISFP');
                      } else if (getxInitController.charMBTI == 'INFP') {
                        Get.toNamed('/INFP');
                      } else if (getxInitController.charMBTI == 'INTP') {
                        Get.toNamed('/INTP');
                      } else if (getxInitController.charMBTI == 'ESTP') {
                        Get.toNamed('/ESTP');
                      } else if (getxInitController.charMBTI == 'ESFP') {
                        Get.toNamed('/ESFP');
                      } else if (getxInitController.charMBTI == 'ENFP') {
                        Get.toNamed('/ENFP');
                      } else if (getxInitController.charMBTI == 'ENTP') {
                        Get.toNamed('/ENTP');
                      } else if (getxInitController.charMBTI == 'ESTJ') {
                        Get.toNamed('/ESTJ');
                      } else if (getxInitController.charMBTI == 'ESFJ') {
                        Get.toNamed('/ESFJ');
                      } else if (getxInitController.charMBTI == 'ENJF') {
                        Get.toNamed('/ENJF');
                      } else if (getxInitController.charMBTI == 'ENTJ') {
                        Get.toNamed('/ENTJ');
                      }

                      // Get.toNamed('/');
                    }),
              ],
            ),
          ),
          Obx(() {
            return getxInitController.isLoading.value
                ? Container(
                    color: color_deep_blue,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          '분석중입니다',
                          style: TextStyle(color: Colors.white, fontSize: 24),
                        ),
                        Center(
                            child: CircularProgressIndicator(
                          color: Colors.white,
                        )),
                      ],
                    ),
                  )
                : SizedBox();
          })
        ]),
      );
    });
  }
}
