import 'package:flutter/material.dart';
import 'package:food_delivery_app/common/color_extension.dart';
import 'package:food_delivery_app/view/more/about_us_view.dart';
import 'package:food_delivery_app/view/more/inbox_view.dart';
import 'package:food_delivery_app/view/more/my_order_view.dart';
import 'package:food_delivery_app/view/more/notfication_view.dart';
import 'package:food_delivery_app/view/more/payment_details.dart';

class MoreView extends StatefulWidget {
  const MoreView({super.key});

  @override
  State<MoreView> createState() => _MoreViewState();
}

class _MoreViewState extends State<MoreView> {
  List moreArr = [
    {
      "index": "1",
      "name": "Payment Detail",
      "image": "assets/images/more_payment.png",
      "base": 0
    },
    {
      "index": "2",
      "name": "My Orders",
      "image": "assets/images/more_my_order.png",
      "base": 0
    },
    {
      "index": "3",
      "name": "Notifications",
      "image": "assets/images/more_notification.png",
      "base": 15
    },
    {
      "index": "4",
      "name": "Inbox",
      "image": "assets/images/more_inbox.png",
      "base": 0
    },
    {
      "index": "5",
      "name": "About Us",
      "image": "assets/images/more_info.png",
      "base": 0
    }
  ];
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
                        height: 46,
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 20),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "More",
                              style: TextStyle(
                                  color: TColor.primaryText,
                                  fontSize: 20,
                                  fontWeight: FontWeight.w800),
                            ),
                            IconButton(
                                onPressed: () {  Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => MyOrderView()));},
                                icon: Image.asset(
                                  "assets/images/shopping_cart.png",
                                  width: 25,
                                  height: 25,
                                ))
                          ],
                        ),
                      ),
                      ListView.builder(
                          padding: EdgeInsets.zero,
                          physics: NeverScrollableScrollPhysics(),
                          shrinkWrap: true,
                          itemCount: moreArr.length,
                          itemBuilder: (context, index) {
                            var mObj = moreArr[index] as Map? ?? {};
                            var countBase = mObj["base"] as int? ?? 0;
                            return InkWell(
                                onTap: () {
                                  switch (mObj["index"].toString()) {
                                    case "1":
                                      Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                              builder: (context) =>
                                                  PaymentDetialsView()));

                                      break;
                                    case "2":
                                      Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                              builder: (context) =>
                                                  MyOrderView()));
                                    case "3":
                                      Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                              builder: (context) =>
                                                  NotificationView()));
                                    case "4":
                                      Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                              builder: (context) =>
                                                  InboxView()));

                                    case "5":
                                      Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                              builder: (context) =>
                                                  AboutView()));

                                    default:
                                  }
                                },
                                child: Container(
                                    margin: EdgeInsets.symmetric(
                                        vertical: 8, horizontal: 20),
                                    child: Stack(
                                      alignment: Alignment.centerRight,
                                      children: [
                                        Container(
                                          padding: EdgeInsets.symmetric(
                                              vertical: 12, horizontal: 12),
                                          margin: EdgeInsets.only(right: 15),
                                          child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            children: [
                                              Container(
                                                width: 50,
                                                height: 50,
                                                padding: EdgeInsets.all(8),
                                                decoration: BoxDecoration(
                                                  color: TColor.placeholder,
                                                  borderRadius:
                                                      BorderRadius.circular(25),
                                                ),
                                                alignment: Alignment.center,
                                                child: Image.asset(
                                                  mObj["image"].toString(),
                                                  width: 25,
                                                  height: 25,
                                                  fit: BoxFit.contain,
                                                ),
                                              ),
                                              SizedBox(
                                                width: 15,
                                              ),
                                              Expanded(
                                                  child: Text(
                                                mObj["name"].toString(),
                                                style: TextStyle(
                                                    color: TColor.primaryText,
                                                    fontSize: 14,
                                                    fontWeight:
                                                        FontWeight.w600),
                                              )),
                                              SizedBox(
                                                width: 15,
                                              ),
                                              if (countBase > 0)
                                                Container(
                                                  padding: EdgeInsets.all(4),
                                                  decoration: BoxDecoration(
                                                    color: Colors.red,
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            12.5),
                                                  ),
                                                  alignment: Alignment.center,
                                                  child: Text(
                                                    countBase.toString(),
                                                    style: TextStyle(
                                                        color: TColor.white,
                                                        fontSize: 12,
                                                        fontWeight:
                                                            FontWeight.w600),
                                                  ),
                                                ),
                                              SizedBox(
                                                width: 10,
                                              ),
                                            ],
                                          ),
                                        ),
                                        Container(
                                          padding: EdgeInsets.all(8),
                                          decoration: BoxDecoration(
                                            color: TColor.textfield,
                                            borderRadius:
                                                BorderRadius.circular(15),
                                          ),
                                          child: Image.asset(
                                            "assets/images/btn_next.png",
                                            width: 10,
                                            height: 10,
                                            color: TColor.primaryText,
                                          ),
                                        ),
                                      ],
                                    )));
                          })
                    ]))));
  }
}
