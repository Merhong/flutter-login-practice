import 'package:flutter/material.dart';
import 'package:login_practice/size.dart';

class CustomTextFormField extends StatelessWidget {
  final textController;
  final validate;
  final text;
  final isPassword;

  CustomTextFormField(
      {required this.text,
      required this.validate,
      this.textController,
      this.isPassword = false});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text("${text}"),
        SizedBox(height: small_gap),
        TextFormField(
          controller: textController,
          // 유효성 검사를 위한 validator
          // 1. value가 들어옴
          // 2. value로 유효성 검사하기
          // 3. 리턴
          //    null 리턴 -> 유효성 검사 통과
          //    메시지 리턴 -> 유효성 검사 실패
          validator: validate,
          obscureText: isPassword, // 비밀번호를 넣어줄때만 true
          // obscureText: true, // html의 input태그의 password처럼 가려줌
          decoration: InputDecoration(
            prefixIcon: Icon(Icons.account_box),
            suffixIcon: Icon(Icons.check),
            hintText: "Enter ${text}",
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(0),
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(0),
            ),
            errorBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(0),
            ),
            focusedErrorBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(0),
            ),
          ),
        ),
      ],
    );
  }
}
