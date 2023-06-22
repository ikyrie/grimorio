import 'package:flutter/material.dart';
import 'package:grimorio/theme.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Container(
      decoration: AppBackgroundProperties.boxDecoration,
      child: Scaffold(
        body: Container(),
      ),
    ),);
  }
}
