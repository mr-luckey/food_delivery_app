import 'package:flutter/material.dart';
import 'package:food_delivery_app/view/login/welcom_view.dart';

class StartUpViewState extends StatefulWidget {
  const StartUpViewState({super.key});

  @override
  State<StartUpViewState> createState() => __StartUpViewStateState();
}

class __StartUpViewStateState extends State<StartUpViewState> {
  @override
  void initState() {
    super.initState();
    goMeIconePage();
  }

  void goMeIconePage() async {
    await Future.delayed(Duration(seconds: 2));
    Navigator.push(
        context, MaterialPageRoute(builder: (context) => WelcomeView()));
  }

  @override
  Widget build(BuildContext context) {
    var media = MediaQuery.of(context).size;
    return Scaffold(
      body: Stack(
        alignment: Alignment.center,
        children: [
          Image.asset("assets/images/splash_bg.png",
              width: media.width, height: media.height, fit: BoxFit.cover),
          Image.asset("assets/images/app_logo.png",
              width: media.width * 0.55,
              height: media.height * 0.55,
              fit: BoxFit.contain)
        ],
      ),
    );
  }
}
