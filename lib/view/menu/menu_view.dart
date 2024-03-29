import 'package:flutter/material.dart';
import 'package:food_delivery_app/common/color_extension.dart';
import 'package:food_delivery_app/common_widget/round_textfield.dart';
import 'package:food_delivery_app/view/menu/menu_items_views.dart';
import 'package:food_delivery_app/view/more/my_order_view.dart';

class MenuView extends StatefulWidget {
  const MenuView({super.key});

  @override
  State<MenuView> createState() => _MenuViewState();
}

class _MenuViewState extends State<MenuView> {
  List menuArr = [
    {"name": "Food", "image": "assets/images/menu_1.png", "items_count": "120"},
    {
      "name": "Beverages",
      "image": "assets/images/menu_2.png",
      "items_count": "220"
    },
    {
      "name": "Desserts",
      "image": "assets/images/menu_3.png",
      "items_count": "155"
    },
    {
      "name": "Promotions",
      "image": "assets/images/menu_4.png",
      "items_count": "25"
    }
  ];
  TextEditingController txtSearch = TextEditingController();

  @override
  Widget build(BuildContext context) {
    var media = MediaQuery.of(context).size;
    return Scaffold(
        body: Stack(alignment: Alignment.centerLeft, children: [
      Container(
          margin: EdgeInsets.only(top: 180),
          width: media.width * 0.27,
          height: media.height * 0.6,
          decoration: BoxDecoration(
            color: TColor.primary,
            borderRadius: BorderRadius.only(
                topRight: Radius.circular(35),
                bottomRight: Radius.circular(35)),
          )),
      SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(vertical: 20),
          child: Column(children: [
            SizedBox(
              height: 46,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Menu",
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
            Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: RoundTextField(
                  hintText: 'Search Food',
                  controller: txtSearch,
                  left: Container(
                    alignment: Alignment.center,
                    width: 30,
                    child: Image.asset(
                      "assets/images/search.png",
                      width: 20,
                      height: 20,
                    ),
                  ),
                )),
            SizedBox(
              height: 30,
            ),
            ListView.builder(
                physics: NeverScrollableScrollPhysics(),
                padding: EdgeInsets.symmetric(vertical: 30, horizontal: 20),
                shrinkWrap: true,
                itemCount: menuArr.length,
                itemBuilder: ((context, index) {
                  var mObj = menuArr[index] as Map? ?? {};
                  return GestureDetector(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => MenuItemsView(mObj: mObj)));
                    },
                    child: Stack(
                      alignment: Alignment.centerRight,
                      children: [
                        Container(
                            margin:
                                EdgeInsets.only(top: 8, bottom: 8, right: 20),
                            width: media.width - 100,
                            height: 90,
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(25),
                                    bottomLeft: Radius.circular(25),
                                    topRight: Radius.circular(10),
                                    bottomRight: Radius.circular(10)),
                                boxShadow: [
                                  BoxShadow(
                                      color: Colors.black12,
                                      blurRadius: 4,
                                      offset: Offset(0, 4))
                                ])),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Image.asset(
                              mObj["image"].toString(),
                              width: 80,
                              height: 80,
                              fit: BoxFit.contain,
                            ),
                            SizedBox(
                              width: 25,
                            ),
                            Expanded(
                                child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  mObj["name"].toString(),
                                  style: TextStyle(
                                      color: TColor.primaryText,
                                      fontSize: 22,
                                      fontWeight: FontWeight.w700),
                                ),
                                SizedBox(
                                  height: 4,
                                ),
                                Text(
                                  "${mObj["items_count"].toString()}items",
                                  style: TextStyle(
                                      color: TColor.secondaryText,
                                      fontSize: 11,
                                      fontWeight: FontWeight.w700),
                                ),
                              ],
                            )),
                            Container(
                                width: 35,
                                height: 35,
                                decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(17.5),
                                    boxShadow: [
                                      BoxShadow(
                                          color: Colors.black12,
                                          blurRadius: 4,
                                          offset: Offset(0, 2))
                                    ]),
                                alignment: Alignment.center,
                                child: Image.asset(
                                  "assets/images/btn_next.png",
                                  width: 15,
                                  height: 15,
                                )),
                          ],
                        )
                      ],
                    ),
                  );
                }))
          ]),
        ),
      ),
    ]));
  }
}
