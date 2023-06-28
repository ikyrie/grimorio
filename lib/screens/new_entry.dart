import 'package:flutter/material.dart';
import 'package:grimorio/screens/components/display_text.dart';
import 'package:grimorio/screens/components/entry.dart';
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
                itemBuilder: (context, index) => const Entry(),
                itemCount: 10,
              ),
            ],
          ),
        ),

      ),
    ));
  }
}
