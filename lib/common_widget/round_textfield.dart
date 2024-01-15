import 'package:flutter/material.dart';
import 'package:food_delivery_app/common/color_extension.dart';

class RoundTextField extends StatelessWidget {
  final TextEditingController? controller;
  final String hintText;
  final TextInputType? keyboardType;
  final bool obscureText;
  final Color? bgColor;
  final Widget? left;

  const RoundTextField({
    super.key,
    this.controller,
    required this.hintText,
    this.keyboardType,
    this.obscureText = false,
    this.bgColor,
    this.left,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: BoxDecoration(
          color: bgColor ?? TColor.textfield,
          borderRadius: BorderRadius.circular(25),
        ),
        child: Row(
          children: [
            if (left != null)
              Padding(
                padding: const EdgeInsets.only(
                  left: 15,
                ),
                //child: left!,
              ),
            Expanded(
              child: TextField(
                autocorrect: false,
                controller: controller,
                keyboardType: keyboardType,
                obscureText: obscureText,
                decoration: InputDecoration(
                  contentPadding:
                      EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                  focusedBorder: InputBorder.none,
                  prefixIcon: left,
                  enabledBorder: InputBorder.none,
                  hintText: hintText,
                  hintStyle: TextStyle(
                      color: TColor.placeholder,
                      fontSize: 14,
                      fontWeight: FontWeight.w500),
                ),
              ),
            ),
          ],
        ));
  }
}

class RoundTitleTextField extends StatelessWidget {
  final TextEditingController? controller;
  final String title;
  final String hintText;
  final TextInputType? keyboardType;
  final bool obscureText;
  final Color? bgColor;
  final Widget? left;

  const RoundTitleTextField({
    super.key,
    this.controller,
    required this.hintText,
    this.keyboardType,
    this.obscureText = false,
    this.bgColor,
    this.left,
    required this.title,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
        height: 55,
        decoration: BoxDecoration(
          color: bgColor ?? TColor.textfield,
          borderRadius: BorderRadius.circular(25),
        ),
        child: Row(
          children: [
            if (left != null)
              Padding(
                padding: const EdgeInsets.only(
                  left: 15,
                ),
                //child: left!,
              ),
            Expanded(
              child: Stack(
                children: [
                  Container(
                    height: 55,
                    margin: EdgeInsets.only(
                      top: 8,
                    ),
                    alignment: Alignment.topLeft,
                    child: TextField(
                      autocorrect: false,
                      controller: controller,
                      keyboardType: keyboardType,
                      obscureText: obscureText,
                      decoration: InputDecoration(
                        contentPadding: EdgeInsets.symmetric(
                          horizontal: 20,
                        ),
                        focusedBorder: InputBorder.none,
                        prefixIcon: left,
                        enabledBorder: InputBorder.none,
                        hintText: hintText,
                        hintStyle: TextStyle(
                            color: TColor.placeholder,
                            fontSize: 14,
                            fontWeight: FontWeight.w500),
                      ),
                    ),
                  ),
                  Container(
                      height: 55,
                      margin: EdgeInsets.only(top: 10, left: 20),
                      alignment: Alignment.topLeft,
                      child: Text(
                        title,
                        style:
                            TextStyle(color: TColor.placeholder, fontSize: 11),
                      ))
                ],
              ),
            ),
          ],
        ));
  }
}
