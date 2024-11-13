import 'package:flutter/material.dart';
import 'package:appsolute_project_alco/screens/home/home_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen>
    with TickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _animation;

  @override
  void initState() {
    super.initState();

    // Initialize the animation controller
    _controller = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 2), // 3초 동안 애니메이션 실행
    );

    _animation = Tween<double>(begin: 0, end: 1).animate(_controller)
      ..addListener(() {
        setState(() {});
      });

    // Start the animation after a delay
    Future.delayed(const Duration(seconds: 2), () {
      _controller.forward(); // 애니메이션 시작
    });

    // Navigate to the next screen after the animation is complete
    Future.delayed(const Duration(seconds: 4), () {
      if (mounted) {
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(builder: (context) => const HomeScreen()),
        );
      }
    });
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          // Logo Image at the center
          Center(
            child: ClipRect(
              child: Align(
                alignment: Alignment.topCenter,
                heightFactor: 0.8, // 하단을 20% 잘라냄
                child: Image.asset(
                  "assets/images/logo.png",
                  width: 150,
                  height: 150,
                ),
              ),
            ),
          ),
          // Progress bar after the image
          if (_animation.value > 0)
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 120),
              child: LinearProgressIndicator(
                borderRadius: BorderRadius.circular(100),
                value: _animation.value,
                minHeight: 5,
                backgroundColor: Colors.grey[300],
                valueColor: const AlwaysStoppedAnimation<Color>(Colors.blue),
              ),
            ),
        ],
      ),
    );
  }
}
