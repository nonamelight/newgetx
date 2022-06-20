import 'dart:io';

import 'package:get/get.dart';

class GetxInitController extends GetxController {
  int EorI = 0;
  int NorS = 0;
  int TorF = 0;
  int JorP = 0;

  int pageNum = 0;

  RxBool isLoading = true.obs;
  Future<bool> Loading() async {
    await Future.delayed(Duration(seconds: 3));
    isLoading.value = false;
    return true;
  }
}
