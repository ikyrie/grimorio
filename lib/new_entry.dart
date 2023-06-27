import 'package:flutter/material.dart';
import 'package:grimorio/display_text.dart';
import 'package:grimorio/entry.dart';
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
          padding: EdgeInsets.all(16.0),
          child: CustomScrollView(
            slivers: <Widget>[
              SliverToBoxAdapter(
                child: Padding(
                  padding: const EdgeInsets.only(bottom: 32.0),
                  child: DisplayText("Adicionar Livro"),
                ),
              ),
              SliverToBoxAdapter(
                child: Padding(
                  padding: const EdgeInsets.only(bottom: 8.0),
                  child: TextFormField(
                    decoration: InputDecorationProperties.newInputDecoration("Procure um título", "Título", Icon(Icons.search)),
                  ),
                ),
              ),
              SliverToBoxAdapter(
                child: SizedBox(
                  width: double.infinity,
                  child: Padding(
                    padding: const EdgeInsets.only(bottom: 32.0),
                    child: Text("3 resultados"),
                  ),
                ),
              ),
              SliverList.builder(
                itemBuilder: (context, index) => Entry(),
                itemCount: 10,
              ),
            ],
          ),
        ),

      ),
    ));
  }
}
