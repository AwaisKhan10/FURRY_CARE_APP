// ignore_for_file: use_key_in_widget_constructors

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:furry_care/core/constants/app_assets.dart';
import 'package:furry_care/core/constants/colors.dart';
import 'package:furry_care/core/constants/text_style.dart';
import 'package:furry_care/core/other/screen_utils.dart';
import 'package:furry_care/ui/custom_widgets/custom_challenges.dart';
import 'package:furry_care/ui/screens/menu/challenges/challenges_view_model.dart';

import 'package:provider/provider.dart';

class ChallengesScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => ChallengesViewModel(),
      child: Consumer<ChallengesViewModel>(
        builder: (context, model, child) => Scaffold(
          backgroundColor: whiteColor,

          ///
          /// Start Body
          ///
          body: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                ///
                /// header
                ///
                _header(),
                SizedBox(
                  height: 20.h,
                ),

                ///
                /// Earn Prize
                ///
                _earnPrizes(context),

                ///
                ///
                ///
                Container(
                  margin: const EdgeInsets.all(20),
                  padding: const EdgeInsets.all(20),
                  width: double.infinity,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20.r),
                    gradient: LinearGradient(
                      colors: [
                        const Color(0xffECEF49).withOpacity(0.20),
                        const Color(0xffBF8D93).withOpacity(0.20),
                        const Color(0xff9A78C6).withOpacity(0.20),
                        const Color(0xff3BA1A1).withOpacity(0.20),
                      ],
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight,
                    ),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "My Prizes",
                            style: style16b.copyWith(
                                color: blackColor, fontSize: 20.sp),
                          ),
                          SizedBox(
                            width: MediaQuery.sizeOf(context).width * 0.40,
                            child: Text(
                              "No rewards yet! Complete your first challenge to win a reward",
                              style: style12.copyWith(
                                color: blackColor,
                              ),
                            ),
                          ),
                        ],
                      ),

                      ///
                      /// Congratulations cup
                      ///
                      Image.asset(
                        AppAssets.congratulation,
                        scale: 4.5,
                      )
                    ],
                  ),
                ),

                ///
                /// Challenges for you
                ///
                Center(
                  child: Text(
                    "Challenges for you",
                    style:
                        style16b.copyWith(color: blackColor, fontSize: 20.sp),
                  ),
                ),
                Center(
                  child: Text(
                    "Participate now and earn prizes",
                    style: style16.copyWith(
                        color: blackColor,
                        fontWeight: FontWeight.normal,
                        fontSize: 14),
                  ),
                ),

                ///
                /// List view
                ///
                ListView.builder(
                    physics: NeverScrollableScrollPhysics(),
                    shrinkWrap: true,
                    itemCount: 4,
                    itemBuilder: (context, index) {
                      return CustomChallenges();
                    }),
                SizedBox(
                  height: 40.h,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

_header() {
  return Container(
    alignment: Alignment.center,
    padding: const EdgeInsets.fromLTRB(20.0, 30.0, 20.0, 0.0),
    width: double.infinity,
    height: 117.h,
    decoration: BoxDecoration(color: accentColor, boxShadow: [
      BoxShadow(
          color: blackColor.withOpacity(0.25),
          offset: const Offset(0, 4),
          spreadRadius: 0,
          blurRadius: 4)
    ]),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Text(
          "    ",
          style: style14,
        ),
        Text(
          "Challenges",
          style: style16b.copyWith(color: blackColor, fontSize: 20.sp),
        ),
        Image.asset(
          AppAssets.notifications,
          scale: 3.5,
        ),
      ],
    ),
  );
}

_earnPrizes(BuildContext context) {
  return Padding(
    padding: const EdgeInsets.symmetric(horizontal: 20.0),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Stack(
          alignment: Alignment.topRight,
          children: [
            Stack(
              alignment: Alignment.bottomLeft,
              children: [
                Image.asset(
                  AppAssets.congrat_add,
                  scale: 4,
                ),
                Image.asset(
                  AppAssets.congrat,
                  scale: 4,
                ),
              ],
            ),
            Image.asset(
              AppAssets.congrats,
              scale: 4,
            ),
          ],
        ),
        SizedBox(
          width: MediaQuery.sizeOf(context).width * 0.35,
          child: RichText(
              text: TextSpan(children: [
            TextSpan(text: 'Earn Prize ', style: style16b),
            TextSpan(
              text: 'by completing fun challenges',
              style: style16.copyWith(
                  color: blackColor, fontWeight: FontWeight.w500),
            ),
          ])),
        )
      ],
    ),
  );
}
