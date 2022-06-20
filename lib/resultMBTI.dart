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
    return FutureBuilder(
        future: GetData,
        builder: (BuildContext context, snapshot) {
          //정상적으로 데이터를 받아왔음.
          return Scaffold(
            body: Stack(children: [
              Container(
                color: color_deep_blue,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Container(
                      margin: EdgeInsets.only(top: StatusBarHeight),
                      child: Center(
                        child: Text(
                          '결과',
                          style: TextStyle(fontSize: fontsize, color: Colors.white),
                        ),
                      ),
                    ),
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
                    GButton().RoundButton(
                        color: color_deep_blue,
                        bordercolor: color_yellow,
                        height: 40,
                        title: '추천 IT 직군 ☞',
                        onPressed: () {
                          Get.offAll(() => ResultMBTI());
                          Get.toNamed('/');
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
