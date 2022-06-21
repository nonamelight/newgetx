import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:itmbti/MBTI_INFJ.dart';
import 'package:itmbti/MBTI_INTJ.dart';
import 'package:itmbti/MBTI_ISFJ.dart';
import 'package:itmbti/MBTI_ISTP.dart';
import 'package:itmbti/mbti_ENFJ.dart';
import 'package:itmbti/mbti_ENFP.dart';
import 'package:itmbti/mbti_ENTJ.dart';
import 'package:itmbti/mbti_ENTP.dart';
import 'package:itmbti/mbti_ESFJ.dart';
import 'package:itmbti/mbti_ESFP.dart';
import 'package:itmbti/mbti_ESTJ.dart';
import 'package:itmbti/mbti_ESTP.dart';
import 'package:itmbti/mbti_INFP.dart';
import 'package:itmbti/mbti_INTP.dart';
import 'package:itmbti/mbti_ISFP.dart';
import 'package:itmbti/mbti_ISTJ.dart';
import 'package:itmbti/controller/init_controller.dart';
import 'package:itmbti/fistpage.dart';
import 'package:itmbti/fistpage1.dart';
import 'package:itmbti/fistpage2.dart';
import 'package:itmbti/fistpage3.dart';
import 'package:itmbti/fistpage4.dart';
import 'package:itmbti/fistpage5.dart';
import 'package:itmbti/fistpage6.dart';
import 'package:itmbti/fistpage7.dart';
import 'package:itmbti/fourth1.dart';
import 'package:itmbti/fourth2.dart';
import 'package:itmbti/fourth3.dart';
import 'package:itmbti/fourth4.dart';
import 'package:itmbti/fourth5.dart';
import 'package:itmbti/fourth6.dart';
import 'package:itmbti/fourth7.dart';
import 'package:itmbti/initpage.dart';
import 'package:itmbti/resultMBTI.dart';
import 'package:itmbti/secondpage1.dart';
import 'package:itmbti/secondpage2.dart';
import 'package:itmbti/secondpage3.dart';
import 'package:itmbti/secondpage4.dart';
import 'package:itmbti/secondpage5.dart';
import 'package:itmbti/secondpage6.dart';
import 'package:itmbti/secondpage7.dart';
import 'package:itmbti/third1.dart';
import 'package:itmbti/third2.dart';
import 'package:itmbti/third3.dart';
import 'package:itmbti/third4.dart';
import 'package:itmbti/third5.dart';
import 'package:itmbti/third6.dart';
import 'package:itmbti/third7.dart';

void main() async {
  GetxInitController getxInitController = Get.put(GetxInitController());
  runApp(GetMaterialApp(
    title: 'Getx Test',
    theme: ThemeData(fontFamily: 'TMoney'),
    home: InitPage(),
    initialRoute: '/',
    getPages: [
      GetPage(name: '/', page: () => InitPage()),
      // EorI
      GetPage(name: '/first', page: () => FirstPage(), transition: Transition.rightToLeftWithFade), //검사시작`
      GetPage(name: '/first1', page: () => FirstPage1(), transition: Transition.rightToLeftWithFade), //사람을 만나는 것을 좋아한다
      GetPage(name: '/first2', page: () => FirstPage2(), transition: Transition.rightToLeftWithFade), //한 장소에 정착해서 일하는 것보다 다양한 곳을 돌아다니며 일하는것이 좋다
      GetPage(name: '/first3', page: () => FirstPage3(), transition: Transition.rightToLeftWithFade), //잦은 연락과 소통은 내 업무에 도움이 된다
      GetPage(name: '/first4', page: () => FirstPage4(), transition: Transition.rightToLeftWithFade), //다른사람에게 자신을 소개하는것이 어렵지 않다
      GetPage(name: '/first5', page: () => FirstPage5(), transition: Transition.rightToLeftWithFade), //보통 대화를 먼저 시작하는편이다
      GetPage(name: '/first6', page: () => FirstPage6(), transition: Transition.rightToLeftWithFade), //글보다는 말로 표현하는것이 더 편하다
      GetPage(name: '/first7', page: () => FirstPage7(), transition: Transition.rightToLeftWithFade), //호기심이 있으면 행동으로 옮긴다
      // NorS
      GetPage(name: '/second1', page: () => SecondPage1(), transition: Transition.rightToLeftWithFade), //창의적인 일 보다 단조로운 일이 좋다
      GetPage(name: '/second2', page: () => SecondPage2(), transition: Transition.rightToLeftWithFade), //상상보다는 경험에 더 의존한다
      GetPage(name: '/second3', page: () => SecondPage3(), transition: Transition.rightToLeftWithFade), //큰 그림보다 디테일에 집중한다
      GetPage(name: '/second4', page: () => SecondPage4(), transition: Transition.rightToLeftWithFade), //옛날의 실수했던 경험이 아직도 나를 괴롭게한다
      GetPage(name: '/second5', page: () => SecondPage5(), transition: Transition.rightToLeftWithFade), //잘때 꾸는 꿈은 현실에 바탕을 둔다
      GetPage(name: '/second6', page: () => SecondPage6(), transition: Transition.rightToLeftWithFade), //노래나 영화의 숨겨진 메시지를 찾기위해 노력한다
      GetPage(name: '/second7', page: () => SecondPage7(), transition: Transition.rightToLeftWithFade), //기술 발전이 어떻게 우리의 생활을 변화시킬 수 있을까 자주 생각한다
      // TorF
      GetPage(name: '/third1', page: () => Third1(), transition: Transition.rightToLeftWithFade), //친구의 어려운 이야기를 들었을 때 감정적인 지지보다는 문제 해결에 초점을 맞춘다
      GetPage(name: '/third2', page: () => Third2(), transition: Transition.rightToLeftWithFade), //화가 나는 일은 드물다
      GetPage(name: '/third3', page: () => Third3(), transition: Transition.rightToLeftWithFade), //감정적인 행동을 이해하기 어렵다
      GetPage(name: '/third4', page: () => Third4(), transition: Transition.rightToLeftWithFade), //사교적인 대화보다 철학적인 대화를 좋아한다
      GetPage(name: '/third5', page: () => Third5(), transition: Transition.rightToLeftWithFade), //다른사람 앞에서 절대 울지 않는다
      GetPage(name: '/third6', page: () => Third6(), transition: Transition.rightToLeftWithFade), //인생을 바꿀지도 모를 선택을 할 때 머리보다 가슴을따른다
      GetPage(name: '/third7', page: () => Third7(), transition: Transition.rightToLeftWithFade), //감정을 통제하기보다는 감정에 휘둘리는 편이다
      // PorJ
      GetPage(name: '/fourth1', page: () => Fourth1(), transition: Transition.rightToLeftWithFade), //삶을 체계적으로 관리중이다
      GetPage(name: '/fourth2', page: () => Fourth2(), transition: Transition.rightToLeftWithFade), //목표가 있으면 목표를 달성할 때까지 옆길로 새지 않는 편이다
      GetPage(name: '/fourth3', page: () => Fourth3(), transition: Transition.rightToLeftWithFade), //즉흥적이고 불타오르는 업무보다 체계적이고 계획적인 업무를 선호한다
      GetPage(name: '/fourth4', page: () => Fourth4(), transition: Transition.rightToLeftWithFade), //그때그때 닥치는 일을 하기보다 우선순위를 두고 움직인다
      GetPage(name: '/fourth5', page: () => Fourth5(), transition: Transition.rightToLeftWithFade), //주말 전체를 처음부터 끝까지 혼자서 지루하지않게 보낼 수 있다
      GetPage(name: '/fourth6', page: () => Fourth6(), transition: Transition.rightToLeftWithFade), //미리 계획한 하루 일과보다 그날의 기분에 따라 하고싶은 일을한다
      GetPage(name: '/fourth7', page: () => Fourth7(), transition: Transition.rightToLeftWithFade), //여행 계획은 상세한 일정표 보다는 대략적인 리스트에 가깝다
      //Result
      GetPage(name: '/result', page: () => ResultMBTI(), transition: Transition.rightToLeftWithFade), //결과페이지
      //MBTI
      GetPage(name: '/ISTJ', page: () => ISTJ(), transition: Transition.rightToLeftWithFade), //ISTJ
      GetPage(name: '/ISFJ', page: () => ISFJ(), transition: Transition.rightToLeftWithFade), //ISFJ
      GetPage(name: '/INFJ', page: () => INFJ(), transition: Transition.rightToLeftWithFade), //INFJ
      GetPage(name: '/INTJ', page: () => INTJ(), transition: Transition.rightToLeftWithFade), //INTJ
      GetPage(name: '/ISTP', page: () => ISTP(), transition: Transition.rightToLeftWithFade), //ISTP
      GetPage(name: '/ISFP', page: () => ISFP(), transition: Transition.rightToLeftWithFade), //ISFP
      GetPage(name: '/INFP', page: () => INFP(), transition: Transition.rightToLeftWithFade), //INFP
      GetPage(name: '/INTP', page: () => INTP(), transition: Transition.rightToLeftWithFade), //INTP
      GetPage(name: '/ESTP', page: () => ESTP(), transition: Transition.rightToLeftWithFade), //ESTP
      GetPage(name: '/ESFP', page: () => ESFP(), transition: Transition.rightToLeftWithFade), //ESFP
      GetPage(name: '/ENFP', page: () => ENFP(), transition: Transition.rightToLeftWithFade), //ENFP
      GetPage(name: '/ENTP', page: () => ENTP(), transition: Transition.rightToLeftWithFade), //ENTP
      GetPage(name: '/ESTJ', page: () => ESTJ(), transition: Transition.rightToLeftWithFade), //ESTJ
      GetPage(name: '/ESFJ', page: () => ESFJ(), transition: Transition.rightToLeftWithFade), //ESFJ
      GetPage(name: '/ENJF', page: () => ENFJ(), transition: Transition.rightToLeftWithFade), //ENJF
      GetPage(name: '/ENTJ', page: () => ENTJ(), transition: Transition.rightToLeftWithFade), //ENTJ
    ],
    // },
  ));
}
