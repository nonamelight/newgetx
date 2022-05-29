import 'package:flutter/foundation.dart';
import 'package:intl/intl.dart';

//현재날짜 리턴
DateTime Now() {
  return DateTime.now();
}

DateTime IncYear(DateTime dateTime, int value) {
  //dateTime.add(Duration(days: 10));
  int year = dateTime.year;
  int month = dateTime.month;
  int day = dateTime.day;

  return DateTime(dateTime.year + value, dateTime.month, dateTime.day);
}

DateTime IncMonth(DateTime dateTime, int value) {
  DateTime? result;
  if (dateTime.month == 12) {
    result = DateTime(dateTime.year + 1, 1, dateTime.day);
  } else if (dateTime.month + 1 == 2 && dateTime.day > 28) {
    //한달 증가하면 2월인데 현재 날짜가 28일보다 큰 경우
    result = DateTime(dateTime.year, dateTime.month + 1, 28);
  } else if ((dateTime.month + 1 == 4 || dateTime.month + 1 == 6 || dateTime.month + 1 == 9 || dateTime.month + 1 == 11) && dateTime.day > 30) {
    //한달 증가하면 30까지 있는 달인데 현재 날짜가 30일보다 큰 경우
    result = DateTime(dateTime.year, dateTime.month + 1, 30);
  } else {
    result = DateTime(dateTime.year, dateTime.month + 1, dateTime.day);
  }
  return result;
}

DateTime IncDay(DateTime dateTime, int value) {
  return dateTime.add(Duration(days: value));
}

DateTime IncHour(DateTime dateTime, int value) {
  return dateTime.add(Duration(hours: value));
}

DateTime IncMinute(DateTime dateTime, int value) {
  return dateTime.add(Duration(minutes: value));
}

DateTime IncSecond(DateTime dateTime, int value) {
  return dateTime.add(Duration(seconds: value));
}

DateTime StartOfTheMonth(DateTime dateTime) {
  return DateTime(dateTime.year, dateTime.month, 1);
}

DateTime EndOfTheMonth(DateTime dateTime) {
  DateTime result = IncDay(StartOfTheMonth(IncMonth(dateTime, 1)), -1);
  return result;
}

//날짜시간 타입을 문자열로 변환
//yyyy:년도  MM월  dd일  hh시  mm분  ss초   aaa(am/pm)
String FormatDateTime(String format, DateTime datetime, [int defaultYear = 1900, String defaultString = '']) {
  if (datetime.year < defaultYear) {
    return defaultString;
  }
  format = format.replaceAll('YYYY', 'yyyy'); // 년도 표현 변경
  format = format.replaceAll('YY', 'yy');
  format = format.replaceAll('mm', 'MM'); //월표현 변경
  format = format.replaceAll('m', 'M');
  format = format.replaceAll('DD', 'dd'); //일자표현 변경
  format = format.replaceAll('D', 'd');
  format = format.replaceAll('hh', 'HH'); //시간표현 변경
  format = format.replaceAll('h', 'H');
  format = format.replaceAll('NN', 'mm'); //분표현 변경
  format = format.replaceAll('N', 'm');
  format = format.replaceAll('nn', 'mm');
  format = format.replaceAll('n', 'm');
  format = format.replaceAll('SS', 'ss'); //초 표현 변경
  format = format.replaceAll('S', 's');
  format = format.replaceAll('AAA', 'aaa');
  DateFormat dateFormat = DateFormat(format);
  String result = dateFormat.format(datetime);
  return result;
}

//정수를 형식에 맞게 문자열로 변환
String FormatFloat(String format, dynamic number) {
  return NumberFormat(format).format(number).replaceAll(' ', '');
}

//YN값을 boolean으로 변환
bool YN2Bool(String YN) {
  bool result = false;
  if (YN.toLowerCase() == 'y' || YN.toLowerCase() == 'yes' || YN.toLowerCase() == 't' || YN.toLowerCase() == 'true' || YN.toLowerCase() == 'o') {
    result = true;
  }
  return result;
}

//boolean값을 YN으로 변환
String Bool2YN(bool boolValue) {
  String result = '';
  if (boolValue) {
    result = 'Y';
  } else {
    result = 'N';
  }
  return result;
}

//문자열을 정수로 변환
int StrToInt(String value) {
  return int.parse(value);
}

//문자열을 정수로 변환. 기본값 설정.
int StrToIntDef(String value, int defaultValue) {
  int result = defaultValue;
  try {
    result = int.parse(value);
  } catch (e) {
    result = defaultValue;
  }
  return result;
}

//문자열을 실수로 변환
double StrToDouble(String value) {
  return double.parse(value);
}

//주민등록번호로 생년월일을 리턴하는 함수. 형식에 맞지 않으면 1888-01-01리턴
DateTime Jumin2BirthDay(String jumin) {
  DateTime result = DateTime(1888, 1, 1);
  //주민번호에서 구분자 -제거하여(YYMMDDGNNNNNN 형식으로 변경)
  infraLog('BCCode', jumin);
  jumin = jumin.replaceAll('-', '');
  if (jumin.length < 6) {
    return result;
  }
  String birthdayString = jumin.substring(0, 6);
  String Gender = '';
  if (jumin.length >= 7) {
    //성별코드를 사용가능. 성별코드를 읽어온다.
    Gender = jumin.substring(6, 7);
    //9: 1800년대 남성  0: 1800년대 여성
    //1: 1900년대 남성  2: 1900년대 여성
    //3: 2000년대 남성  4: 2000년대 여성
    //5: 1900년대 남성  6: 1900년대 여성 (외국인)
    //7: 2000년대 남성  8: 2000년대 여성 (외국인)
    if (Gender != '0' && Gender != '1' && Gender != '2' && Gender != '3' && Gender != '4' && Gender != '5' && Gender != '6' && Gender != '7' && Gender != '8' && Gender != '9') {
      //성별코드가 표준화되지 않은 코드가 들어옴.(ex : *과 같은 의미없는 문자)
      Gender = '';
    }
  }
  if (Gender == '') {
    //성별 코드를 읽어올 수 없음. 계산당일을 기준으로 년도가 당해년도이하(계산당일: 2022년, 주민등록번호 19)면 2000년대생, 아닌경우 1900년대생으로 계산.
    int year = StrToInt(birthdayString.substring(0, 2));
    DateTime now = Now();
    if (year <= now.year % 100) {
      // 07 <= (20)22 : 2000년대
      birthdayString = FormatFloat('00', now.year / 100) + jumin.substring(0, 2) + "-" + jumin.substring(2, 4) + "-" + jumin.substring(4, 6);
    } else {
      //1900년대
      birthdayString = FormatFloat("00", (now.year / 100) - 1) + jumin.substring(0, 2) + "-" + jumin.substring(2, 4) + "-" + jumin.substring(4, 6);
    }
  } else {
    //성별코드에따라 생년월일 설정.
    if (Gender == '9' || Gender == '0') {
      //1800년대 여성
      birthdayString = '18';
    }
    if (Gender == '1' || Gender == '2') {
      //1900년대 여성
      birthdayString = '19';
    }
    if (Gender == '3' || Gender == '4') {
      //2000년대 여성
      birthdayString = '20';
    }
    if (Gender == '5' || Gender == '6') {
      //1900년대 여성 (외국인)
      birthdayString = '19';
    }
    if (Gender == '7' || Gender == '8') {
      //2000년대 여성 (외국인)
      birthdayString = '20';
    }
    birthdayString += jumin.substring(0, 2) + "-" + jumin.substring(2, 4) + "-" + jumin.substring(4, 6);
  }

  return StrToDate(birthdayString);
}

//주민등록번호를 만나이로 변환
int Jumin2ManAge(DateTime baseDate, String jumin) {
  int result = -1;
  DateTime birthDay = Jumin2BirthDay(jumin);
  if (birthDay.year < 1900) {
    //주민등록번호에서 읽어온 생년월일이 1900년이전이면 없는 주민번호로 인식한다. -1리턴
    return -1;
  }
  result = baseDate.year - birthDay.year - 1;
  //년도를 제거한 월일만으로 날짜를 만들어 생일이 지났는지 판단.
  DateTime baseMonthDay = DateTime(1888, baseDate.month, baseDate.day);
  DateTime birthDayMonthDay = DateTime(1888, birthDay.month, birthDay.day);
  if (baseMonthDay.difference(birthDayMonthDay).inDays >= 0) {
    //생일이 지났음. 1살 추가
    result++;
  }
  //baseDate에 태어났는데 생일이 지나지 않은 경우 나이가 -1로 계산될 것이기 때문에 강제로 0처리
  if (result < 0) {
    result = 1;
  }

  return result;
}

String Jumin2ManAgeText(
  DateTime baseDate,
  String jumin, {
  String befText = '만 ',
  String aftText = '세',
}) {
  int Age = Jumin2ManAge(baseDate, jumin);
  if (Age < 0) {
    //만나이를 계산하지 못했으면 공백 리턴
    return '';
  } else {
    return befText + Age.toString() + aftText;
  }
}

//보험상령일을 주민번호로 계산하는 함수
DateTime Jumin2InsureAgeIncreamentDate(DateTime baseDate, String jumin) {
  DateTime result = Jumin2BirthDay(jumin);
  return IncMonth(result, 6); //주민등록상 생년월일+6개월이 상령일
}

//문자열을 날짜로 변환(YYYY-MM-DD타입)
DateTime StrToDate(String value) {
  if (value == '') {
    return DateTime(1888, 01, 01);
  } else {
    return DateTime(StrToInt(value.substring(0, 4)), StrToInt(value.substring(5, 7)), StrToInt(value.substring(8, 10)));
  }
}

//문자열이 날짜형식(YYYY-MM-DD)인지 확인
bool isDateString(String DateString) {
  if (DateString.length < 10) {
    return false;
  }
  String year = DateString.substring(0, 4);
  String month = DateString.substring(5, 7);
  String day = DateString.substring(8, 10);
  if (year.compareTo("0000") == -1 || year.compareTo("9999") == 1) {
    return false;
  }
  if (month.compareTo("01") == -1 || month.compareTo("12") == 1) {
    return false;
  }
  if (day.compareTo("01") == -1 || day.compareTo("31") == 1) {
    return false;
  }
  return true;
}

//요일인덱스를 델파이와 동일하게 일요일(1) ~ 토요일(7)로 리턴하는 함수
int DayOfWeek(DateTime dateTime) {
  int result = dateTime.weekday + 1;
  //일요일은 1로 만들어준다.
  if (result == 8) {
    result = 1;
  }
  return result;
}

//날짜의 요일을 한글 한글자로 변환
String DateToWeekName(DateTime dateTime) {
  int weekIndex = DayOfWeek(dateTime);
  String result = '';
  if (weekIndex == 1) {
    result = '일';
  } else if (weekIndex == 2) {
    result = '월';
  } else if (weekIndex == 3) {
    result = '화';
  } else if (weekIndex == 4) {
    result = '수';
  } else if (weekIndex == 5) {
    result = '목';
  } else if (weekIndex == 6) {
    result = '금';
  } else if (weekIndex == 7) {
    result = '토';
  }
  return result;
}

//문자열로된 날짜(YYYY-MM-DD형식)의 요일을 한글 한글자로 변환
String DateTextToWeekName(String dateText) {
  return DateToWeekName(StrToDate(dateText));
}

void infraLog(String title, dynamic text) {
  if (!kReleaseMode) {
    print(FormatDateTime('YYYYMMDD HHNNSS', Now()) + ': [' + title + '] ' + text.toString());
  }
}

//문자열의 일부를 Blank처리하는 함수
String makeBlankText_Start(
  String sourceText, //원본 텍스트
  int noneBlankCNT, {
  //Blank하지 않을 글자수. sourceText의 전체 글자수보다 같거나 많은경우 전체를 Blank처리
  String blankText = '*', // Blank처리되는 문자에 표시될 문자
}) {
  int str = 0;
  String result = '';
  if (sourceText.length <= noneBlankCNT) {
    //보여질 문자수보다 원본 문자열이 더 적거나 같은 경우. 전체 blank
    str = 0;
  } else {
    str = noneBlankCNT;
    result = sourceText.substring(0, str);
  }
  for (int i = str; i < sourceText.length; i++) {
    result += blankText;
  }

  return result;
}
