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
        width: 243,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(30),
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: AppColors.buttonGradient,
            )
        ),
        padding: const EdgeInsets.all(10),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.only(right: 8.0),
              child: SvgPicture.asset("assets/images/star_icon.svg"),
            ),
            icon != null ? Icon(icon, color: AppColors.purple,) : Container(),
            Text(
              text,
              style: Theme.of(context)
                  .textTheme
                  .bodyLarge!
                  .copyWith(
                    color: AppColors.purple,
                    fontWeight: FontWeight.w600
                  ),
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
