import '../models/userslider_item_model.dart';
import 'package:asaf_s_application2/core/app_export.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class UsersliderItemWidget extends StatelessWidget {
  UsersliderItemWidget(
    this.usersliderItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  UsersliderItemModel usersliderItemModelObj;

  @override
  Widget build(BuildContext context) {
    return CustomImageView(
      imagePath: ImageConstant.imgRectangle124051,
      height: 220.v,
      width: 412.h,
      margin: EdgeInsets.only(bottom: 32.v),
    );
  }
}
