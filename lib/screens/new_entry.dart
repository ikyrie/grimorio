import 'package:flutter/material.dart';
import 'package:grimorio/controllers/book_controller.dart';
import 'package:grimorio/models/google_book.dart';
import 'package:grimorio/screens/components/date_input.dart';
import 'package:grimorio/screens/components/display_text.dart';
import 'package:grimorio/screens/components/entry.dart';
import 'package:grimorio/screens/components/primary_button.dart';
import 'package:grimorio/theme.dart';

class NewEntry extends StatefulWidget {
  const NewEntry({super.key, required this.googleBook});

  final GoogleBook googleBook;

  @override
  State<NewEntry> createState() => _NewEntryState();
}

class _NewEntryState extends State<NewEntry> {
  final _formKey = GlobalKey<FormState>();
  final TextEditingController initialDateController = TextEditingController();
  final TextEditingController finalDateController = TextEditingController();
  final TextEditingController commentsController = TextEditingController();
  final BookController bookController = BookController();

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
                      Entry(book: widget.googleBook),
                      Padding(
                        padding: const EdgeInsets.only(bottom: 24.0),
                        child: Text(widget.googleBook.description),
                      ),
                      Form(
                        key: _formKey,
                        child: Column(
                          children: <Widget>[
                            Padding(
                              padding: const EdgeInsets.only(bottom: 16.0),
                              child: DateInput(textController: initialDateController, label: "Início da Leitura"),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(bottom: 24.0),
                              child: DateInput(textController: finalDateController, label: "Final da Leitura"),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(bottom: 24.0),
                              child: TextFormField(
                                controller: commentsController,
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
                              child: PrimaryButton(text: "Adicionar", onTap: () {
                                bookController.addBook(widget.googleBook, initialDateController.text, finalDateController.text, commentsController.text);
                              }),
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
