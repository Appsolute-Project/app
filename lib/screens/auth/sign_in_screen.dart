import 'package:appsolute_project_alco/widgets/custom_check_box.dart';
import 'package:appsolute_project_alco/widgets/custom_text_form_field.dart';
import 'package:flutter/cupertino.dart';
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
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Center(
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 150),
              child: Image.asset("assets/images/logo.png"),
            ),
          ),
          const Padding(
            padding: EdgeInsets.fromLTRB(30, 30, 30, 0),
            child: CustomTextFormField(hint: "아이디"),
          ),
          const Padding(
            padding: EdgeInsets.fromLTRB(30, 30, 30, 0),
            child: CustomTextFormField(hint: "비밀번호", obscureText: true,),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(30, 30, 30, 15),
            child: SizedBox(
              width: double.infinity,
              height: 58,
              child: FilledButton(
                onPressed: () {},
                style: const ButtonStyle(
                  backgroundColor: WidgetStatePropertyAll(Color(0xFF4A6ACA)),
                ),
                child: const Text("로그인", style: TextStyle(fontFamily: "Paperlogy",fontWeight: FontWeight.w800, fontSize: 16),),
              ),
            )
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 40),
            child: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                CustomCheckBox(),
                SizedBox(width: 10,),
                Text("자동로그인", style: TextStyle(fontFamily: "Paperlogy", fontSize: 15, fontWeight: FontWeight.w500, color: Colors.black.withOpacity(0.86)),)
              ],
            ),
          ),
        ],
      )
    );
  }
}
