import 'package:flutter/material.dart';
import 'package:food_delivery_app/common/color_extension.dart';
import 'package:food_delivery_app/common_widget/round_button.dart';
import 'package:food_delivery_app/common_widget/round_textfield.dart';

class NewPassword extends StatefulWidget {
  const NewPassword({super.key});

  @override
  State<NewPassword> createState() => _LginViewState();
}

class _LginViewState extends State<NewPassword> {
 
  TextEditingController txtPassword = TextEditingController();
   TextEditingController txtConfirmPassword = TextEditingController();

  @override
  Widget build(BuildContext context) {
    // var media = MediaQuery.of(context).size;
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 25),
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.center, children: [
            SizedBox(
              height: 64,
            ),
            Text(
              "New Password",
              style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.w800,
                  color: TColor.primaryText),
            ),
            SizedBox(
              height: 15,
            ),
            Text(
              "Please enter your new password ",
              style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w500,
                  color: TColor.secondaryText),
            ),
            SizedBox(
              height: 60,
            ),
            RoundTextField(
              hintText: 'New Password',
              controller: txtPassword,
              keyboardType: TextInputType.emailAddress,
            ),
            SizedBox(
              height: 30,
            ),
              RoundTextField(
              hintText: 'Confirm Password',
              controller: txtConfirmPassword,
              keyboardType: TextInputType.emailAddress,
            ),
            SizedBox(
              height: 30,
            ),
            RoundButton(onPressed: () {}, title: "Next"),
            SizedBox(
              height: 4,
            ),
          ]),
        ),
      ),
    );
  }
}
