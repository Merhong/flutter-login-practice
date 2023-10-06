import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:login_practice/size.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff54b275),
      body: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            // 이미지
            SvgPicture.asset(
              "assets/cat.svg",
              width: 70,
              height: 70,
              colorFilter: ColorFilter.mode(
                Colors.white, // 변경할 색상
                BlendMode.srcIn, // 블렌드 모드 설정
              ),
            ),
            SizedBox(width: 10),
            // 텍스트
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Cattar",
                  style: TextStyle(fontSize: 50, color: Colors.white),
                ),
                Text(
                  "Online Groceriet",
                  style: TextStyle(fontSize: 15, color: Colors.white),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
