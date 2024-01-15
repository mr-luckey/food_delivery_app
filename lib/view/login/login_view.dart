import 'package:flutter/material.dart';
import 'package:food_delivery_app/common/color_extension.dart';
import 'package:food_delivery_app/common_widget/round_button.dart';
import 'package:food_delivery_app/common_widget/round_icon_button.dart';
import 'package:food_delivery_app/common_widget/round_textfield.dart';
import 'package:food_delivery_app/view/login/reset_password.dart';
import 'package:food_delivery_app/view/login/sign_up_view.dart';
import 'package:food_delivery_app/view/on_boarding/onboarding_view.dart';

class LoginView extends StatefulWidget {
  const LoginView({super.key});

  @override
  State<LoginView> createState() => _LginViewState();
}

class _LginViewState extends State<LoginView> {
  TextEditingController txtEmail = TextEditingController();
  TextEditingController txtPassword = TextEditingController();

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
              "Login",
              style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.w800,
                  color: TColor.primaryText),
            ),
            //  SizedBox(height: 64,),
            Text(
              "Add your details to login",
              style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w500,
                  color: TColor.secondaryText),
            ),
            SizedBox(
              height: 20,
            ),
            RoundTextField(
              hintText: 'Your Email',
              controller: txtEmail,
              keyboardType: TextInputType.emailAddress,
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
              height: 25,
            ),
            RoundButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => OnboardingView()));
                },
                title: "Login"),
            SizedBox(
              height: 4,
            ),
            TextButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => ResetPassword()));
                },
                child: Text("Forget your password",
                    style: TextStyle(
                        color: TColor.secondaryText,
                        fontSize: 14,
                        fontWeight: FontWeight.w500))),
            SizedBox(
              height: 30,
            ),
            Text("or Login With",
                style: TextStyle(
                    color: TColor.secondaryText,
                    fontSize: 14,
                    fontWeight: FontWeight.w500)),
            SizedBox(
              height: 30,
            ),
            RoundIconButton(
                onPressed: () {},
                title: 'Login with Facebook',
                icon: 'assets/images/facebook_logo.png',
                color: Color(0xff367FCD)),

            SizedBox(
              height: 25,
            ),
            RoundIconButton(
                onPressed: () {},
                title: 'Login with Google',
                icon: 'assets/images/google_logo.png',
                color: Color(0xffDD4B39)),
            SizedBox(
              height: 60,
            ),
            TextButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => SignUpView()));
                },
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text("Don't have an Account?",
                        style: TextStyle(
                            color: TColor.secondaryText,
                            fontSize: 14,
                            fontWeight: FontWeight.w700)),
                    Text("Sign Up",
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
