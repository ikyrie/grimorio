import 'package:flutter/material.dart';
import 'package:grimorio/primary_button.dart';
import 'package:grimorio/secondary_button.dart';
import 'package:grimorio/theme.dart';

class Dashboard extends StatelessWidget {
  const Dashboard({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Container(
      decoration: AppBackgroundProperties.boxDecoration,
      child: const Scaffold(
        backgroundColor: Colors.transparent,
        body: Center(
          child: Padding(
            padding: EdgeInsets.all(16.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
              PrimaryButton(text: "Entrar",),
              PrimaryButtonIcon(text: "Adicionar", icon: Icons.add),
              SecondaryButton(text: "Apagar", icon: Icons.delete),
            ],),
          ),
        ),
      ),
    ));
  }
}
