import 'package:appsolute_project_alco/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';

class SignInScreen extends StatefulWidget {
  const SignInScreen({super.key});

  @override
  State<SignInScreen> createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              'assets/images/logo.png',
              width: 100,
              height: 100,
            ),
            const SizedBox(height: 20),
            CustomTextFormField(
              labelText: '아이디',
              controller: TextEditingController(),
            ),
            const SizedBox(height: 20),
            CustomTextFormField(
              labelText: '비밀번호',
              controller: TextEditingController(),
              obscureText: true,
            ),
            const SizedBox(height: 20),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color(0xFF4A6ACA), // 버튼 색상
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30), // 둥근 모서리
                  ),
                  padding: const EdgeInsets.symmetric(vertical: 15),
                ),
                child: const Text(
                  '로그인',
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
            const SizedBox(height: 20),
            Row(
              children: [
                Transform.scale(
                  scale: 1.5,
                  child: Checkbox(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30),
                    ),
                    value: true,
                    onChanged: (value) {},
                    activeColor: const Color(0xFF4A6ACA),
                  ),
                ),
                const Text("자동로그인"),
              ],
            ),
            TextButton(
              onPressed: () {},
              child: const Text(
                '아이디 찾기 | 비밀번호 찾기 | 회원가입',
                style: TextStyle(
                  color: Colors.grey,
                  fontSize: 14,
                ),
              ),
            ),
            const SizedBox(height: 20),
            const Row(
              children: [
                Expanded(
                  child: Divider(
                    thickness: 1,
                    color: Colors.grey,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 8.0),
                  child: Text('간편 로그인 연동'),
                ),
                Expanded(
                  child: Divider(
                    thickness: 1,
                    color: Colors.grey,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                IconButton(
                  icon: Image.asset(
                    'assets/images/google_icon.png',
                    width: 40,
                  ), // Google 아이콘 이미지 경로
                  iconSize: 50,
                  onPressed: () {
                    // Google 로그인 함수 호출
                  },
                ),
                const SizedBox(width: 30),
                IconButton(
                  icon: Image.asset(
                    'assets/images/github_icon.png',
                    width: 40,
                  ), // GitHub 아이콘 이미지 경로
                  iconSize: 50,
                  onPressed: () {
                    // GitHub 로그인 함수 호출
                  },
                ),
                const SizedBox(width: 30),
                IconButton(
                  icon: Image.asset(
                    'assets/images/apple_icon.png',
                    width: 30,
                  ), // Apple 아이콘 이미지 경로
                  iconSize: 50,
                  onPressed: () {
                    // Apple 로그인 함수 호출
                  },
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
