// ignore_for_file: must_be_immutable, use_key_in_widget_constructors

import 'package:flutter/material.dart';
import 'package:furry_care/core/constants/colors.dart';
import 'package:furry_care/core/constants/text_style.dart';
import 'package:furry_care/core/model/blogs.dart';
import 'package:furry_care/core/other/screen_utils.dart';

class CustomBlogs extends StatelessWidget {
  BlogsData blogsData;
  CustomBlogs({required this.blogsData});
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
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "${blogsData.title}",
                  style: style16.copyWith(color: blackColor),
                ),
                SizedBox(
                  height: 5.h,
                ),
                RichText(
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
                  height: 20.h,
                ),
                Text(
                  "${blogsData.description}",
                  style: style12.copyWith(color: blackColor),
                  maxLines: 3,
                  overflow: TextOverflow.ellipsis,
                ),
              ],
            ),
          ),

          ///
          /// Image
          ///
          ///

          blogsData.imgUrl != null && blogsData.imgUrl!.isNotEmpty
              ? Container(
                  height: 96.h,
                  width: 102.w,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(6.r),
                      image: DecorationImage(
                          image: AssetImage(blogsData.imgUrl!),
                          fit: BoxFit.cover)),
                )
              : const SizedBox(),
        ],
      ),
    );
  }
}
