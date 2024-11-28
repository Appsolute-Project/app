import 'package:flutter/material.dart';

class CheckBox extends StatefulWidget {
  final bool autoLogin;
  final ValueChanged<bool?> onChanged;

  const CheckBox({
    super.key,
    this.autoLogin = false,
    required this.onChanged,
  });

  @override
  State<CheckBox> createState() => _CheckBoxState();
}

class _CheckBoxState extends State<CheckBox> {
  late bool _isChecked;

  @override
  void initState() {
    super.initState();
    _isChecked = widget.autoLogin;
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Checkbox(
          activeColor: Color(0xff4A6ACA),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(100),
          ),
          value: _isChecked,
          onChanged: (bool? value) {
            setState(() {
              _isChecked = value ?? false;
            });
            widget.onChanged(value);
          },
        ),
        const Text(
          '자동로그인',
          style: TextStyle(
            fontWeight: FontWeight.bold,
          ),
        ),
      ],
    );
  }
}
