import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:grimorio/screens/components/display_text.dart';
import 'package:grimorio/screens/components/floating_button.dart';
import 'package:grimorio/screens/search_books.dart';
import 'package:grimorio/theme.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Container(
      decoration: AppBackgroundProperties.boxDecoration,
      child: const Scaffold(
        backgroundColor: Colors.transparent,
        body: Center(
          child: SingleChildScrollView(
            child: _EmptyHome(),
          ),
        ),
      ),
    ));
  }
}

class _EmptyHome extends StatelessWidget {
  const _EmptyHome();

  @override
  Widget build(BuildContext context) {
    return Column(children: <Widget>[
      const Padding(
        padding: EdgeInsets.only(bottom: 32.0),
        child: DisplayText("Grimório"),
      ),
      Padding(
        padding: const EdgeInsets.only(bottom: 40.0),
        child: SvgPicture.asset("assets/images/grimorio_empty.svg"),
      ),
      Padding(
        padding: const EdgeInsets.only(bottom: 8.0),
        child: Text("Seu Grimório está vazio!", style: TextStyle(fontFamily: "Bigelow Rules", fontSize: 36, color: AppColors.lightPink),),
      ),
      const Padding(
        padding: EdgeInsets.only(bottom: 40.0),
        child: Text("Vamos aprender algo novo?", style: TextStyle(fontWeight: FontWeight.w500),),
      ),
      FloatingButton(onTap: (){Navigator.push(context, MaterialPageRoute(builder: (context) => const SearchBooks()));}),
    ]);
  }
}
