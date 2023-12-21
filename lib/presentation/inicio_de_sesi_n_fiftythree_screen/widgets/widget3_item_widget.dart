import '../models/widget3_item_model.dart';
import 'package:asaf_s_application2/core/app_export.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class Widget3ItemWidget extends StatelessWidget {
  Widget3ItemWidget(
    this.widget3ItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  Widget3ItemModel widget3ItemModelObj;

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
