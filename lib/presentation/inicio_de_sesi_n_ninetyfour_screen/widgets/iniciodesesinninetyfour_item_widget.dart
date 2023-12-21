import '../models/iniciodesesinninetyfour_item_model.dart';
import 'package:asaf_s_application2/core/app_export.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class IniciodesesinninetyfourItemWidget extends StatelessWidget {
  IniciodesesinninetyfourItemWidget(
    this.iniciodesesinninetyfourItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  IniciodesesinninetyfourItemModel iniciodesesinninetyfourItemModelObj;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80.adaptSize,
      width: 80.adaptSize,
      padding: EdgeInsets.all(22.h),
      decoration: AppDecoration.outlinePrimary3.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder15,
      ),
      child: CustomImageView(
        imagePath: ImageConstant.imgBookmark,
        height: 32.adaptSize,
        width: 32.adaptSize,
        alignment: Alignment.center,
      ),
    );
  }
}
