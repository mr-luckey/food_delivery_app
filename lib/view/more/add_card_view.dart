import 'package:flutter/material.dart';
import 'package:food_delivery_app/common/color_extension.dart';
import 'package:food_delivery_app/common_widget/round_icon_button.dart';
import 'package:food_delivery_app/common_widget/round_textfield.dart';


class AddCardView extends StatefulWidget {
  const AddCardView({super.key});

  @override
  State<AddCardView> createState() => _AddCardViewState();
}

class _AddCardViewState extends State<AddCardView> {
  TextEditingController txtCardNumber = TextEditingController();
  TextEditingController txtCardMonth = TextEditingController();
  TextEditingController txtCardYear = TextEditingController();
  TextEditingController txtCardCode = TextEditingController();
  TextEditingController txtFirstName = TextEditingController();
  TextEditingController txtLastName = TextEditingController();
  bool isAnyTime = false;
  @override
  Widget build(BuildContext context) {
    var media = MediaQuery.of(context).size;
    return Container(
      padding: EdgeInsets.symmetric(vertical: 15, horizontal: 25),
      width: media.width,
      decoration: BoxDecoration(
          color: TColor.white,
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(20), topRight: Radius.circular(20))),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        mainAxisSize: MainAxisSize.min,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Add Credit/Debit",
                style: TextStyle(
                    color: TColor.primaryText,
                    fontSize: 14,
                    fontWeight: FontWeight.w700),
              ),
              IconButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  icon: Icon(
                    Icons.close,
                    color: TColor.secondaryText,
                    size: 25,
                  ))
            ],
          ),
          Divider(
            color: TColor.secondaryText.withOpacity(0.4),
            height: 1,
          ),
          SizedBox(height: 15),
          RoundTextField(
            hintText: "Card Number",
            controller: txtCardNumber,
            keyboardType: TextInputType.number,
          ),
          SizedBox(height: 15),
          Row(
            children: [
              Text(
                "Expiry",
                style: TextStyle(
                    color: TColor.primaryText,
                    fontSize: 14,
                    fontWeight: FontWeight.w600),
              ),
              Spacer(),
              SizedBox(
                width: 100,
                child: RoundTextField(
                  hintText: "MM",
                  controller: txtCardMonth,
                  keyboardType: TextInputType.number,
                ),
              ),
              SizedBox(width: 25),
              SizedBox(
                width: 100,
                child: RoundTextField(
                  hintText: "YYYY",
                  controller: txtCardYear,
                  keyboardType: TextInputType.number,
                ),
              ),
            ],
          ),
          SizedBox(height: 15),
          RoundTextField(
            hintText: "Card Security Code",
            controller: txtCardCode,
            keyboardType: TextInputType.number,
          ),
          SizedBox(height: 15),
          RoundTextField(
            hintText: "First Name",
            controller: txtFirstName,
          ),
          SizedBox(height: 15),
          RoundTextField(
            hintText: " Last Name",
            controller: txtLastName,
          ),
          SizedBox(height: 15),
          Row(children: [
            Text(
              "You can remove this card at anytime",
              style: TextStyle(
                  color: TColor.secondaryText,
                  fontSize: 14,
                  fontWeight: FontWeight.w500),
            ),
            Spacer(),
            Switch(
                value: isAnyTime,
                activeColor: TColor.primary,
                onChanged: (newVal) {
                  setState(() {
                    isAnyTime = newVal;
                  });
                })
          ]),
          SizedBox(height: 25),
          RoundIconButton(
            onPressed: () {},
            title: "Add Card",
            icon: "assets/images/add.png",
            color: TColor.primary,
            fontSize: 16,
            fontWeight: FontWeight.w600,
          ),
          SizedBox(height: 25),
        ],
      ),
    );
  }
}
