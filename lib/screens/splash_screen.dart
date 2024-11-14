import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Stack(
          alignment: Alignment.bottomCenter,
          children: [
            ClipRRect(
              child: Align(
                heightFactor: 0.8,
                child: Image.asset(
                  "assets/images/logo.png",
                  width: 159,
                ),
              ),
            ),
            const Text(
              "모바일 앱으로 재미있게 알고리즘 공부하자!",
              style: TextStyle(fontSize: 17, fontWeight: FontWeight.w600),
            )
          ],
        ),
      ),
    );
  }
}
