import 'dart:io';

import 'package:flutter/material.dart';
import 'package:food_delivery_app/common/color_extension.dart';
import 'package:food_delivery_app/common_widget/round_button.dart';
import 'package:food_delivery_app/common_widget/round_textfield.dart';
import 'package:food_delivery_app/view/more/my_order_view.dart';
import 'package:image_picker/image_picker.dart';

class ProfileView extends StatefulWidget {
  const ProfileView({super.key});

  @override
  State<ProfileView> createState() => ProfileViewState();
}

class ProfileViewState extends State<ProfileView> {
  final ImagePicker picker = ImagePicker();
  XFile? image;

  TextEditingController txtName = TextEditingController();
  TextEditingController txtEmail = TextEditingController();
  TextEditingController txtMobile = TextEditingController();
  TextEditingController txtAddress = TextEditingController();
  TextEditingController txtPassword = TextEditingController();
  TextEditingController txtConfirmPassword = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
            child: Padding(
                padding: EdgeInsets.symmetric(vertical: 20),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      SizedBox(
                        height: 40,
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 20),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "Profile",
                              style: TextStyle(
                                  color: TColor.primaryText,
                                  fontSize: 20,
                                  fontWeight: FontWeight.w800),
                            ),
                            IconButton(
                                onPressed: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) => MyOrderView()));
                                },
                                icon: Image.asset(
                                  "assets/images/shopping_cart.png",
                                  width: 25,
                                  height: 25,
                                ))
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Container(
                        width: 100,
                        height: 100,
                        decoration: BoxDecoration(
                            color: TColor.placeholder,
                            borderRadius: BorderRadius.circular(50)),
                        alignment: Alignment.center,
                        child: image != null
                            ? ClipRRect(
                                borderRadius: BorderRadius.circular(50),
                                child: Image.file(
                                  File(image!.path),
                                  width: 100,
                                  height: 100,
                                  fit: BoxFit.cover,
                                ),
                              )
                            : Icon(
                                Icons.person,
                                size: 65,
                                color: TColor.secondaryText,
                              ),
                      ),
                      TextButton.icon(
                          onPressed: () async {
                            image = await picker.pickImage(
                              source: ImageSource.gallery,
                            );
                            setState(() {});
                          },
                          icon: Icon(
                            Icons.edit,
                            color: TColor.primary,
                            size: 12,
                          ),
                          label: Text(
                            "Edit Profile",
                            style:
                                TextStyle(color: TColor.primary, fontSize: 12),
                          )),
                      Text(
                        "Hi there Emilia",
                        style: TextStyle(
                            color: TColor.primaryText,
                            fontSize: 16,
                            fontWeight: FontWeight.w700),
                      ),
                      TextButton(
                          onPressed: () {},
                          child: Text(
                            "sign Out",
                            style: TextStyle(
                                color: TColor.secondaryText,
                                fontSize: 11,
                                fontWeight: FontWeight.w500),
                          )),
                      SizedBox(
                        height: 20,
                      ),
                      Padding(
                        padding:
                            EdgeInsets.symmetric(vertical: 8, horizontal: 20),
                        child: RoundTitleTextField(
                          hintText: "Enter Name",
                          title: "Name",
                          controller: txtName,
                        ),
                      ),
                      Padding(
                        padding:
                            EdgeInsets.symmetric(vertical: 8, horizontal: 20),
                        child: RoundTitleTextField(
                          hintText: "Enter Email",
                          title: "Email",
                          controller: txtEmail,
                          keyboardType: TextInputType.emailAddress,
                        ),
                      ),
                      Padding(
                        padding:
                            EdgeInsets.symmetric(vertical: 8, horizontal: 20),
                        child: RoundTitleTextField(
                          hintText: "Enter Mobile No.",
                          title: "Mobile Number",
                          controller: txtMobile,
                          keyboardType: TextInputType.phone,
                        ),
                      ),
                      Padding(
                        padding:
                            EdgeInsets.symmetric(vertical: 8, horizontal: 20),
                        child: RoundTitleTextField(
                          hintText: "Enter Addrress",
                          title: "Address",
                          controller: txtAddress,
                        ),
                      ),
                      Padding(
                        padding:
                            EdgeInsets.symmetric(vertical: 8, horizontal: 20),
                        child: RoundTitleTextField(
                          hintText: "* * * * * *",
                          title: "Password",
                          obscureText: true,
                          controller: txtPassword,
                        ),
                      ),
                      Padding(
                        padding:
                            EdgeInsets.symmetric(vertical: 8, horizontal: 20),
                        child: RoundTitleTextField(
                          hintText: "* * * * * *",
                          title: "Confirm Password",
                          obscureText: true,
                          controller: txtName,
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 20),
                        child: RoundButton(onPressed: () {}, title: "Save"),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                    ]))));
  }
}
