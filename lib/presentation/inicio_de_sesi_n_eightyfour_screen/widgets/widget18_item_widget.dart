import '../models/widget18_item_model.dart';
import 'package:asaf_s_application2/core/app_export.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class Widget18ItemWidget extends StatelessWidget {
  Widget18ItemWidget(
    this.widget18ItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  Widget18ItemModel widget18ItemModelObj;

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.center,
      child: CustomImageView(
        imagePath: ImageConstant.imgRectangle124052,
        height: 220.v,
        width: 412.h,
        margin: EdgeInsets.only(bottom: 32.v),
      ),
    );
  }
}
