import 'package:flutter/material.dart';
import 'package:food_delivery_app/common/color_extension.dart';
import 'package:food_delivery_app/common_widget/tab_button.dart';
import 'package:food_delivery_app/view/home/home_view.dart';
import 'package:food_delivery_app/view/menu/menu_view.dart';
import 'package:food_delivery_app/view/more/more_view.dart';
import 'package:food_delivery_app/view/offer/offer_view.dart';
import 'package:food_delivery_app/view/profile/profile_view.dart';

class MainTabView extends StatefulWidget {
  const MainTabView({super.key});

  @override
  State<MainTabView> createState() => _MainTabViewState();
}

class _MainTabViewState extends State<MainTabView> {
  int selectTab = 2;
  PageStorageBucket storageBucket = PageStorageBucket();
  Widget selectPageView = HomeView();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageStorage(bucket: storageBucket, child: selectPageView),
      backgroundColor: Color(0xfff5f5f5),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: SizedBox(
        width: 60,
        height: 60,
        child: FloatingActionButton(
          onPressed: () {
            if (selectTab != 2) {
              selectTab = 2;
              selectPageView = HomeView();
            }
            if (mounted) {
              setState(() {});
            }
          },
          shape: CircleBorder(),
          backgroundColor: selectTab == 2 ? TColor.primary : TColor.placeholder,
          child: Image.asset(
            "assets/images/tab_home.png",
            width: 30,
            height: 30,
          ),
        ),
      ),
      bottomNavigationBar: BottomAppBar(
          shadowColor: Colors.black,
          // color: TColor.white,
          surfaceTintColor: TColor.white,
          elevation: 1,
          notchMargin: 12,
          height: 64,
          shape: CircularNotchedRectangle(),
          child: SafeArea(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                TabButton(
                  onTap: () {
                    if (selectTab != 0) {
                      selectTab = 0;
                      selectPageView = MenuView();
                    }
                    if (mounted) {
                      setState(() {});
                    }
                  },
                  title: "Menu",
                  isSelected: selectTab == 0,
                  icon: 'assets/images/tab_menu.png',
                ),
                TabButton(
                  onTap: () {
                    if (selectTab != 1) {
                      selectTab = 1;
                      selectPageView = OfferView();
                    }
                    if (mounted) {
                      setState(() {});
                    }
                  },
                  title: "offer",
                  isSelected: selectTab == 1,
                  icon: 'assets/images/tab_offer.png',
                ),
                SizedBox(
                  width: 40,
                  height: 40,
                ),
                TabButton(
                  onTap: () {
                    if (selectTab != 3) {
                      selectTab = 3;
                      selectPageView = ProfileView();
                    }
                    if (mounted) {
                      setState(() {});
                    }
                  },
                  title: "Profile",
                  isSelected: selectTab == 3,
                  icon: 'assets/images/tab_profile.png',
                ),
                TabButton(
                  onTap: () {
                    if (selectTab != 4) {
                      selectTab = 4;
                      selectPageView = MoreView();
                    }
                    if (mounted) {
                      setState(() {});
                    }
                  },
                  title: "More",
                  isSelected: selectTab == 4,
                  icon: 'assets/images/tab_more.png',
                ),
              ],
            ),
          )),
    );
  }
}
