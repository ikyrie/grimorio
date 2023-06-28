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
  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Container(
      decoration: AppBackgroundProperties.boxDecoration,
      child: Scaffold(
        appBar: AppBar(backgroundColor: AppColors.black),
        backgroundColor: Colors.transparent,
        body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: CustomScrollView(
            slivers: <Widget>[
              const SliverToBoxAdapter(
                child: Padding(
                  padding: EdgeInsets.only(bottom: 32.0),
                  child: DisplayText("Adicionar Livro"),
                ),
              ),
              SliverToBoxAdapter(
                child: Padding(
                  padding: const EdgeInsets.only(bottom: 8.0),
                  child: TextFormField(
                    decoration: InputDecorationProperties.newInputDecoration("Procure um título", "Título", const Icon(Icons.search)),
                  ),
                ),
              ),
              const SliverToBoxAdapter(
                child: SizedBox(
                  width: double.infinity,
                  child: Padding(
                    padding: EdgeInsets.only(bottom: 32.0),
                    child: Text("3 resultados"),
                  ),
                ),
              ),
              SliverList.builder(
                itemBuilder: (context, index) => InkWell(
                  onTap: () {
                    showDialog(
                      context: context,
                      builder: (context) => Dialog(
                        insetPadding: const EdgeInsets.all(16),
                        clipBehavior: Clip.hardEdge,
                        shape: ModalDecorationProperties.modalBorder,
                        child: Container(
                          padding: const EdgeInsets.all(32.0),
                          decoration: ModalDecorationProperties.boxDecoration,
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            children: <Widget>[
                              Padding(
                                padding: const EdgeInsets.only(bottom: 16.0),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  children: <Widget>[
                                    InkWell(
                                      child: const Icon(Icons.close),
                                      onTap: () {
                                        Navigator.pop(context);
                                      },
                                    )
                                  ],
                                ),
                              ),
                              const Padding(
                                padding: EdgeInsets.only(bottom: 24.0),
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
                              PrimaryButton(text: "Adicionar livro", onTap: () {})
                            ],
                          ),
                        ),
                      ),
                    );
                  },
                  child: const Entry(),
                ),
                itemCount: 10,
              ),
            ],
          ),
        ),

      ),
    ));
  }
}
