import 'package:flutter/material.dart';
import 'package:food_delivery_app/common/color_extension.dart';

enum RoundButtonType { byPrimary, textPrimary }

class RoundButton extends StatelessWidget {
  final VoidCallback onPressed;
  final String title;
  final RoundButtonType type;
  final double fontSize;
  const RoundButton(
      {super.key,
      required this.onPressed,
      required this.title,
      this.type = RoundButtonType.byPrimary,
      this.fontSize = 16});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPressed,
      child: Container(
        alignment: Alignment.center,
        height: 56,
        decoration: BoxDecoration(
            border: type == RoundButtonType.byPrimary
                ? null
                : Border.all(color: TColor.primary, width: 1),
            color: type == RoundButtonType.byPrimary
                ? TColor.primary
                : TColor.white,
            borderRadius: BorderRadius.circular(28)),
        child: Text(
          title,
          style: TextStyle(
              color: type == RoundButtonType.byPrimary
                  ? TColor.white
                  : TColor.primary,
              fontSize: fontSize,
              fontWeight: FontWeight.w600),
        ),
      ),
    );
  }
}
