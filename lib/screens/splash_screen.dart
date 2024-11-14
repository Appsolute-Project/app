import 'package:appsolute_project_alco/screens/auth/sign_in_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

  @override
  void initState() {
    super.initState();
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.immersive);

    Future.delayed(
      const Duration(seconds: 3), () {
        Navigator.of(context).pushReplacement(
          MaterialPageRoute(
            builder: (_) => const SignInScreen()
          )
        );
    });
  }

  @override
  void dispose() {
    SystemChrome.setEnabledSystemUIMode(
      SystemUiMode.manual,
      overlays: SystemUiOverlay.values);
    super.dispose();
  }

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
          Text(
            "모바일 앱으로 재미있게 알고리즘 공부하자!",
            style: TextStyle(fontSize: 17, fontWeight: FontWeight.w600),
          )
        ],
      )),
    );
  }
}
