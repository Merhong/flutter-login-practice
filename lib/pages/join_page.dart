import 'package:flutter/material.dart';
import 'package:login_practice/components/Logo.dart';
import 'package:login_practice/components/custom_join_form.dart';
import 'package:login_practice/size.dart';

class JoinPage extends StatelessWidget {
  const JoinPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: ListView(
          children: [
            SizedBox(height: large_gap),
            // 로고 + 타이틀 및 설명
            Logo("회원가입", "Enter Your Credentials To Continue"),
            SizedBox(height: large_gap),
            // 회원가입 Input Form(유저네임, 이메일, 패스워드) 및 회원가입 버튼
            CustomJoinForm(),
            // 버튼 아래 Login 페이지로 이동
            buildJoinRow(context)
          ],
        ),
      ),
    );
  }

  Row buildJoinRow(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SizedBox(height: 50),
        Text("Already have an account?  "),
        InkWell(
          onTap: () {
            print("Login을 탭했습니다.");
            Navigator.pushNamed(context, "/login");
          },
          child: Text("Login",
              style: TextStyle(
                  color: Colors.green, decoration: TextDecoration.none)),
        ),
      ],
    );
  }
}
