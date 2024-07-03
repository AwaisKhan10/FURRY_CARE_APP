import 'package:flutter/material.dart';
import 'package:furry_care/core/constants/app_assets.dart';
import 'package:furry_care/core/constants/colors.dart';
import 'package:furry_care/core/constants/text_style.dart';
import 'package:furry_care/core/other/screen_utils.dart';

class CustomCourses extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(left: 10, bottom: 20, right: 10),
      width: 220.w,
      padding: const EdgeInsets.all(10),
      decoration: BoxDecoration(
          color: accentColor,
          borderRadius: BorderRadius.circular(15.r),
          boxShadow: [
            BoxShadow(
                color: blackColor.withOpacity(0.20),
                spreadRadius: 2,
                blurRadius: 2,
                offset: Offset(0, 4))
          ]),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 124.h,
            width: 193.w,
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage(AppAssets.pet2), fit: BoxFit.cover)),
          ),
          SizedBox(
            height: 10.h,
          ),
          Text(
            'Puppies and their helth',
            style: style16.copyWith(color: blackColor),
          ),
          SizedBox(
            height: 5.h,
          ),
          Text(
            'A unique online course produced by a veterinary surgeon teaching you all the health aspect of owning a happy puppy',
            maxLines: 5,
            overflow: TextOverflow.ellipsis,
            style: style12.copyWith(color: blackColor),
          ),
          SizedBox(
            height: 10.h,
          ),
          Text(
            '\u{20B9}799',
            style: style16.copyWith(color: blackColor),
          ),
        ],
      ),
    );
  }
}
