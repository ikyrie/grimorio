import 'package:flutter/material.dart';
import 'package:grimorio/theme.dart';

class Entry extends StatelessWidget {
  const Entry({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 32.0),
      child: Row(children: <Widget>[
          Padding(
            padding: const EdgeInsets.only(right: 16.0),
            child: Image.network(
              "https://i.pinimg.com/736x/88/cb/ba/88cbba5cdbd59fa49462ab96f3b1b79c.jpg",
              height: 126,
              width: 86,
              fit: BoxFit.cover,
            ),
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.only(bottom: 16.0),
                  child: Text("Singer and dancer at Twice. Very talented and sweet person.", style: EntryDecorationProperties.displayText,),
                ),
                Text("Jihyo", style: EntryDecorationProperties.authorText,),
              ],
            ),
          ),
      ],),
    );
  }
}
