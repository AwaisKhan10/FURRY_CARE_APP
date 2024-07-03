// ignore_for_file: use_key_in_widget_constructors

import 'package:flutter/material.dart';
import 'package:furry_care/core/constants/app_assets.dart';
import 'package:furry_care/core/constants/colors.dart';
import 'package:furry_care/core/constants/text_style.dart';
import 'package:furry_care/core/other/screen_utils.dart';
import 'package:furry_care/ui/screens/menu/challenges/challenges_screen.dart';
import 'package:furry_care/ui/screens/menu/profile/profile_view_model.dart';
import 'package:get/get.dart';
import 'package:provider/provider.dart';

class ProfileScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => ProfileViewModel(),
      child: Consumer<ProfileViewModel>(
        builder: (context, model, child) => Scaffold(
          backgroundColor: const Color(0XFFFFFFFF),

          ///
          /// App BAR
          ///
          appBar: AppBar(
            backgroundColor: const Color(0XFFFFFFFF),
            elevation: 0.0,
            centerTitle: true,
            title: Text(
              "Profile",
              style: style16.copyWith(
                  fontWeight: FontWeight.w600, color: blackColor),
            ),
          ),

          ///
          /// Start Body
          ///
          body: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 20.h,
                ),

                ///
                /// Profile
                ///
                _profileDetail(),

                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    _boxContainer(
                        ontap: () {}, text: 'Orders', image: AppAssets.orders),
                    _boxContainer(
                        ontap: () {}, text: 'Wishlist', image: AppAssets.heart),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    _boxContainer(
                        ontap: () {
                          Get.to(ChallengesScreen());
                        },
                        text: 'Challenges',
                        image: AppAssets.challenges_icon),
                    _boxContainer(
                        ontap: () {},
                        text: 'Help center',
                        image: AppAssets.headphones),
                  ],
                ),

                ///
                /// Text
                ///
                TextButton(
                  onPressed: () {},
                  child: Text(
                    "Update Profile",
                    style: style14,
                  ),
                ),
                TextButton(
                  onPressed: () {},
                  child: Text(
                    "Terms and conditions",
                    style: style14,
                  ),
                ),
                TextButton(
                  onPressed: () {},
                  child: Text(
                    "Log Out",
                    style: style14,
                  ),
                ),
                TextButton(
                  onPressed: () {},
                  child: Text(
                    "Settings",
                    style: style14,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 20.0, top: 20),
                  child: TextButton(
                    onPressed: () {},
                    child: Text(
                      "Manage seller account",
                      style: style14.copyWith(
                          color: borderColor,
                          decorationColor: borderColor,
                          decoration: TextDecoration.underline,
                          decorationThickness: 3),
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

_profileDetail() {
  return Column(
    children: [
      ///
      /// Profile
      ///
      CircleAvatar(
        radius: 50.r,
        backgroundImage: AssetImage(
          AppAssets.user2,
        ),
      ),
      SizedBox(
        height: 10.h,
      ),

      ///
      /// User Name
      ///
      Text(
        "Jiya",
        style: style23,
      ),
      SizedBox(
        height: 20.h,
      ),

      ///
      /// Points Earned
      ///
      RichText(
          text: TextSpan(children: [
        TextSpan(
            text: "Points Earned : ",
            style: style14.copyWith(fontWeight: FontWeight.w600)),
        TextSpan(text: "500pts", style: style14),
      ])),
      SizedBox(
        height: 10.h,
      ),

      ///
      /// Badges Earned
      ///
      Text(
        "Badges Earned",
        style: style14.copyWith(fontWeight: FontWeight.w600),
      ),

      Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Image.asset(
            AppAssets.badges1,
            scale: 4,
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Image.asset(
              AppAssets.badges2,
              scale: 4,
            ),
          ),
          Image.asset(
            AppAssets.badges3,
            scale: 4,
          ),
        ],
      )
    ],
  );
}

_boxContainer(
    {required VoidCallback ontap,
    required String text,
    required String image}) {
  return InkWell(
    onTap: ontap,
    child: Container(
      width: 152.w,
      margin: const EdgeInsets.symmetric(vertical: 10),
      padding: const EdgeInsets.symmetric(vertical: 15),
      decoration: BoxDecoration(
          color: accentColor,
          borderRadius: BorderRadius.circular(8.r),
          boxShadow: [
            BoxShadow(
                color: blackColor.withOpacity(0.20),
                spreadRadius: 2,
                blurRadius: 2,
                offset: Offset(0, 4))
          ]),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Image.asset(
            "$image",
            scale: 4,
          ),
          // SizedBox(
          //   width: 10.w,
          // ),
          Text(
            "$text",
            style: style14,
          )
        ],
      ),
    ),
  );
}
