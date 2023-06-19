import 'package:flutter/material.dart'; 
import 'package:flutter_svg/svg.dart';
import 'package:grimorio/theme.dart'; 

class PrimaryButton extends StatelessWidget {
  const PrimaryButton({super.key, required this.text, this.icon});
  final String text;
  final IconData? icon;

  @override
  Widget build(BuildContext context) {
    const String stars = "assets/images/star_icon.svg";
    return InkWell(
      onTap: (){},
      child: Ink(
        width: PrimaryButtonPropreties.size,
        decoration: PrimaryButtonPropreties.boxDecoration,
        padding: const EdgeInsets.all(10),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.only(right: 8.0),
              child: SvgPicture.asset(stars),
            ),
            icon != null ? Icon(icon, color: PrimaryButtonPropreties.iconColor,) : Container(),
            Text(
              text,
              style: PrimaryButtonPropreties.textStyle,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 8.0),
              child: SvgPicture.asset(stars),
            ),
          ],
        ),
      ),
    );
  }
}
