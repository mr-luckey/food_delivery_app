import 'package:flutter/material.dart';
import 'package:food_delivery_app/common/color_extension.dart';
//import 'package:food_delivery_app/common/color_extension.dart';
import 'package:food_delivery_app/common_widget/round_button.dart';
import 'package:food_delivery_app/view/login/login_view.dart';
import 'package:food_delivery_app/view/login/sign_up_view.dart';

class WelcomeView extends StatefulWidget {
  const WelcomeView({super.key});

  @override
  State<WelcomeView> createState() => _WelcomeViewState();
}

class _WelcomeViewState extends State<WelcomeView> {
  @override
  Widget build(BuildContext context) {
    var media = MediaQuery.of(context).size;
    return Scaffold(
      body: Column(
        children: [
          Stack(
            alignment: Alignment.bottomCenter,
            children: [
              Image.asset(
                "assets/images/welcome_top_shape.png",
                width: media.width,
              ),
              Image.asset(
                "assets/images/app_logo.png",
                width: media.width * 0.55,
                height: media.width * 0.55,
                fit: BoxFit.contain,
              ),
            ],
          ),
          SizedBox(
            height: media.width * 0.1,
          ),
          Text(
            "Discover the best foods over 1,000\nresturants and fast delivery to your\ndoorsterp",
            textAlign: TextAlign.center,
            style: TextStyle(
                color: TColor.secondaryText,
                fontSize: 13,
                fontWeight: FontWeight.w500),
          ),
          SizedBox(
            height: media.width * 0.1,
          ),
          Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25),
              child: RoundButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => LoginView()));
                },
                title: 'Login',
              )),
          SizedBox(height: 20),
          Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25),
              child: RoundButton(
                type: RoundButtonType.textPrimary,
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context)=> SignUpView()));
                },
                title: 'Create an Account',
              )),
        ],
      ),
    );
  }
}
