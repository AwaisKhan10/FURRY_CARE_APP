import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:furry_care/core/constants/app_assets.dart';
import 'package:furry_care/core/constants/colors.dart';
import 'package:furry_care/core/constants/text_field_decoration.dart';
import 'package:furry_care/core/constants/text_style.dart';
import 'package:furry_care/core/other/screen_utils.dart';
import 'package:furry_care/ui/custom_widgets/custom_courses.dart';
import 'package:furry_care/ui/screens/menu/courses/courses_detail/courses_detail_screen.dart';
import 'package:furry_care/ui/screens/menu/courses/courses_view_model.dart';
import 'package:get/instance_manager.dart';
import 'package:get/route_manager.dart';

import 'package:provider/provider.dart';

class CoursesScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => CoursesViewModel(),
      child: Consumer<CoursesViewModel>(
        builder: (context, model, child) => Scaffold(
          ///
          /// Start Body
          ///
          body: Column(
            children: [
              ///
              /// header
              ///
              _header(),

              ///
              /// Username  and Profile
              ///
              Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 20.0, horizontal: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      "Hello, Alex",
                      style: style23,
                    ),
                    CircleAvatar(
                      radius: 30.r,
                      backgroundImage: AssetImage(
                        AppAssets.user2,
                      ),
                    ),
                  ],
                ),
              ),

              ///
              /// Title
              ///
              Text(
                "What would you like to learn today?",
                style: style23.copyWith(fontSize: 20.sp),
              ),

              ///
              ///
              ///  Search TextForm Field
              ///
              ///

              _textFormField(),

              ///
              /// List Data
              ///
              SizedBox(
                height: 330,
                child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    shrinkWrap: true,
                    itemCount: 6,
                    itemBuilder: (context, index) {
                      return CustomCourses();
                    }),
              ),
              SizedBox(
                height: 20.h,
              ),

              ///
              /// Linerer Indicator
              ///
              GestureDetector(
                onTap: () {
                  Get.to(CoursesDetalScreen());
                },
                child: Container(
                  margin: const EdgeInsets.only(left: 20, right: 20),
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
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Pet grooming",
                            style: style14,
                          ),
                          Text(
                            "70%",
                            style: style14,
                          )
                        ],
                      ),
                      SizedBox(
                        height: 20.h,
                      ),
                      LinearProgressIndicator(
                        minHeight: 10,
                        backgroundColor:
                            const Color(0xff3E3934).withOpacity(0.45),
                        color: borderColor,
                        borderRadius: BorderRadius.circular(5.r),
                        value: 0.7,
                      ),
                    ],
                  ),
                ),
              ),
            ],
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
          "Courses",
          style: style16b.copyWith(color: blackColor, fontSize: 20.sp),
        ),
        Icon(
          Icons.add,
          color: borderColor,
          size: 28.sp,
        )
      ],
    ),
  );
}

_textFormField() {
  return Padding(
    padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 20.0),
    child: TextFormField(
      decoration: authFieldDecoration.copyWith(
          contentPadding: EdgeInsets.symmetric(vertical: 15),
          hintText: '',
          enabledBorder: OutlineInputBorder(
              borderSide: const BorderSide(color: borderColor, width: 1.0),
              borderRadius: BorderRadius.circular(18.r)),
          focusedBorder: OutlineInputBorder(
              borderSide: const BorderSide(color: borderColor, width: 1.0),
              borderRadius: BorderRadius.circular(18.r)),
          errorBorder: OutlineInputBorder(
              borderSide: const BorderSide(color: borderColor, width: 1.0),
              borderRadius: BorderRadius.circular(18.r)),
          disabledBorder: OutlineInputBorder(
              borderSide: const BorderSide(color: borderColor, width: 1.0),
              borderRadius: BorderRadius.circular(18.r)),
          focusedErrorBorder: OutlineInputBorder(
              borderSide: const BorderSide(color: borderColor, width: 1.0),
              borderRadius: BorderRadius.circular(18.r)),
          fillColor: const Color(0xffFDF6F0),
          prefixIcon: Image.asset(
            AppAssets.search,
            scale: 4,
            color: const Color(0xff374957),
          )),
    ),
  );
}
