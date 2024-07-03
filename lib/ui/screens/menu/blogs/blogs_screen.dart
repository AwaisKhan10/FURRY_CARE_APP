import 'package:flutter/material.dart';
import 'package:furry_care/core/constants/app_assets.dart';
import 'package:furry_care/core/constants/colors.dart';
import 'package:furry_care/core/constants/text_style.dart';
import 'package:furry_care/core/other/screen_utils.dart';
import 'package:furry_care/ui/custom_widgets/custom_blogs.dart';
import 'package:furry_care/ui/screens/menu/blogs/blog_details/blog_details.dart';
import 'package:furry_care/ui/screens/menu/blogs/blogs_view_model.dart';
import 'package:furry_care/ui/screens/menu/profile/profile_view_model.dart';
import 'package:get/get.dart';

import 'package:provider/provider.dart';

class BlogsScreen extends StatelessWidget {
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
                ///
                /// header
                ///
                _header(),

                ///
                /// List of Blogs
                ///
                ListView.builder(
                  shrinkWrap: true,
                  itemCount: model.listBlogs.length,
                  itemBuilder: ((context, index) {
                    return GestureDetector(
                        onTap: () {
                          Get.to(BlogsDetailScreen(
                              blogsData: model.listBlogs[index]));
                        },
                        child: CustomBlogs(blogsData: model.listBlogs[index]));
                  }),
                )
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
