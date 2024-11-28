import 'package:appsolute_project_alco/screens/auth/sign_in/utils/account_links.dart';
import 'package:appsolute_project_alco/screens/home/home_screen.dart';
import 'package:appsolute_project_alco/screens/navigator.dart';
import 'package:appsolute_project_alco/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'utils/check_box.dart';
import 'utils/simple_login_divider.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';

class SignInScreen extends StatefulWidget {
  const SignInScreen({super.key});

  @override
  State<SignInScreen> createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen> {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final FirebaseAuth _auth = FirebaseAuth.instance;
  final FlutterSecureStorage _storage = FlutterSecureStorage();
  bool _autoLogin = false;

  @override
  void initState() {
    super.initState();
    _checkAutoLogin();
  }

  Future<void> _checkAutoLogin() async {
    final autoLogin = await _storage.read(key: 'autoLogin') ?? 'false';

    if (autoLogin == 'true') {
      if (mounted) {
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(builder: (context) => const MainNavigator()),
        );
      }
    }
  }

  Future<void> signIn() async {
    try {
      await _auth.signInWithEmailAndPassword(
        email: _emailController.text,
        password: _passwordController.text,
      );
      if (mounted) {
        await _storage.write(key: 'autoLogin', value: _autoLogin.toString());
        if (mounted) {
          Navigator.pushReplacement(
            context,
            MaterialPageRoute(builder: (context) => const MainNavigator()),
          );
        }
      }
    } on FirebaseAuthException {
      if (mounted) {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            backgroundColor: Colors.red,
            duration: Duration(milliseconds: 500),
            content: Text(
              '로그인 실패',
            ),
          ),
        );
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(height: 50),
              Image.asset(
                'assets/images/logo.png',
                scale: 3,
              ),
              CustomTextFormField(
                hint: "이메일",
                controller: _emailController,
              ),
              const SizedBox(height: 20),
              CustomTextFormField(
                hint: "비밀번호",
                obscureText: true,
                controller: _passwordController,
              ),
              const SizedBox(height: 20),
              SizedBox(
                width: double.infinity,
                height: 50,
                child: ElevatedButton(
                  onPressed: signIn,
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Color(0xff4A6ACA),
                  ),
                  child: const Text(
                    '로그인',
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w900,
                    ),
                  ),
                ),
              ),
              CheckBox(
                autoLogin: _autoLogin,
                onChanged: (value) {
                  setState(() {
                    _autoLogin = value ?? false;
                  });
                },
              ),
              SizedBox(height: 20),
              AccountLinks(),
              SizedBox(height: 20),
              SimpleLoginDivider(),
              SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  IconButton(
                    icon: Image.asset('assets/images/google_logo.png'),
                    iconSize: 80,
                    color: Colors.blue,
                    onPressed: () {
                      ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(
                          duration: Duration(milliseconds: 500),
                          content: Text(
                            '구현중..',
                          ),
                        ),
                      );
                    },
                  ),
                  SizedBox(width: 20),
                  IconButton(
                    icon: Image.asset('assets/images/github_logo.png'),
                    iconSize: 80,
                    onPressed: () {
                      ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(
                          duration: Duration(milliseconds: 500),
                          content: Text(
                            '구현중..',
                          ),
                        ),
                      );
                    },
                  ),
                  SizedBox(width: 20),
                  IconButton(
                    icon: Image.asset('assets/images/apple_logo.png'),
                    iconSize: 80,
                    color: Colors.black,
                    onPressed: () {
                      ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(
                          duration: Duration(milliseconds: 500),
                          content: Text(
                            '구현중..',
                          ),
                        ),
                      );
                    },
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
