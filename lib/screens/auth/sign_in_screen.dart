import 'package:appsolute_project_alco/widgets/custom_check_box.dart';
import 'package:appsolute_project_alco/widgets/custom_text_btn.dart';
import 'package:appsolute_project_alco/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';

class SignInScreen extends StatefulWidget {
  const SignInScreen({super.key});

  @override
  State<SignInScreen> createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen>
    with SingleTickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomInset: false,
        body: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.max,
            children: [
              const SizedBox(
                height: 50,
              ),
              SizedBox(height: 10),
              Center(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 150),
                  child: Image.asset("assets/images/logo.png"),
                ),
              ),
              const Padding(
                padding: EdgeInsets.fromLTRB(30, 20, 30, 0),
                child: CustomTextFormField(hint: "아이디"),
              ),
              const Padding(
                padding: EdgeInsets.fromLTRB(30, 20, 30, 0),
                child: CustomTextFormField(
                  hint: "비밀번호",
                  obscureText: true,
                ),
              ),
              Padding(
                  padding: const EdgeInsets.fromLTRB(30, 20, 30, 10),
                  child: SizedBox(
                    width: double.infinity,
                    height: 58,
                    child: FilledButton(
                      onPressed: () {},
                      style: const ButtonStyle(
                        backgroundColor:
                            WidgetStatePropertyAll(Color(0xFF4A6ACA)),
                      ),
                      child: const Text(
                        "로그인",
                        style: TextStyle(
                            fontFamily: "Paperlogy",
                            fontWeight: FontWeight.w800,
                            fontSize: 16),
                      ),
                    ),
                  )),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 40),
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    const CustomCheckBox(),
                    const SizedBox(
                      width: 10,
                    ),
                    Text(
                      "자동로그인",
                      style: TextStyle(
                          fontFamily: "Paperlogy",
                          fontSize: 15,
                          fontWeight: FontWeight.w500,
                          color: Colors.black.withOpacity(0.86)),
                    )
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(vertical: 15),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Spacer(),
                    CustomTextBtn(text: "아이디 찾기", onPressed: () {}),
                    Text(
                      "|",
                      style: TextStyle(
                          fontSize: 13,
                          fontWeight: FontWeight.w600,
                          fontFamily: "Paperlogy"),
                    ),
                    CustomTextBtn(text: "비밀번호 찾기", onPressed: () {}),
                    Text(
                      "|",
                      style: TextStyle(
                          fontSize: 13,
                          fontWeight: FontWeight.w600,
                          fontFamily: "Paperlogy"),
                    ),
                    CustomTextBtn(text: "회원가입", onPressed: () {}),
                    Spacer()
                  ],
                ),
              ),
              Stack(
                alignment: Alignment.topCenter,
                children: [
                  Container(
                    margin: EdgeInsets.only(top: 22),
                    decoration: BoxDecoration(
                        border: Border(
                            top: BorderSide(
                                color: Colors.black.withOpacity(0.29))),
                        color: Colors.white),
                  ),
                  Container(
                    color: Colors.white,
                    padding: EdgeInsets.fromLTRB(20, 10, 20, 10),
                    child: Text(
                      "간편 로그인 연동",
                      style: TextStyle(
                          fontFamily: "Paperlogy",
                          fontSize: 16,
                          fontWeight: FontWeight.w200),
                    ),
                  ),
                ],
              )
            ],
          ),
        ));
  }
}
