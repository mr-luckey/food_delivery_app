import 'package:flutter/material.dart';
import 'package:food_delivery_app/common/color_extension.dart';
import 'package:food_delivery_app/common_widget/round_button.dart';
import 'package:food_delivery_app/common_widget/round_icon_button.dart';
import 'package:food_delivery_app/view/more/add_card_view.dart';
import 'package:food_delivery_app/view/more/my_order_view.dart';

class PaymentDetialsView extends StatefulWidget {
  const PaymentDetialsView({
    super.key,
  });

  @override
  State<PaymentDetialsView> createState() => _PaymentDetialsViewState();
}

class _PaymentDetialsViewState extends State<PaymentDetialsView> {
  List cardArr = [
    {
      "icon": "assets/images/visa_icon.png",
      "card": "**** **** 2187",
    }
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(vertical: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
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
                        "Payment Details ",
                        style: TextStyle(
                            color: TColor.primaryText,
                            fontSize: 20,
                            fontWeight: FontWeight.w800),
                      ),
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
              Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 25, vertical: 15),
                  child: Text(
                    "Customize your payment method",
                    style: TextStyle(
                        color: TColor.primaryText,
                        fontSize: 16,
                        fontWeight: FontWeight.w700),
                  )),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25),
                child: Divider(
                  color: TColor.secondaryText.withOpacity(0.4),
                  height: 1,
                ),
              ),
              SizedBox(
                height: 15,
              ),
              Container(
                decoration: BoxDecoration(color: TColor.textfield, boxShadow: [
                  BoxShadow(
                      color: Colors.black26,
                      blurRadius: 15,
                      offset: Offset(0, 9))
                ]),
                child: Column(
                  children: [
                    Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 25, vertical: 15),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "Cash/Card On Delivery",
                              style: TextStyle(
                                  color: TColor.primaryText,
                                  fontSize: 12,
                                  fontWeight: FontWeight.w700),
                            ),
                            Image.asset(
                              "assets/images/check.png",
                              width: 20,
                              height: 20,
                            )
                          ],
                        )),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 35),
                      child: Divider(
                        color: TColor.secondaryText.withOpacity(0.4),
                        height: 1,
                      ),
                    ),
                    ListView.builder(
                        physics: NeverScrollableScrollPhysics(),
                        shrinkWrap: true,
                        padding: EdgeInsets.zero,
                        itemCount: cardArr.length,
                        itemBuilder: ((context, index) {
                          var cObj = cardArr[index] as Map? ?? {};
                          return Container(
                            margin: EdgeInsets.symmetric(
                                vertical: 15, horizontal: 35),
                            child: Row(
                              children: [
                                Image.asset(
                                  cObj["icon"].toString(),
                                  width: 50,
                                  height: 35,
                                  fit: BoxFit.contain,
                                ),
                                SizedBox(
                                  width: 15,
                                ),
                                Expanded(
                                  child: Text(
                                    cObj["card"].toString(),
                                    style: TextStyle(
                                        color: TColor.primaryText,
                                        fontSize: 12,
                                        fontWeight: FontWeight.w600),
                                  ),
                                ),
                                SizedBox(
                                  height: 28,
                                  width: 100,
                                  child: RoundButton(
                                    onPressed: () {},
                                    title: "Delete Card",
                                    fontSize: 14,
                                    type: RoundButtonType.textPrimary,
                                  ),
                                )
                              ],
                            ),
                          );
                        })),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 35),
                      child: Divider(
                        color: TColor.secondaryText.withOpacity(0.4),
                        height: 1,
                      ),
                    ),
                    Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 25, vertical: 15),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "Other Methods",
                              style: TextStyle(
                                  color: TColor.primaryText,
                                  fontSize: 12,
                                  fontWeight: FontWeight.w700),
                            )
                          ],
                        )),
                    SizedBox(
                      height: 15,
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 35,
              ),
              Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 25),
                  child: RoundIconButton(
                    color: TColor.primary,
                    fontSize: 16,
                    onPressed: () {
                      showModalBottomSheet(
                          backgroundColor: Colors.transparent,
                          isScrollControlled: true,
                          context: context,
                          builder: (context) {
                            return AddCardView();
                          });
                      // Navigator.push(
                      //     context,
                      //     MaterialPageRoute(
                      //         builder: (context) => AddCardView()));
                    },
                    title: 'Add Another Credit/Debit Card',
                    icon: "assets/images/add.png",
                  )),
              SizedBox(
                height: 15,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
