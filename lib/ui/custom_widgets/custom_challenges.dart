import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:furry_care/core/constants/app_assets.dart';
import 'package:furry_care/core/constants/colors.dart';
import 'package:furry_care/core/constants/text_style.dart';
import 'package:furry_care/core/other/screen_utils.dart';

class CustomChallenges extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(color: accentColor, boxShadow: [
        BoxShadow(
            color: blackColor.withOpacity(0.20),
            spreadRadius: 2,
            blurRadius: 2,
            offset: Offset(0, 4))
      ]),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          ///
          /// Image
          ///
          Image.asset(
            AppAssets.congrats1,
            scale: 3,
          ),
          SizedBox(
            width: 20.w,
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Feed stray animals",
                  style: style16.copyWith(color: blackColor),
                ),
                RichText(
                    text: TextSpan(children: [
                  TextSpan(
                      text: 'Post a story on community feed and win ',
                      style: style16.copyWith(
                          color: blackColor, fontWeight: FontWeight.w400)),
                  TextSpan(
                    text: '20% off on any course s',
                    style: style14.copyWith(
                        color: blackColor, fontWeight: FontWeight.w600),
                  ),
                ]))
              ],
            ),
          )
        ],
      ),
    );
  }
}
