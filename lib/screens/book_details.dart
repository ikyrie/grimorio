import 'package:flutter/material.dart';
import 'package:grimorio/screens/components/secondary_button.dart';
import 'package:grimorio/screens/edit_details.dart';

import '../theme.dart';
import 'components/display_text.dart';
import 'components/primary_button.dart';

class BookDetails extends StatelessWidget {
  const BookDetails({super.key});

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
                      "https://i.pinimg.com/736x/88/cb/ba/88cbba5cdbd59fa49462ab96f3b1b79c.jpg",
                      height: 220,
                      width: 144,
                      fit: BoxFit.cover,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(bottom: 8.0),
                    child: Text(
                      "Singer and dancer at Twice. Very talented and sweet person.",
                      style: ModalDecorationProperties.bookTitle,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(bottom: 16.0),
                    child: SizedBox(
                      width: double.maxFinite,
                      child: Text(
                        "Jihyo",
                        style: ModalDecorationProperties.bookAuthor,
                      ),
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.only(bottom: 24.0),
                    child: Text(
                      "Very words so I can test the ammount of words I can put in here until the modal breaks. I need this test also to test if I can put an scrollable action. If I can't put a scrollable action here I'm in big trouble. Please let me put a scroll into a Dialog.",
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
                  const Padding(
                    padding: EdgeInsets.only(bottom: 8.0),
                    child: Row(children: <Widget>[Text("08/11/2023", style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),)]),
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
                  const Padding(
                    padding: EdgeInsets.only(bottom: 16.0),
                    child: Row(children: <Widget>[Text("08/12/2023", style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),)]),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(bottom: 8.0),
                    child: Row(
                      children: [
                        Text("Comentários", style: TextStyle(color: AppColors.mediumPink),),
                      ],
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.only(bottom: 32.0),
                    child: Text('"1984" de George Orwell é uma obra-prima distópica que continua a ser relevante. Sua representação sombria de um estado totalitário é assustadoramente realista e serve como um lembrete sobre o poder da manipulação e vigilância governamental. É um livro impactante que nos faz refletir sobre os perigos da perda da liberdade e da manipulação da verdade.'),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(bottom: 8.0),
                    child: PrimaryButtonIcon(
                      icon: Icons.edit,
                      text: "Editar",
                      onTap: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) => EditDetails()));
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
