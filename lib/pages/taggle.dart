import 'package:flutter/material.dart';
import 'package:loginflutter/pages/login.dart';
import 'package:loginflutter/pages/register.dart';

class Toggle extends StatefulWidget {
  const Toggle({super.key});

  @override
  State<Toggle> createState() => _ToggleState();
}

class _ToggleState extends State<Toggle> {
  bool showLoginPage = true;

  void togglePages() {
    setState(() {
      showLoginPage = !showLoginPage;
    });
  }

  @override
  Widget build(BuildContext context) {
    if (showLoginPage) {
      return Login(onTap: togglePages);
    } else
      return Register(
        onTap: togglePages,
      );
  }
}
