import 'package:flutter/material.dart';
import 'package:grimorio/primary_button.dart';

class Dashboard extends StatelessWidget {
  const Dashboard({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(children: <Widget>[
            PrimaryButton(text: "Adicionar", icon: Icons.add,),
          ],),
        ),
      ),
    ));
  }
}
