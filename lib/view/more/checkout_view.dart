import 'package:flutter/material.dart';
import 'package:food_delivery_app/common/color_extension.dart';
import 'package:food_delivery_app/common_widget/round_button.dart';
import 'package:food_delivery_app/view/more/change_address_view.dart';
import 'package:food_delivery_app/view/more/checkout_message_view.dart';

class CheckOutView extends StatefulWidget {
  const CheckOutView({
    super.key,
  });

  @override
  State<CheckOutView> createState() => _CheckOutViewState();
}

class _CheckOutViewState extends State<CheckOutView> {
  List PaymentArr = [
    {"name": "Cash on delivery", "icon": "assets/images/cash.png"},
    {"name": "**** **** **** 2187", "icon": "assets/images/visa_icon.png"},
    {"name": "saba@gmail.com", "icon": "assets/images/paypal.png"},
  ];
  int selectedMethod = -1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: TColor.white,
      body: SingleChildScrollView(
        child: Padding(
            padding: EdgeInsets.symmetric(vertical: 20),
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              SizedBox(
                height: 40,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15),
                child: Row(
                  children: [
                    IconButton(
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        icon: Image.asset(
                          "assets/images/btn_back.png",
                          width: 20,
                          height: 20,
                        )),
                    SizedBox(width: 8),
                    Expanded(
                      child: Text(
                        "Checkout",
                        style: TextStyle(
                            color: TColor.primaryText,
                            fontSize: 20,
                            fontWeight: FontWeight.w800),
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(vertical: 15, horizontal: 25),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "(Delivery Address)",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: TColor.secondaryText,
                        fontSize: 12,
                      ),
                    ),
                    SizedBox(
                      height: 8,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Expanded(
                          child: Text(
                            "653 Nostrand Ave.\nBrooklyn, NY 11216",
                            style: TextStyle(
                                color: TColor.primaryText,
                                fontSize: 15,
                                fontWeight: FontWeight.w700),
                          ),
                        ),
                        SizedBox(
                          width: 4,
                        ),
                        TextButton(
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => ChangeAddressView()));
                          },
                          child: Text(
                            "Change",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                color: TColor.primaryText,
                                fontSize: 13,
                                fontWeight: FontWeight.w700),
                          ),
                        )
                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                decoration: BoxDecoration(color: TColor.textfield),
                height: 8,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 25),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Payment method ",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                color: TColor.secondaryText,
                                fontSize: 13,
                                fontWeight: FontWeight.w500),
                          ),
                          TextButton.icon(
                            onPressed: () {},
                            icon: Icon(Icons.add, color: TColor.primary),
                            label: Text(
                              "Add Card",
                              style: TextStyle(
                                  color: TColor.primary,
                                  fontSize: 13,
                                  fontWeight: FontWeight.w700),
                            ),
                          )
                        ],
                      ),
                      ListView.builder(
                          physics: NeverScrollableScrollPhysics(),
                          padding: EdgeInsets.zero,
                          shrinkWrap: true,
                          itemCount: PaymentArr.length,
                          itemBuilder: (context, index) {
                            var pObj = PaymentArr[index] as Map? ?? {};
                            return Container(
                              margin: EdgeInsets.symmetric(vertical: 8.0),
                              padding: EdgeInsets.symmetric(
                                  vertical: 8.0, horizontal: 15.0),
                              decoration: BoxDecoration(
                                  color: TColor.textfield,
                                  borderRadius: BorderRadius.circular(5),
                                  border: Border.all(
                                      color: TColor.secondaryText
                                          .withOpacity(0.2))),
                              child: Row(
                                children: [
                                  Image.asset(
                                    pObj["icon"].toString(),
                                    width: 50,
                                    height: 20,
                                    fit: BoxFit.contain,
                                  ),
                                  // SizedBox(width: 8),
                                  Expanded(
                                    child: Text(
                                      pObj["name"],
                                      style: TextStyle(
                                          color: TColor.primaryText,
                                          fontSize: 12,
                                          fontWeight: FontWeight.w500),
                                    ),
                                  ),
                                  InkWell(
                                      onTap: () {
                                        setState(() {
                                          selectedMethod = index;
                                        });
                                      },
                                      child: Icon(
                                        selectedMethod == index
                                            ? Icons.radio_button_on
                                            : Icons.radio_button_off,
                                        color: TColor.primary,
                                        size: 15,
                                      ))
                                ],
                              ),
                            );
                          })
                    ]),
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                decoration: BoxDecoration(color: TColor.textfield),
                height: 8,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 25),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: 15,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Sub Total",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              color: TColor.primaryText,
                              fontSize: 13,
                              fontWeight: FontWeight.w500),
                        ),
                        Text(
                          "\$68",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              color: TColor.primaryText,
                              fontSize: 13,
                              fontWeight: FontWeight.w700),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 8,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Delivery Cost ",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              color: TColor.primaryText,
                              fontSize: 13,
                              fontWeight: FontWeight.w500),
                        ),
                        Text(
                          "\$2",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              color: TColor.primaryText,
                              fontSize: 13,
                              fontWeight: FontWeight.w700),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 8,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Discount",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              color: TColor.primaryText,
                              fontSize: 13,
                              fontWeight: FontWeight.w500),
                        ),
                        Text(
                          "-\$4",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              color: TColor.primaryText,
                              fontSize: 13,
                              fontWeight: FontWeight.w700),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Divider(
                        color: TColor.secondaryText.withOpacity(0.5),
                        height: 1),
                    SizedBox(
                      height: 15,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Total",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              color: TColor.primaryText,
                              fontSize: 13,
                              fontWeight: FontWeight.w700),
                        ),
                        Text(
                          "\$66",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              color: TColor.primaryText,
                              fontSize: 15,
                              fontWeight: FontWeight.w700),
                        ),
                      ],
                    ),
                    SizedBox(height: 20),
                  ],
                ),
              ),
              Container(
                decoration: BoxDecoration(color: TColor.textfield),
                height: 8,
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 25, vertical: 20),
                child: RoundButton(
                    onPressed: () {
                      showModalBottomSheet(
                          context: context,
                          backgroundColor: Colors.transparent,
                          isScrollControlled: true,
                          builder: (context) {
                            return CheckoutMessageView();
                          });
                    },
                    title: "Send Order"),
              ),
            ])),
      ),
    );
  }
}
