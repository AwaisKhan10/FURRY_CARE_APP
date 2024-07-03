import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:furry_care/core/constants/colors.dart';
import 'package:furry_care/core/constants/text_style.dart';
import 'package:furry_care/core/other/screen_utils.dart';
import 'package:furry_care/ui/screens/shop/shop_details/detail_view_model.dart';
import 'package:furry_care/ui/screens/shop/shop_details/details_screen.dart';
import 'package:get/get.dart';
import 'package:provider/provider.dart';

class CustomAllProducts extends StatelessWidget {
  const CustomAllProducts({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
        create: (context) => ShopDetailViewModel(),
        child: Consumer<ShopDetailViewModel>(
            builder: (context, model, child) => GridView.builder(
                itemCount: model.list_shop_detail.length,
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisSpacing: 16,
                    mainAxisSpacing: 16,
                    crossAxisCount: 2),
                itemBuilder: ((context, index) => Container(
                      padding: const EdgeInsets.all(10.0),
                      // // width: 156,
                      // height: 300,
                      decoration: BoxDecoration(
                          color: accentColor,
                          borderRadius: BorderRadius.circular(12),
                          boxShadow: [
                            BoxShadow(
                                color: Colors.black.withOpacity(0.10),
                                spreadRadius: 0,
                                offset: const Offset(0.0, 2.0),
                                blurRadius: 10)
                          ]),
                      child: Center(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Expanded(
                              child: GestureDetector(
                                onTap: () {
                                  Get.to(ShopDetailScreen(
                                      shopData: model.list_shop_detail[index]));
                                },
                                child: Container(
                                  width: 140,
                                  height: 120,
                                  margin: const EdgeInsets.only(top: 10),
                                  // ignore: sort_child_properties_last
                                  child: Image.asset(
                                    "${model.list_shop_detail[index].imgUrl}",
                                    fit: BoxFit.cover,
                                  ),
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(12),
                                      color: greyColor),
                                ),
                              ),
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            Text(
                              "${model.list_shop_detail[index].title}",
                              style: styleNormal14,
                            ),
                            SizedBox(
                              height: 6.h,
                            ),
                            Text(
                              "${model.list_shop_detail[index].price}",
                              style: styleNormal14,
                            )
                          ],
                        ),
                      ),
                    )))));
  }
}
