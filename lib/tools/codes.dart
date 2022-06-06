// api를 통하여 코드값등 기타 정보를 읽어오는 유틸함수 모음
//*****************************************************************************//

import 'package:flutter/cupertino.dart';
import 'package:itmbti/tools/delphi_func.dart';

class Codes {
  List<TextEditingController> editText = [];
  List<String> Values = [];
  List<String> Items = [];
  List<String> subValue1 = []; //추가 정보. 없는 경우도 있음. 반드시 getter함수로 불러올것.
  List<String> subValue2 = []; //추가정보2.
  int length = 0;
  String Text = '';
  String AsString = '';

  void CopyList(Codes source, String ignoreValue, String DefaultValue, String DefaultItem) {
    this.Clear();
    if (DefaultValue != '') {
      this.AddItem(DefaultValue, DefaultItem);
      this.AsString = DefaultValue;
      this.Text = DefaultItem;
    }
    for (int i = 0; i < source.length; i++) {
      if (source.Values[i] == ignoreValue) {
        continue;
      }
      this.AddItem(source.Values[i], source.Items[i]);
      this.editText[this.editText.length - 1].text = this.Items[this.Items.length - 1];
    }
  }

  void InsertFirstItem(String value, String item) {
    this.Values.insert(0, value);
    this.Items.insert(0, item);

    this.editText.insert(0, TextEditingController());
    this.length = this.Values.length;
  }

  void AddItem(String value, String item) {
    AddItemAdv(value, item, '', '');
  }

  void AddItemAdv(String value, String item, String subValueText1, String subValueText2) {
    this.Values.add(value);
    this.Items.add(item);
    this.subValue1.add(subValueText1);
    this.subValue2.add(subValueText2);

    TextEditingController nowEdit = TextEditingController();
    nowEdit.text = item;
    this.editText.add(nowEdit);

    this.length = this.Values.length;
  }

  void removeAt(int index) {
    this.editText.removeAt(index);
    this.Values.removeAt(index);
    this.Items.removeAt(index);
    this.length = this.Values.length;
  }

  //values의 값을 통해 상응하는 subValue를 불러오는 함수.
  String getSubValue1(String value) {
    String result = '';
    if (this.subValue1.length == this.Values.length) {
      for (int i = 0; i < this.Values.length; i++) {
        if (this.Values[i] == value) {
          result = this.subValue1[i];
          break;
        }
      }
    }
    return result;
  }

  //values의 값을 통해 상응하는 subValue를 불러오는 함수.
  String getSubValue2(String value) {
    String result = '';
    if (this.subValue2.length == this.Values.length) {
      for (int i = 0; i < this.Values.length; i++) {
        if (this.Values[i] == value) {
          result = this.subValue2[i];
          break;
        }
      }
    }
    return result;
  }

  void SelectAt(int index) {
    if (this.Values.length == 0) {
      return;
    }
    if (this.Values.length > index) {
      //정상적인 인덱스
      this.Text = this.Items[index];
      this.AsString = this.Values[index];
    }
  }

  //아이템명으로 value값을 찾는 함수
  String SelectItem(String item) {
    String result = '';
    for (int i = 0; i < this.Items.length; i++) {
      if (this.Items[i] == item) {
        result = Values[i];
        this.Text = item;
        this.AsString = result;
        break;
      }
    }
    if (Values.length > 0 && result == '') {
      result = Values[0];
    }
    return result;
  }

  //value값으로 item값을 찾는 함수
  String SelectValue(String value) {
    String result = '';
    for (int i = 0; i < this.Values.length; i++) {
      if (this.Values[i] == value) {
        result = Items[i];
        this.Text = result;
        this.AsString = value;
        break;
      }
    }
    if (Items.length > 0 && result == '') {
      result = Items[0];
    }
    return result;
  }

  String FindValue(String value) {
    String result = '';
    for (int i = 0; i < this.Values.length; i++) {
      if (this.Values[i] == value) {
        result = Items[i];
        break;
      }
    }
    return result;
  }

  //년도를 셋팅
  void getYear(int befYearCNT, int aftYearCNT) {
    this.Clear();

    DateTime now = Now();
    int year = now.year - befYearCNT;
    for (int i = year; i < (now.year + befYearCNT + aftYearCNT - 1); i++) {
      this.AddItem(FormatFloat('0000', i), FormatFloat('0000년', i));
    }
    this.Text = FormatFloat('0000년', now.year);
    this.AsString = FormatFloat('0000', now.year);
  }

  void GetMonth() {
    this.Clear();

    DateTime now = Now();
    for (int i = 1; i <= 12; i++) {
      this.AddItem(FormatFloat('00', i), FormatFloat('00월', i));
    }
    this.Text = '01월';
    this.AsString = '01';
  }

  void GetDay(int year, int month) {
    this.Clear();

    DateTime now = Now();
    int StrDay = 1;
    int EndDay = EndOfTheMonth(DateTime(year, month, 1)).day;
    for (int i = StrDay; i <= EndDay; i++) {
      this.AddItem(FormatFloat('00', i), FormatFloat('00일', i));
    }
    this.Text = '01일';
    this.AsString = '01';
  }

  void GetHour() {
    this.Clear();

    for (int i = 0; i <= 23; i++) {
      this.AddItem(FormatFloat('00', i), FormatFloat('00시', i));
    }
    this.Text = '00시';
    this.AsString = '00';
  }

  void GetMinute(int minuteTerm) {
    this.Clear();

    for (int i = 0; i <= 59; i += minuteTerm) {
      this.AddItem(FormatFloat('00', i), FormatFloat('00분', i));
    }
    this.Text = '00분';
    this.AsString = '00';
  }

  void GetSecond() {
    this.Clear();

    for (int i = 0; i <= 60; i++) {
      this.AddItem(FormatFloat('00', i), FormatFloat('00초', i));
    }
    this.Text = '00초';
    this.AsString = '00';
  }

  //발급상태 콤보상자에서 사용될 목록으로 셋팅
  void getDoctorCNT(String DefaultName) {
    this.Clear();

    if (DefaultName != '') {
      this.AddItemAdv(DefaultName, DefaultName, '', '');
    }
    this.AddItem('999999', '권역전체');
    this.AddItem('100', '100명');
    this.AddItem('200', '200명');
    this.AddItem('300', '300명');
    this.AddItem('400', '400명');
    this.AddItem('500', '500명');

    if (this.Values.length > 0) {
      this.Text = this.Items[0];
      this.AsString = this.Values[0];
    }
  }

  //발급상태 콤보상자에서 사용될 목록으로 셋팅
  void getPaperState(String DefaultName) {
    this.Clear();

    if (DefaultName != '') {
      this.AddItem(DefaultName, DefaultName);
    }
    this.AddItem('0', '접수대기');
    this.AddItem('1', '처리중');
    this.AddItem('2', '완료');
    this.AddItem('3', '결재완료');

    if (this.Values.length > 0) {
      this.Text = this.Items[0];
      this.AsString = this.Values[0];
    }
  }

  //발급구분목록 셋팅
  void getPaerGetGubun(String DefaultName) {
    this.Clear();

    if (DefaultName != '') {
      this.AddItem(DefaultName, DefaultName);
    }
    this.AddItem('0', '본인발급');
    this.AddItem('1', '친족발급');
    this.AddItem('2', '대리발급');

    if (this.Values.length > 0) {
      this.Text = this.Items[0];
      this.AsString = this.Values[0];
    }
  }

  //SULevel을 한글명으로 관리
  Future<void> getSULevelNameKor(String DefaultName) async {
    this.Clear();

    if (DefaultName != '') {
      this.AddItem(DefaultName, DefaultName);
    }

    this.AddItemAdv('0', '전산관리자', '', '');
    this.AddItemAdv('1', '전산팀장', '', '');
    this.AddItemAdv('10', '전산팀사원', '', '');
    //본사계정
    this.AddItemAdv('100', '마스터', '본사의 모든 설정 권한이 가능', '');
    this.AddItemAdv('150', 'CS지원팀장', '모든 의료기관, GA가맹사 관리 가능', '');
    this.AddItemAdv('151', 'CS지원담당', '관리 의료기관, GA가맹사 관리 가능', '');
    //this.AddItemAdv('190', '플래너', '');//본사 플래너는 제거
    this.AddItemAdv('199', '일반사원', '접속(로그인)제한', '');
    //지사계정
    this.AddItemAdv('200', '지사장', '', '');
    this.AddItemAdv('250', '지원담당자', '', '');
    this.AddItemAdv('290', '플래너', '', '');
    this.AddItemAdv('299', '일반사원', '', '');

    //의료기관 계정
    this.AddItemAdv('300', '마스터', '의료기관의 모든 설정 권한이 가능', '');
    this.AddItemAdv('310', '원무과직원', '모든 제증명 발급 관리, 전송 처리 권한', '');
    this.AddItemAdv('320', '진료과직원', '본인 제증명 발급 관리', '');
    this.AddItemAdv('399', '일반사원', '접속(로그인)제한', '');

    this.AddItemAdv('1000', '일반 사용자', '', '');

    if (this.Values.length > 0) {
      this.Text = this.Items[0];
      this.AsString = this.Values[0];
    }
  }

  void getRelationCode(String DefaultName) {
    this.Clear();

    if (DefaultName != '') {
      this.AddItem(DefaultName, DefaultName);
    }

    this.AddItem('0', '본인');
    this.AddItem('1', '배우자');
    this.AddItem('2', '자녀');
    this.AddItem('3', '부');
    this.AddItem('4', '모');

    if (this.Values.length > 0) {
      this.Text = this.Items[0];
      this.AsString = this.Values[0];
    }
  }

  String SULevelCheck(int SULevel) {
    String result = '일반사용자';
    if (SULevel < 100) {
      //전산실 계정
      result = '전산실';
    } else if (SULevel < 200) {
      //본사계정
      result = '본사';
    } else if (SULevel < 300) {
      //지사계정
      result = '지사';
    } else if (SULevel < 400) {
      //의료기관계정
      result = '의료기관';
    }
    return result;
  }

  void Clear() {
    this.Values.clear();
    this.Items.clear();
    this.subValue1.clear();
    this.subValue2.clear();
    this.editText.clear();
    this.length = 0;
    Text = '';
    AsString = '';
  }
}
