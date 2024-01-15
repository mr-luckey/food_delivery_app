import 'package:flutter/material.dart';
import 'package:food_delivery_app/common/color_extension.dart';
import 'package:food_delivery_app/common_widget/round_button.dart';
import 'package:food_delivery_app/common_widget/round_textfield.dart';
import 'package:food_delivery_app/view/login/new_password_view.dart';

class ResetPassword extends StatefulWidget {
  const ResetPassword({super.key});

  @override
  State<ResetPassword> createState() => _LginViewState();
}

class _LginViewState extends State<ResetPassword> {
  TextEditingController txtEmail = TextEditingController();

  @override
  Widget build(BuildContext context) {
 
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
              "Reset Password",
              style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.w800,
                  color: TColor.primaryText),
            ),
            SizedBox(
              height: 15,
            ),
            Text(
              "Please enter your email to recieve a\nlink to create a new password via email",
              style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w500,
                  color: TColor.secondaryText),
            ),
            SizedBox(
              height: 60,
            ),
            RoundTextField(
              hintText: 'Your Email',
              controller: txtEmail,
              keyboardType: TextInputType.emailAddress,
            ),
            SizedBox(
              height: 30,
            ),
            RoundButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => NewPassword()));
                },
                title: "Send"),
            SizedBox(
              height: 4,
            ),
          ]),
        ),
      ),
    );
  }
}
