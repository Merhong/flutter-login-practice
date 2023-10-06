import 'package:flutter/material.dart';
import 'package:login_practice/components/custom_text_form_field.dart';
import 'package:login_practice/size.dart';
import 'package:login_practice/user_repository.dart';
import 'package:login_practice/validator_util.dart';

class CustomJoinForm extends StatelessWidget {
  // GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  final _formKey = GlobalKey<FormState>(); // 유효성 검사를 위한 변수

  final _username = TextEditingController();
  final _email = TextEditingController();
  final _password = TextEditingController();

  CustomJoinForm();

  @override
  Widget build(BuildContext context) {
    // Form 태그로 묶은 이유? 통신이 아님 유효성 검사 때문에 묶었음!!!
    return Form(
      key: _formKey,
      child: Column(
        children: [
          CustomTextFormField(
              text: "Username",
              validate: validateUsername(),
              textController: _username),
          CustomTextFormField(
              text: "Email", validate: validateEmail(), textController: _email),
          CustomTextFormField(
              text: "Password",
              validate: validatePassword(),
              textController: _password,
              isPassword: true),
          Row(
            // mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Text("By Continuing you agree to our "),
                      InkWell(
                        onTap: () {
                          print("Terms Of Service를 탭했습니다.");
                        },
                        child: Text("Terms of Service",
                            style: TextStyle(
                                color: Colors.green,
                                decoration: TextDecoration.none)),
                      ),
                    ],
                  ),
                  SizedBox(height: 10),
                  Row(
                    children: [
                      Text("and "),
                      InkWell(
                        onTap: () {
                          print("Privacy Policey를 탭했습니다.");
                        },
                        child: Text("Privacy Policey.",
                            style: TextStyle(
                                color: Colors.green,
                                decoration: TextDecoration.none)),
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
          SizedBox(height: large_gap),
          ElevatedButton(
            onPressed: () {
              // formKey가 연결되지 않으면 currentState가 null이다.
              // validator가 null 리턴시 true가 되서 유효성 검사 통과!
              if (_formKey.currentState!.validate()) {
                UserRepository repo =
                    UserRepository(); // 서버와 통신을 해서 아이디와 비밀번호를 들고옴
                repo.login(_email.text.trim(),
                    _password.text.trim()); // trim은 앞뒤 공백을 날려줌
                Navigator.pushNamed(context, "/login");
              }
            },
            child: Text("Sign Up"),
          ),
        ],
      ),
    );
  }
}
