import 'package:flutter/cupertino.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
import 'package:crypto/crypto.dart';
import 'package:get/get.dart';

class HttpSet {
  //////HTTP Samples
  String UseConn(String suburl, String method) {
    // String url = KeyManager().baseUrl;
    // String key = KeyManager().secretKey;
    String key = ''; // 임시
    String message = DateTime.now().millisecondsSinceEpoch.toString() + '.' + method + '.' + suburl;
    List<int> esecretkey = utf8.encode(key);
    List<int> emessage = utf8.encode(message);
    var hashedsecretkey = Hmac(sha256, esecretkey);

    Digest digest = hashedsecretkey.convert(emessage);
    String base64Mac = base64.encode(digest.bytes);
    // print(message);
    return base64Mac;
  }

  Map<String, dynamic> bidQueryjson(String device, String keyword, int position) {
    Map<String, dynamic> keywords = {
      "device": device,
      "items": [
        {'key': keyword, 'position': position}
      ]
    };
    return keywords;
  }

  Map<String, dynamic> estimteQueryjson(String device, String keyword, bool keywordplus) {
    Map<String, dynamic> keywords = {
      "type": "keyword",
      "device": device,
      "key": keyword,
      "keywordplus": keywordplus,
      "bids": [999999999]
    };
    return keywords;
  }

  Map<String, dynamic> relKeywordQueryjson({required String hintKeywords, required int month}) {
    Map<String, dynamic> keywords = {
      "hintKeywords": hintKeywords,
    };
    return keywords;
  }

  // Future<List<String>> postShowBid({required String device, required String keyword, required int position}) async {
  //   String suburl = '/estimate/average-position-bid/keyword'; // sub url
  //   String method = 'POST'; // method
  //   String bid = ''; //결과 예산
  //   List<String> returnList = [];
  //   String key = KeyManager().secretKey; // 비밀키
  //   http.Response response = await http.post(
  //     Uri.parse(KeyManager().baseUrl + suburl), // url 전체
  //     headers: <String, String>{
  //       'Content-Type': 'application/json; charset=UTF-8',
  //       'X-Timestamp': DateTime.now().millisecondsSinceEpoch.toString(), //unix 시간
  //       'X-API-KEY': KeyManager().openKey,
  //       'X-API-SECRET': key,
  //       'X-Customer': KeyManager().customerKey,
  //       'X-Signature': UseConn(suburl, method), //HMAC으로 unix시간 + 비밀키 + suburl을 base64로 인코딩
  //     },
  //     body: jsonEncode(bidQueryjson(device, keyword, position)), //Json으로 받는다.
  //   );
  //   Map<String, dynamic> list = await jsonDecode(response.body); // 응답값이 돌아오면 Map에 저장
  //   while (response.statusCode != 200) {
  //     // 정상 값이 들어올때까지 반복
  //     response = await http.post(
  //       Uri.parse(KeyManager().baseUrl + suburl), // url 전체
  //       headers: <String, String>{
  //         'Content-Type': 'application/json; charset=UTF-8',
  //         'X-Timestamp': DateTime.now().millisecondsSinceEpoch.toString(), //unix 시간
  //         'X-API-KEY': KeyManager().openKey,
  //         'X-API-SECRET': key,
  //         'X-Customer': KeyManager().customerKey,
  //         'X-Signature': UseConn(suburl, method), //HMAC으로 unix시간 + 비밀키 + suburl을 base64로 인코딩
  //       },
  //       body: jsonEncode(bidQueryjson(device, keyword, position)), //Json으로 받는다.
  //     );
  //   }
  //   if (response.statusCode == 200) {
  //     Map<String, dynamic> list = await jsonDecode(response.body); // 응답값이 돌아오면 Map에 저장
  //     bid = list["estimate"][0]['bid'].toString();
  //     returnList.add(device);
  //     returnList.add(bid);
  //     returnList.add(position.toString());
  //     print(response.body);
  //     print(returnList);
  //   } else {
  //     await postShowBid(device: device, keyword: keyword, position: position);
  //   }

  //   return returnList; //[0]: device, [1]: bid, [2]:position
  // }

  // 광고 관련 연관키워드. 네이버의 연관키워드랑 다르기 때문에 사용하지 않음
  // Future<String> getRelKeywords({required String keyword}) async {
  //   String suburl = '/keywordstool'; // sub url
  //   http.Response response = await http.get(
  //     Uri.parse(KeyManager().baseUrl + suburl + '?hintKeywords=' + keyword), // url 전체
  //     headers: <String, String>{
  //       'X-Timestamp': DateTime.now().millisecondsSinceEpoch.toString(), //unix 시간
  //       'X-API-KEY': KeyManager().openKey,
  //       'X-API-SECRET': KeyManager().secretKey,
  //       'X-Customer': KeyManager().customerKey,
  //       'X-Signature': UseConn(suburl, 'GET'), //HMAC으로 unix시간 + 비밀키 + suburl을 base64로 인코딩
  //     },
  //   );
  //   return response.body;
  // }

//네이버 연관 키워드
  Future<List<String>> getNaverRelKeywords({required String keyword}) async {
    http.Response response = await http.get(
      Uri.parse('https://ac.search.naver.com/nx/ac?con=0&frm=nv&ans=2&r_format=json&r_enc=UTF-8&r_unicode=0&t_koreng=1&rev=4&q_enc=UTF-8&st=100&q=' + keyword),
      headers: <String, String>{'accept-language': 'ko-KR,ko;q=0.9,en-US;q=0.8,en;q=0.7', 'accept-encoding': 'gzip, deflate, br'},
    );
    List<dynamic> decodeResponse = jsonDecode(response.body)['items'][0];
    List<String> decodeRelKeywordList = [];
    for (int i = 0; i < decodeResponse.length; i++) {
      decodeRelKeywordList.add(decodeResponse[i][0]);
    }
    return decodeRelKeywordList;
  }

  // Future<Map<String, dynamic>> postShowEstimate({required String device, required String keyword}) async {
  //   String suburl = '/estimate/performance/keyword'; // sub url
  //   String method = 'POST'; // method
  //   String key = KeyManager().secretKey; // 비밀키
  //   Map<String, dynamic> rMap = <String, dynamic>{};
  //   http.Response response = await http.post(
  //     Uri.parse(KeyManager().baseUrl + suburl), // url 전체
  //     headers: <String, String>{
  //       'Content-Type': 'application/json; charset=UTF-8',
  //       'X-Timestamp': DateTime.now().millisecondsSinceEpoch.toString(), //unix 시간
  //       'X-API-KEY': KeyManager().openKey,
  //       'X-API-SECRET': key,
  //       'X-Customer': KeyManager().customerKey,
  //       'X-Signature': UseConn(suburl, method), //HMAC으로 unix시간 + 비밀키 + suburl을 base64로 인코딩
  //     },
  //     body: jsonEncode(estimteQueryjson(device, keyword, true)), //Json으로 받는다.
  //   );
  //   rMap = await jsonDecode(response.body); // 응답값이 돌아오면 Map에 저장
  //   print(rMap);
  //   // if (response.statusCode == 200) {
  //   //   rMap = await jsonDecode(response.body); // 응답값이 돌아오면 Map에 저장
  //   //   print(rMap);
  //   // } else {
  //   //   print('에러:' + (response.statusCode).toString());
  //   //   print(response.body);
  //   // }
  //   return rMap;
  // }
}
