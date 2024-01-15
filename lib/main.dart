import 'package:flutter/material.dart';
// import 'package:food_delivery_app/view/login/login_view.dart';
// import 'package:food_delivery_app/view/login/welcom_view.dart';
import 'package:food_delivery_app/view/on_boarding/splash_view.dart';
// import 'package:food_delivery_app/view/main_tabview/main_tabview.dart';
//import 'package:food_delivery_app/view/on_boarding/splash_view.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
//
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          // useMaterial3: true,
        ),
        home: StartUpViewState());
  }
}
