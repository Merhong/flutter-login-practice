import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:login_practice/size.dart';

class Logo extends StatelessWidget {
  final String title;
  final String content;

  Logo(this.title, this.content);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(height: large_gap),
        SvgPicture.asset("assets/cat.svg",
            width: 70, height: 70, color: Colors.orange),
        SizedBox(height: large_gap),
        Row(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "${title}",
                  style: TextStyle(fontSize: 50, fontWeight: FontWeight.bold),
                ),
                Text(
                  "${content}",
                  style: TextStyle(fontSize: 15),
                ),
              ],
            ),
          ],
        ),
      ],
    );
  }
}
