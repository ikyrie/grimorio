import 'package:flutter/material.dart';
import 'package:grimorio/screens/components/display_text.dart';
import 'package:grimorio/screens/components/entry.dart';
import 'package:grimorio/screens/components/primary_button.dart';
import 'package:grimorio/theme.dart';

class NewEntry extends StatefulWidget {
  const NewEntry({super.key});

  @override
  State<NewEntry> createState() => _NewEntryState();
}

class _NewEntryState extends State<NewEntry> {
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        decoration: AppBackgroundProperties.boxDecoration,
        child: Scaffold(
          backgroundColor: Colors.transparent,
          appBar: AppBar(backgroundColor: AppColors.black,),
          body: SingleChildScrollView(
            child: Column(
              children: <Widget>[
                const Padding(
                  padding: EdgeInsets.symmetric(vertical: 32.0),
                  child: DisplayText("Adicionando um Livro"),
                ),
                SizedBox(
                  width: 244,
                  child: Column(
                    children: <Widget>[
                      const Entry(),
                      const Padding(
                        padding: EdgeInsets.only(bottom: 24.0),
                        child: Text(
                          "Very words so I can test the ammount of words I can put in here until the modal breaks. I need this test also to test if I can put an scrollable action. If I can't put a scrollable action here I'm in big trouble. Please let me put a scroll into a Dialog.",
                          maxLines: 4,
                          overflow: TextOverflow.ellipsis,
                        ),
                      ),
                      Form(
                        key: _formKey,
                        child: Column(
                          children: <Widget>[
                            Padding(
                              padding: const EdgeInsets.only(bottom: 16.0),
                              child: TextFormField(
                                keyboardType: TextInputType.datetime,
                                decoration:
                                  InputDecorationProperties.newInputDecoration(
                                  "",
                                  "Início da Leitura",
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(bottom: 24.0),
                              child: TextFormField(
                                decoration:
                                  InputDecorationProperties.newInputDecoration(
                                  "",
                                  "Final da Leitura",
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(bottom: 24.0),
                              child: TextFormField(
                                decoration:
                                  InputDecorationProperties.newInputDecoration(
                                  "",
                                  "Comentários",
                                ),
                                maxLines: 5,
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(bottom: 40.0),
                              child: PrimaryButton(text: "Adicionar", onTap: () {}),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}