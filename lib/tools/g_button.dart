import 'package:flutter/cupertino.dart';
import 'package:flutter/src/services/text_formatter.dart';

import 'package:flutter/material.dart';
import 'package:itmbti/tools/g_design.dart';

class GButton {
  Widget BaseButton({
    required String title,
    required void Function()? onPressed,
    double width = 150,
    double height = 30,
    Color color = Colors.blue,
    Color bordercolor = Colors.blue,
    Color fontcolor = Colors.white,
    Color disableColor = color_grey,
    Color disableBorderColor = color_grey,
    Color disableFontColor = Colors.white,
    double borderWidth = 1,
    double marginTop = 0,
    double marginLeft = 0,
    double marginRight = 0,
    double marginBottom = 0,
    MouseCursor? mouseCursorShape = SystemMouseCursors.click,
    //SystemMouseCursors.basic
    bool enabled = true,
  }) {
    return Container(
      width: width,
      height: height,
      margin: EdgeInsets.only(
        top: marginTop,
        left: marginLeft,
        right: marginRight,
        bottom: marginBottom,
      ),
      child: ElevatedButton(
        child: Text(
          title,
          style: TextStyle(color: fontcolor),
        ),
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(enabledMouseCursor: mouseCursorShape, padding: EdgeInsets.all(0), primary: enabled ? color : color_grey, side: BorderSide(style: borderWidth == 0 ? BorderStyle.none : BorderStyle.solid, width: borderWidth, color: enabled ? bordercolor : disableBorderColor)),
      ),
    );
  }

  Widget RoundButton({
    required String title,
    required void Function()? onPressed,
    double width = 150,
    double height = 32,
    Color color = Colors.blue,
    Color bordercolor = Colors.blue,
    Color fontcolor = Colors.white,
    Color disableColor = color_grey,
    Color disableBorderColor = color_grey,
    Color disableFontColor = Colors.white,
    double borderWidth = 1,
    double marginTop = 0,
    double marginLeft = 0,
    double marginRight = 0,
    double marginBottom = 0,
    MouseCursor? mouseCursorShape = SystemMouseCursors.click,
    //SystemMouseCursors.basic
    bool enabled = true,
  }) {
    return Container(
      width: width,
      height: height,
      margin: EdgeInsets.only(
        top: marginTop,
        left: marginLeft,
        right: marginRight,
        bottom: marginBottom,
      ),
      decoration: BoxDecoration(
        color: color,
        border: Border.all(
          style: BorderStyle.solid,
          color: bordercolor,
          width: 1,
        ),
        borderRadius: const BorderRadius.all(
          Radius.circular(15.0),
        ),
      ),
      child: TextButton(
        child: Text(
          title,
          style: TextStyle(color: fontcolor),
        ),
        onPressed: onPressed,
        // style: ElevatedButton.styleFrom(enabledMouseCursor: mouseCursorShape, padding: EdgeInsets.all(0), primary: enabled ? color : color_grey, side: BorderSide(style: borderWidth == 0 ? BorderStyle.none : BorderStyle.solid, width: borderWidth, color: enabled ? bordercolor : disableBorderColor)),
      ),
    );
  }

  Widget BorderInput({
    required TextEditingController inputController,
    String hintLabel = '',
    Color hintColor = Colors.grey,
    Color color = Colors.white,
    double fontSize = size_font_boxinput,
    bool readOnly = false,
    int maxLength = 10000,
    int maxLineCNT = 1, //TextField의 높이 지정용.
    double width = 200,
    double height = height_boxtitle - margin_inner_widget * 2,
    double fontVPosition = -12,
    double marginTop = 0,
    double marginLeft = 0,
    double marginRight = 0,
    double marginBottom = 0,
    double paddingTop = 0,
    double paddingLeft = 5,
    double paddingRight = 0,
    double paddingBottom = 0,
    //상단 테두리 두께 및 색상
    double borderTopWidth = 1,
    Color borderTopColor = color_border_textfield,
    //왼쪽 테두리 두께 및 색상
    double borderLeftWidth = 1,
    Color borderLeftColor = color_border_textfield,
    //오른쪽 테두리 두께 및 색상
    double borderRightWidth = 1,
    Color borderRightColor = color_border_textfield,
    //하단 테두리 두께 및 색상
    double borderBottomWidth = 1,
    Color borderBottomColor = color_border_textfield,
    FocusNode? focusNode,
    bool obscureText = false,
    bool enableSuggestions = false,
    bool autocorrect = false,
    void Function(String)? onChanged,
    //마스킹 옵션
    bool isSaupNum = false,
    bool isPhoneNum = false,
    bool isNumber = false,
    bool isJumin = false,
    //입력 컨트롤
    bool autofocusing = false,
    List<TextInputFormatter>? inputFormatters,
    TextInputAction? textInputAction,
    void Function(String)? onSubmit,
  }) {
    return Container(
      alignment: Alignment.bottomCenter,
      //color: color, // BoxDecoration을 사용하는 경우 사용불가 옵션
      width: width,
      height: height,
      margin: EdgeInsets.only(
        top: marginTop,
        left: marginLeft,
        right: marginRight,
        bottom: marginBottom,
      ),
      decoration: BoxDecoration(
        color: color,
        border: Border(
          top: BorderSide(
            style: borderTopWidth == 0 ? BorderStyle.none : BorderStyle.solid,
            color: borderTopColor,
            width: borderTopWidth,
          ),
          left: BorderSide(
            style: borderLeftWidth == 0 ? BorderStyle.none : BorderStyle.solid,
            color: borderLeftColor,
            width: borderLeftWidth,
          ),
          right: BorderSide(
            style: borderRightWidth == 0 ? BorderStyle.none : BorderStyle.solid,
            color: borderRightColor,
            width: borderRightWidth,
          ),
          bottom: BorderSide(
            style: borderBottomWidth == 0 ? BorderStyle.none : BorderStyle.solid,
            color: borderBottomColor,
            width: borderBottomWidth,
          ),
        ),
      ),
      child: Container(
        margin: EdgeInsets.only(top: paddingTop, left: paddingLeft, right: paddingRight, bottom: paddingBottom),
        child: TextField(
          controller: inputController,
          focusNode: focusNode,
          readOnly: readOnly,
          style: TextStyle(fontSize: fontSize), //입력폰트사이즈
          textInputAction: textInputAction,
          autofocus: autofocusing,
          inputFormatters: inputFormatters,
          onSubmitted: (value) {
            if (onSubmit != null) {
              onSubmit(value);
            }
          },
          onChanged: (String value) {
            if (onChanged != null) {
              onChanged(value);
            }
            if (isSaupNum) {
              //사업자 번호 타입으로 텍스트 마스킹
              value = value.replaceAll('-', '');
              if (value.length > 5) {
                inputController.text = value.substring(0, 3) + '-' + value.substring(3, 5) + '-' + value.substring(5, value.length);
              } else if (value.length > 3) {
                inputController.text = value.substring(0, 3) + '-' + value.substring(3, value.length);
              }
              inputController.selection = TextSelection.fromPosition(TextPosition(offset: inputController.text.length));
            } else if (isPhoneNum) {
              //전화번호 타입으로 텍스트 마스킹
              value = value.replaceAll('-', '');
              if (value.substring(0, 2) == '02') {
                //서울지역번호
                if (value.length >= 10) {
                  inputController.text = value.substring(0, 2) + '-' + value.substring(2, 6) + '-' + value.substring(6, value.length);
                } else if (value.length >= 6) {
                  inputController.text = value.substring(0, 2) + '-' + value.substring(2, 5) + '-' + value.substring(5, value.length);
                } else if (value.length >= 3) {
                  inputController.text = value.substring(0, 2) + '-' + value.substring(2, value.length);
                }
              } else {
                //서울 이외의 지역 또는 휴대전화
                if (value.length >= 11) {
                  inputController.text = value.substring(0, 3) + '-' + value.substring(3, 7) + '-' + value.substring(7, value.length);
                } else if (value.length == 8) {
                  inputController.text = value.substring(0, 4) + '-' + value.substring(4, value.length);
                } else if (value.length >= 7) {
                  inputController.text = value.substring(0, 3) + '-' + value.substring(3, 6) + '-' + value.substring(6, value.length);
                } else if (value.length >= 4) {
                  inputController.text = value.substring(0, 3) + '-' + value.substring(3, value.length);
                }
              }
              inputController.selection = TextSelection.fromPosition(TextPosition(offset: inputController.text.length)); //커서를 마지막으로 옮겨준다.
            } else if (isNumber) {
              //천단위 구분기호 있는 숫자 타입으로 텍스트 마스킹
              value = value.replaceAll(',', '');
              String newValue = '';
              int numCNT = 0;
              for (int i = value.length - 1; i >= 0; i--) {
                if (numCNT > 0 && (numCNT) % 3 == 0) {
                  newValue = ',' + newValue;
                }
                newValue = value.substring(i, i + 1) + newValue;
                numCNT++;
              }
              inputController.text = newValue;
              inputController.selection = TextSelection.fromPosition(TextPosition(offset: inputController.text.length)); //커서를 마지막으로 옮겨준다.
            } else if (isJumin) {
              //천단위 구분기호 있는 숫자 타입으로 텍스트 마스킹
              value = value.replaceAll('-', '');

              if (value.length >= 7) {
                inputController.text = value.substring(0, 6) + '-' + value.substring(6, value.length);
              }
              inputController.selection = TextSelection.fromPosition(TextPosition(offset: inputController.text.length)); //커서를 마지막으로 옮겨준다.
            }
          },
          maxLines: maxLineCNT,
          decoration: InputDecoration(
            border: InputBorder.none, //기본 테두리는 감춘다.
            focusedBorder: InputBorder.none,
            contentPadding: EdgeInsets.only(top: fontVPosition),
            hintText: hintLabel,
            hintStyle: TextStyle(color: hintColor),
            counterText: "",
          ),
          obscureText: obscureText,
          enableSuggestions: enableSuggestions,
          autocorrect: autocorrect,
          maxLength: maxLength,
        ),
      ),
    );
  }

  //child를 갖는 버튼
  Widget ChildButton({
    required Widget child,
    required void Function()? onPressed, //콜백함수
    double width = 150,
    double height = 30,
    Color childColor = Colors.grey,
    Color borderColor = Colors.grey,
    double borderWidth = 1,
    double marginTop = 0,
    double marginLeft = 0,
    double marginRight = 0,
    double marginBottom = 0,
    bool enabled = true,
  }) {
    return InkWell(
      splashColor: Colors.blueGrey[50],
      child: Container(
        width: width,
        height: height,
        margin: EdgeInsets.only(
          top: marginTop,
          left: marginLeft,
          right: marginRight,
          bottom: marginBottom,
        ),
        child: child,
      ),
      onTap: enabled ? onPressed : null,
    );
  }
}
