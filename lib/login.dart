import 'package:flutter/material.dart';
import 'package:grimorio/theme.dart';

import 'display_text.dart';

class Login extends StatelessWidget {
  const Login({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Container(
      decoration: AppBackgroundProperties.boxDecoration,
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: Center(child: DisplayText("Login"),),
      ),
    ),);
  }
}
