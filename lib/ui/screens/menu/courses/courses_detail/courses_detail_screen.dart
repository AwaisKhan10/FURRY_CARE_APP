// ignore_for_file: avoid_print

import 'package:expanded_text_custom/expanded_text_custom.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flick_video_player/flick_video_player.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:furry_care/core/constants/text_style.dart';
import 'package:furry_care/ui/custom_widgets/buttons/custom_button.dart';
import 'package:furry_care/ui/custom_widgets/custom_expansion_tile.dart';
import 'package:get/instance_manager.dart';
import 'package:get/route_manager.dart';
import 'package:provider/provider.dart';
import 'package:furry_care/core/constants/colors.dart';
import 'package:furry_care/core/constants/text_field_decoration.dart';
import 'package:furry_care/ui/screens/menu/courses/courses_detail/courses_detail_view_model.dart';
import 'package:furry_care/core/other/screen_utils.dart';
import 'package:furry_care/core/constants/app_assets.dart';

class CoursesDetalScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => CoursesDetailViewModel(),
      child: Consumer<CoursesDetailViewModel>(
        builder: (context, model, child) => Scaffold(
          backgroundColor: whiteColor,
          appBar: AppBar(
            automaticallyImplyLeading: false,
            leading: IconButton(
              onPressed: () {
                Get.back();
              },
              icon: Icon(
                Icons.arrow_back,
                size: 24.sp,
                color: blackColor,
              ),
            ),
            foregroundColor: whiteColor,
            surfaceTintColor: whiteColor,
            // shadowColor: whiteColor,
            title: Text(
              "Pet grooming course",
              style: TextStyle(
                color: blackColor,
                fontSize: 20.sp,
                fontWeight: FontWeight.w600,
              ),
            ),
            centerTitle: true,
            backgroundColor: whiteColor,
            elevation: 0.0,
          ),
          body: SingleChildScrollView(
            child: Column(
              children: [
                ///
                /// Video player
                ///
                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(15.r),
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15.r),
                        color: Colors.black,
                      ),
                      child: model.flickManager.flickVideoManager!
                              .isVideoInitialized
                          ? FlickVideoPlayer(flickManager: model.flickManager)
                          : const Center(child: CircularProgressIndicator()),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 25.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      _detail(
                          imgIcon: AppAssets.play,
                          text: '24 videos',
                          scale: 3.0),
                      _detail(
                          imgIcon: AppAssets.timer,
                          text: '2 hours',
                          scale: 3.0),
                      _detail(
                          imgIcon: AppAssets.person,
                          text: '245 Enrolled',
                          scale: 3.0),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(
                      horizontal: 20.0, vertical: 20),
                  child: ExpandableTextCustom(
                      content:
                          "Pet Care Professionals that would like to provide pet services - Basic dog grooming, to their clients. Pet Care Professionals like, Dog walker, Dog trainers",
                      maxLines: 2,
                      textExpandStyle: styleNormal14,
                      textStyleContent: styleNormal14,
                      showMore: true,
                      textMore: "Read More",
                      textLess: "Read Less"),
                ),

                Container(
                  margin: const EdgeInsets.symmetric(horizontal: 20),
                  padding: const EdgeInsets.all(20),
                  decoration: BoxDecoration(
                      color: Colors.transparent,
                      border: Border.all(
                        width: 1.0,
                        color: borderColor,
                      )),
                  child: Column(
                    children: [
                      Text(
                        "What you’ll learn",
                        style: style16b,
                      ),
                      _yourLearn(
                          text:
                              'Learn the essential information to be able to set up and run your own Pet Sitting business'),
                      _yourLearn(
                          text:
                              'Learn the essential information to be able to set up and run your own Pet Sitting business'),
                      _yourLearn(
                          text:
                              'Learn the essential information to be able to set up and run your own Pet Sitting business'),
                      _yourLearn(
                          text:
                              'Learn the essential information to be able to set up and run your own Pet Sitting business'),
                      _yourLearn(
                          text:
                              'Learn the essential information to be able to set up and run your own Pet Sitting business'),
                    ],
                  ),
                ),
                SizedBox(
                  height: 20.h,
                ),

                ///
                /// Couses Content
                ///
                Text(
                  textAlign: TextAlign.center,
                  "Course Content",
                  style: style16b,
                ),
                Container(
                  margin:
                      const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                  decoration: BoxDecoration(
                      color: Colors.transparent,
                      border: Border.all(
                        width: 0.5,
                        color: borderColor,
                      )),
                  child: Column(
                    children: [
                      CustomExpansionTile(
                        title: 'Introduction',
                        rightText: '1 Lecture . 1 Min',
                        items: model.items,
                        initiallyExpanded: true,
                      ),
                      CustomExpansionTile(
                          title: 'Planning to groom',
                          rightText: '1 Lecture . 2 Min',
                          items: model.items),
                      CustomExpansionTile(
                          title: 'Equipment',
                          rightText: '1 Lecture . 1 Min',
                          items: model.items),
                      CustomExpansionTile(
                          title: 'Health & safety',
                          rightText: '1 Lecture . 1 Min',
                          items: model.items),
                      CustomExpansionTile(
                          title: 'Prep for styling',
                          rightText: '1 Lecture . 1 Min',
                          items: model.items),
                    ],
                  ),
                ),

                ///
                /// Couses Content
                ///
                Padding(
                  padding: const EdgeInsets.symmetric(
                      horizontal: 20.0, vertical: 10),
                  child: Align(
                    alignment: Alignment.topLeft,
                    child: Text(
                      textAlign: TextAlign.start,
                      "Requirements",
                      style: style16b,
                    ),
                  ),
                ),

                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20.0),
                  child: Row(
                    children: [
                      Icon(
                        Icons.circle,
                        size: 10.sp,
                        color: blackColor,
                      ),
                      SizedBox(
                        width: 10.w,
                      ),
                      Text(
                        "All you need is a pet or the intention of having one! ",
                        style: style10,
                      ),
                    ],
                  ),
                ),

                ///
                /// Requirments
                ///
                _requirements(),

                ///
                /// 4.7 Course rating .
                ///
                _courseRating(),

                ///
                /// Show All Review Button
                ///
                TextButton(
                    onPressed: () {},
                    child: Text(
                      "Show all reviews",
                      style: style14.copyWith(
                          decoration: TextDecoration.underline,
                          color: borderColor,
                          decorationColor: borderColor,
                          decorationThickness: 3),
                    )),

                ///
                /// Button Buy Bow
                ///
                Padding(
                  padding: const EdgeInsets.symmetric(
                      horizontal: 20.0, vertical: 20),
                  child: CustomButton(
                    onTap: () {},
                    text: 'Buy now',
                    textColor: whiteColor,
                    buttonColor: buttonColor,
                    border: Border.all(width: 1.0, color: borderColor),
                    borderRadius: BorderRadius.circular(15.r),
                  ),
                ),

                ///
                /// Add to Cart
                ///
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20.0),
                  child: CustomButton(
                    onTap: () {},
                    text: 'Add to Cart',
                    textColor: buttonColor,
                    buttonColor: whiteColor,
                    border: Border.all(width: 1.0, color: borderColor),
                    borderRadius: BorderRadius.circular(15.r),
                  ),
                ),
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

_detail(
    {required String text, required String imgIcon, required double scale}) {
  return Row(
    children: [
      Image.asset(
        imgIcon,
        scale: scale,
        color: borderColor,
      ),
      SizedBox(
        width: 10.w,
      ),
      Text(
        "$text",
        style: style10,
      ),
    ],
  );
}

_yourLearn({required String text}) {
  return Padding(
    padding: const EdgeInsets.symmetric(vertical: 8.0),
    child: Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Icon(
          Icons.check,
          size: 20.sp,
          color: borderColor,
        ),
        SizedBox(
          width: 20.w,
        ),
        Expanded(
          child: Text(
            '$text',
            style: style12,
          ),
        )
      ],
    ),
  );
}

_requirements() {
  return Container(
    padding: const EdgeInsets.all(16),
    margin: const EdgeInsets.all(20),
    decoration: const BoxDecoration(
      color: accentColor,
    ),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            CircleAvatar(
              radius: 18.r,
              backgroundImage: AssetImage(AppAssets.img2),
            ),
            SizedBox(
              width: 20.w,
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Hardik Mehra",
                  style: style14,
                ),
                Text(
                  "Certifies pet groomer",
                  style: style10,
                ),
              ],
            ),
          ],
        ),
        Row(
          children: [
            Icon(
              Icons.star,
              size: 20.sp,
              color: startColor,
            ),
            Text(
              "4.7",
              style: style14,
            ),
          ],
        ),
      ],
    ),
  );
}

RatingBar _rating_bar({required int number}) {
  return RatingBar.builder(
    initialRating: 5,
    minRating: 0,
    wrapAlignment: WrapAlignment.start,
    direction: Axis.horizontal,
    allowHalfRating: false,
    itemCount: number,
    itemSize: 20,
    itemBuilder: (context, _) => const Icon(
      Icons.star,
      color: startColor,
    ),
    onRatingUpdate: (rating) {
      print(rating);
    },
  );
}

_courseRating() {
  return Padding(
    padding: const EdgeInsets.symmetric(horizontal: 20.0),
    child: Column(
      children: [
        Row(
          children: [
            Icon(
              Icons.star,
              size: 20.sp,
              color: startColor,
            ),
            Text(
              "4.7 Course rating .",
              style: style14,
            ),
          ],
        ),
        const Padding(
          padding: EdgeInsets.symmetric(vertical: 5.0),
          child: Divider(
            color: Color(0xffBDBDBD),
          ),
        ),
        Row(
          children: [
            CircleAvatar(
              radius: 18.r,
              backgroundImage: AssetImage(AppAssets.img2),
            ),
            SizedBox(
              width: 20.w,
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Hardik Mehra",
                  style: style14,
                ),
                Row(
                  children: [
                    _rating_bar(number: 5),
                    SizedBox(
                      width: 5.w,
                    ),
                    Text(
                      "3 months ago",
                      style: style12,
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 80.0, vertical: 10.0),
          child: Text(
            "Covers every aspect of dog grooming. Excellent.",
            style: style12.copyWith(fontWeight: FontWeight.w300),
          ),
        ),
      ],
    ),
  );
}
