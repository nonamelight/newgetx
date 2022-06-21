import 'dart:io';

import 'package:get/get.dart';

class GetxInitController extends GetxController {
  int EorI = 0;
  int NorS = 0;
  int TorF = 0;
  int JorP = 0;

  int pageNum = 0;
  String charMBTI = '';
  RxBool isLoading = true.obs;
  void Clear() {
    EorI = 0;
    NorS = 0;
    TorF = 0;
    JorP = 0;
  }

  void CalcMBTI() {
    if (EorI >= 0) {
      charMBTI = 'E';
    } else {
      charMBTI = 'I';
    }
    if (NorS >= 0) {
      charMBTI = charMBTI + 'S';
    } else {
      charMBTI = charMBTI + 'N';
    }
    if (TorF >= 0) {
      charMBTI = charMBTI + 'T';
    } else {
      charMBTI = charMBTI + 'F';
    }
    if (JorP >= 0) {
      charMBTI = charMBTI + 'J';
    } else {
      charMBTI = charMBTI + 'P';
    }
  }

  Future<bool> Loading() async {
    await Future.delayed(Duration(seconds: 3));
    isLoading.value = false;
    return true;
  }
}
