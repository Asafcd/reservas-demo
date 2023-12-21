import '../models/userslider1_item_model.dart';
import 'package:asaf_s_application2/core/app_export.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class Userslider1ItemWidget extends StatelessWidget {
  Userslider1ItemWidget(
    this.userslider1ItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  Userslider1ItemModel userslider1ItemModelObj;

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
