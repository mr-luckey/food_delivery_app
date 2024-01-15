import 'package:flutter/material.dart';
import 'package:food_delivery_app/common/color_extension.dart';
import 'package:food_delivery_app/common_widget/round_button.dart';
import 'package:otp_pin_field/otp_pin_field.dart';

class OTPView extends StatefulWidget {
  const OTPView({super.key});

  @override
  State<OTPView> createState() => _LginViewState();
}

class _LginViewState extends State<OTPView> {
  final _otpPinFieldController = GlobalKey<OtpPinFieldState>();

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
              "We have an OTP to your Mobile",
              textAlign: TextAlign.center,
              style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.w800,
                  color: TColor.primaryText),
            ),
            SizedBox(
              height: 15,
            ),
            Text(
              "Please check your mobile number 0314*******\ncontinue to reset your password",
              style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w500,
                  color: TColor.secondaryText),
            ),
            SizedBox(
              height: 60,
            ),
            SizedBox(
              height: 60,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  OtpPinField(
                      key: _otpPinFieldController,
                      autoFillEnable: false,
                      textInputAction: TextInputAction.done,
                      onSubmit: (text) {
                        FocusScope.of(context).requestFocus(FocusNode());
                        print('Entered pin is $text');
                      },
                      onChange: (text) {
                        print('Enter on change pin is $text');
                      },
                      onCodeChanged: (code) {
                        print('onCodeChanged  is $code');
                      },
                      otpPinFieldStyle: OtpPinFieldStyle(
                        defaultFieldBorderColor: Colors.transparent,
                        activeFieldBorderColor: TColor.primary,
                        defaultFieldBackgroundColor: TColor.textfield,
                        activeFieldBackgroundColor: TColor.textfield,
                       
                      ),
                      maxLength: 4,
                      showCursor: true,
                      cursorColor: TColor.primary,
                      upperChild: Column(
                        children: [
                          SizedBox(height: 30),
                          Icon(Icons.flutter_dash_outlined, size: 150),
                          SizedBox(height: 20),
                        ],
                      ),
                      showCustomKeyboard: false,
                      showDefaultKeyboard: true,
                      cursorWidth: 3,
                      mainAxisAlignment: MainAxisAlignment.center,
                      otpPinFieldDecoration:
                          OtpPinFieldDecoration.defaultPinBoxDecoration),
                ],
              ),
            ),
            SizedBox(
              height: 30,
            ),
            RoundButton(
                onPressed: () {
                  FocusScope.of(context).requestFocus(FocusNode());
                },
                title: "Next"),
            TextButton(
                onPressed: () {
                  // Navigator.push(context,
                  //     MaterialPageRoute(builder: (context) => SignUpView()));
                },
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text("Didn't Recieved",
                        style: TextStyle(
                            color: TColor.secondaryText,
                            fontSize: 14,
                            fontWeight: FontWeight.w700)),
                    Text("Click Here",
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
