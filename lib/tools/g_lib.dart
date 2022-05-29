import 'package:intl/intl.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/src/services/text_formatter.dart';

import 'package:flutter/material.dart';

class GandalpLibrary {
  String GetNowDate() {
    DateTime now = DateTime.now();
    DateFormat formatter = DateFormat('yyyy-MM-DD');
    String strToday = formatter.format(now);
    return strToday;
  }

  String GetNowMonth() {
    DateTime now = DateTime.now();
    DateFormat formatter = DateFormat('M');
    String strToMonth = formatter.format(now);
    return strToMonth;
  }

  String GetNowYear() {
    DateTime now = DateTime.now();
    DateFormat formatter = DateFormat('yyyy');
    String strToYear = formatter.format(now);
    return strToYear;
  }

  Map<String, int> SortMap({required Map<String, int> stringKeyMap, required bool isAsc}) {
    // Map<String, int> 형식일 경우 Map을 정렬하는 함수
    var mapEntries;
    isAsc ? (mapEntries = stringKeyMap.entries.toList()..sort((a, b) => a.value.compareTo(b.value))) : (mapEntries = stringKeyMap.entries.toList()..sort((b, a) => a.value.compareTo(b.value)));
    stringKeyMap
      ..clear()
      ..addEntries(mapEntries);
    stringKeyMap.entries.forEach((element) {
      final key = element.key;
      final value = element.value;
      stringKeyMap[key] = value;
    });
    print(stringKeyMap);
    return stringKeyMap;
  }
}
