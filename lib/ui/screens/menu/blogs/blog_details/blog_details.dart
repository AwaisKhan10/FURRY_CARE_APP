// ignore_for_file: use_key_in_widget_constructors, must_be_immutable

import 'package:flutter/material.dart';
import 'package:furry_care/core/constants/app_assets.dart';
import 'package:furry_care/core/constants/colors.dart';
import 'package:furry_care/core/constants/text_style.dart';
import 'package:furry_care/core/model/blogs.dart';
import 'package:furry_care/core/other/screen_utils.dart';
import 'package:furry_care/ui/screens/menu/blogs/blogs_view_model.dart';

import 'package:provider/provider.dart';

class BlogsDetailScreen extends StatelessWidget {
  BlogsData blogsData;
  BlogsDetailScreen({required this.blogsData});
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => BlogsViewModel(),
      child: Consumer<BlogsViewModel>(
        builder: (context, model, child) => Scaffold(
          backgroundColor: whiteColor,

          ///
          /// Start Body
          ///
          body: SingleChildScrollView(
            physics: const NeverScrollableScrollPhysics(),
            child: Column(
              children: [
                blogsData.imgUrl != null && blogsData.imgUrl!.isNotEmpty
                    ? Container(
                        height: MediaQuery.sizeOf(context).height * 0.4,
                        width: double.infinity,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(6.r),
                            image: DecorationImage(
                                image: AssetImage(blogsData.imgUrl!),
                                fit: BoxFit.cover)),
                      )
                    : SizedBox(
                        height: 40.h,
                      ),
                SizedBox(
                  height: 20.h,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      RichText(
                          textAlign: TextAlign.justify,
                          text: TextSpan(children: [
                            TextSpan(
                                text: "${blogsData.name} | ",
                                style: style12.copyWith(
                                  color: blackColor,
                                )),
                            TextSpan(
                              text: "${blogsData.time}",
                              style: style12.copyWith(
                                color: blackColor,
                              ),
                            ),
                          ])),
                      SizedBox(
                        height: 5.h,
                      ),
                      Text(
                        "${blogsData.title}",
                        textAlign: TextAlign.justify,
                        style: style16.copyWith(
                            color: blackColor, fontSize: 20.sp),
                      ),
                      SizedBox(
                        height: 10.h,
                      ),
                      Text(
                        "${blogsData.description}",
                        style: style12.copyWith(color: blackColor, height: 1.5),
                        textAlign: TextAlign.justify,
                      ),
                    ],
                  ),
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
          "Blogs",
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
