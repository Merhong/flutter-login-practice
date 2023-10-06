import 'package:flutter/material.dart';
import 'package:login_practice/components/Logo.dart';
import 'package:login_practice/components/custom_login_form.dart';
import 'package:login_practice/size.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      // Inset 때문에 ListView 사용
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView(
          children: [
            SizedBox(height: large_gap),
            // 로고 + 타이틀 및 설명
            Logo("로그인", "Enter your Email and Password"),
            SizedBox(height: large_gap),
            // 로그인 Input Form + 로그인 버튼
            CustomLoginForm(),
            // 로그인 최하단 회원가입 버튼
            buildLoginRow(context),
          ],
        ),
      ),
    );
  }

  Row buildLoginRow(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SizedBox(height: 50),
        Text("Don't have an account?  "),
        InkWell(
          onTap: () {
            print("SignUp을 탭했습니다.");
            Navigator.pushNamed(context, "/join");
          },
          child: Text("SignUp",
              style: TextStyle(
                  color: Colors.green, decoration: TextDecoration.none)),
        ),
      ],
    );
  }
}
