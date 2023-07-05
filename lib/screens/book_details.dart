import 'package:flutter/material.dart';
import 'package:grimorio/models/personal_book.dart';
import 'package:grimorio/screens/components/secondary_button.dart';
import 'package:grimorio/screens/edit_details.dart';

import '../theme.dart';
import 'components/display_text.dart';
import 'components/primary_button.dart';

class BookDetails extends StatelessWidget {
  const BookDetails({super.key, required this.book});

  final PersonalBook book;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        decoration: AppBackgroundProperties.boxDecoration,
        child: Scaffold(
          backgroundColor: Colors.transparent,
          body: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 42.0),
            child: SingleChildScrollView(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  const Padding(
                    padding: EdgeInsets.symmetric(vertical: 24.0),
                    child: DisplayText("Detalhes do Livro"),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(bottom: 16.0),
                    child: Image.network(
                     book.googleBook.thumbnailLink,
                      height: 220,
                      width: 144,
                      fit: BoxFit.cover,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(bottom: 8.0),
                    child: Text(
                     book.googleBook.title,
                      style: ModalDecorationProperties.bookTitle,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(bottom: 16.0),
                    child: SizedBox(
                      width: double.maxFinite,
                      child: Text(
                        book.googleBook.authors,
                        style: ModalDecorationProperties.bookAuthor,
                      ),
                    ),
                  ),
                   Padding(
                    padding: const EdgeInsets.only(bottom: 24.0),
                    child: Text(
                     book.googleBook.description,
                      maxLines: 4,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(bottom: 8.0),
                    child: Row(children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.only(right: 8.0),
                        child: Icon(Icons.calendar_month, color: AppColors.mediumPink,),
                      ),
                      Text("Inicio da Leitura", style: TextStyle(color: AppColors.mediumPink),),
                    ],),
                  ),
                   Padding(
                    padding: const EdgeInsets.only(bottom: 8.0),
                    child: Row(children: <Widget>[Text(book.dayStarted, style: const TextStyle(fontSize: 16, fontWeight: FontWeight.w600),)]),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(bottom: 8.0),
                    child: Row(children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.only(right: 8.0),
                        child: Icon(Icons.calendar_month, color: AppColors.mediumPink,),
                      ),
                      Text("Final da Leitura", style: TextStyle(color: AppColors.mediumPink),),
                    ],),
                  ),
                   Padding(
                    padding: const EdgeInsets.only(bottom: 16.0),
                    child: Row(children: <Widget>[Text(book.dayFinished, style: const TextStyle(fontSize: 16, fontWeight: FontWeight.w600),)]),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(bottom: 8.0),
                    child: Row(
                      children: [
                        Text("Comentários", style: TextStyle(color: AppColors.mediumPink),),
                      ],
                    ),
                  ),
                   Padding(
                    padding: const EdgeInsets.only(bottom: 32.0),
                    child: Text(book.comments),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(bottom: 8.0),
                    child: PrimaryButtonIcon(
                      icon: Icons.edit,
                      text: "Editar",
                      onTap: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) => const EditDetails()));
                      },
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(bottom: 16.0),
                    child: SecondaryButton(
                      icon: Icons.delete,
                      text: "Excluir",
                      onTap: () {},
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
