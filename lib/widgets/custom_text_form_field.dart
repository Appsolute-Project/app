import 'package:flutter/material.dart';

class CustomTextFormField extends StatelessWidget {

  final String hint;
  final bool obscureText;

  const CustomTextFormField({
    super.key,
    required this.hint,
    this.obscureText = false
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      style: const TextStyle(
        fontFamily: "Paperlogy",
        fontWeight: FontWeight.w500,
        fontSize: 16
      ),
      obscureText: obscureText,
      decoration: InputDecoration(
        labelText: hint,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(200),
          borderSide: BorderSide(
            color: Colors.black.withOpacity(0.45)
          ),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(200),
            borderSide: const BorderSide(
                color: Color(0xFFA3A6FF)
            )
        ),
        floatingLabelStyle: const TextStyle(
          fontFamily: "Paperlogy",
          color: Color(0xFFA3A6FF)
        ),
        labelStyle: TextStyle(
          fontFamily: "Paperlogy",
          fontWeight: FontWeight.w500,
          color: Colors.black.withOpacity(0.7),
          fontSize: 16
        ),
        contentPadding: const EdgeInsets.fromLTRB(25, 15, 25, 15)
      ),
    );
  }
}
