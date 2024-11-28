import 'package:flutter/material.dart';

class SimpleLoginDivider extends StatelessWidget {
  const SimpleLoginDivider({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        // 왼쪽 선
        Expanded(
          child: Divider(
            color: Colors.grey, // 선 색상
            thickness: 1, // 선 두께
          ),
        ),
        // 가운데 텍스트
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8.0), // 텍스트 좌우 여백
          child: Text(
            "간편 로그인 연동",
            style: TextStyle(
              fontSize: 14, // 텍스트 크기
              fontWeight: FontWeight.w500, // 텍스트 두께
              color: Colors.black87, // 텍스트 색상
            ),
          ),
        ),
        // 오른쪽 선
        Expanded(
          child: Divider(
            color: Colors.grey, // 선 색상
            thickness: 1, // 선 두께
          ),
        ),
      ],
    );
  }
}
