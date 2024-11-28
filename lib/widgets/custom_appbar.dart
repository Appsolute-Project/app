import 'package:flutter/material.dart';

class CustomAppbar extends StatelessWidget implements PreferredSizeWidget {
  final List<Widget> actions;

  const CustomAppbar({super.key, this.actions = const []});

  @override
  Size get preferredSize => Size.fromHeight(kToolbarHeight);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.white,
      scrolledUnderElevation: 0,
      centerTitle: false,
      title: Image.asset(
        'assets/images/logo.png',
        scale: 5,
      ),
      actions: actions,
    );
  }
}
