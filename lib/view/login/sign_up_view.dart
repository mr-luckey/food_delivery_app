import 'package:flutter/material.dart';
import 'package:food_delivery_app/common/color_extension.dart';
import 'package:food_delivery_app/common_widget/round_button.dart';
import 'package:food_delivery_app/common_widget/round_textfield.dart';
import 'package:food_delivery_app/view/login/login_view.dart';
import 'package:food_delivery_app/view/login/otp_view.dart';

class SignUpView extends StatefulWidget {
  const SignUpView({super.key});

  @override
  State<SignUpView> createState() => _SignUpViewState();
}

class _SignUpViewState extends State<SignUpView> {
  TextEditingController txtName = TextEditingController();
  TextEditingController txtMobile = TextEditingController();
  TextEditingController txtAddress = TextEditingController();
  TextEditingController txtEmail = TextEditingController();
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
              "Sign UP",
              style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.w800,
                  color: TColor.primaryText),
            ),
            //  SizedBox(height: 64,),
            Text(
              "Add your details to Sign Up",
              style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w500,
                  color: TColor.secondaryText),
            ),
            SizedBox(
              height: 20,
            ),
            RoundTextField(
              hintText: 'Name',
              controller: txtName,
            ),
            SizedBox(
              height: 20,
            ),
            RoundTextField(
              hintText: 'Email',
              controller: txtEmail,
              keyboardType: TextInputType.emailAddress,
            ),
            SizedBox(
              height: 20,
            ),
            RoundTextField(
              hintText: 'Mobile No',
              controller: txtMobile,
              keyboardType: TextInputType.phone,
            ),
            SizedBox(
              height: 20,
            ),
            RoundTextField(
              hintText: 'Address',
              controller: txtAddress,
            ),
            SizedBox(
              height: 20,
            ),

            RoundTextField(
              hintText: 'Password',
              controller: txtPassword,
              obscureText: true,
            ),
            SizedBox(
              height: 20,
            ),
            RoundTextField(
              hintText: 'Confirm Password',
              controller: txtConfirmPassword,
              keyboardType: TextInputType.emailAddress,
            ),
            SizedBox(
              height: 20,
            ),
            RoundButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => OTPView()));
                },
                title: "Sign Up"),
            SizedBox(
              height: 30,
            ),
            TextButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => LoginView()));
                },
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text("Already have an Account?",
                        style: TextStyle(
                            color: TColor.secondaryText,
                            fontSize: 14,
                            fontWeight: FontWeight.w700)),
                    Text("Login",
                        style: TextStyle(
                            color: TColor.primary,
                            fontSize: 14,
                            fontWeight: FontWeight.w700)),
                  ],
                )),
          ]),
        ),
      ),
    );
  }
}
