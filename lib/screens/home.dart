import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:grimorio/screens/book_details.dart';
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
    return SafeArea(
        child: Container(
      decoration: AppBackgroundProperties.boxDecoration,
      child: const Scaffold(
        backgroundColor: Colors.transparent,
        body: Center(
          child: _FilledHome(),
        ),
      ),
    ));
  }
}

class _FilledHome extends StatelessWidget {
  const _FilledHome({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.fromLTRB(16.0, 0.0, 16.0, 16.0),
          child: CustomScrollView(
            shrinkWrap: true,
            slivers: <Widget>[
              const SliverToBoxAdapter(
                child: Padding(
                  padding: EdgeInsets.fromLTRB(0.0, 48.0, 0.0, 8.0),
                  child: DisplayText("Grimório"),
                ),
              ),
              SliverGrid.builder(
                itemCount: 10,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 3,
                  mainAxisExtent: 167,
                  mainAxisSpacing: 16,
                  crossAxisSpacing: 16,
                ),
                itemBuilder: (context, index) => InkWell(
                  onTap: (){Navigator.push(context, MaterialPageRoute(builder: (context) => const BookDetails()));},
                  child: Image.network(
                    "https://i.pinimg.com/736x/88/cb/ba/88cbba5cdbd59fa49462ab96f3b1b79c.jpg",
                    height: 220,
                    width: 144,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ],
          ),
        ),
        Positioned(
          bottom: 0,
          child: Container(
            height: 72,
            width: MediaQuery.of(context).size.width,
            decoration: HomeShadowProperties.boxDecoration,
          ),
        ),
        Positioned(
          top: MediaQuery.of(context).size.height - 100,
          left: MediaQuery.of(context).size.width/2 - 44,
          child: FloatingButton(
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) => const SearchBooks()));
            },
          ),
        ),
      ],
    );
  }
}

class _EmptyHome extends StatelessWidget {
  const _EmptyHome();

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: <Widget>[
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
