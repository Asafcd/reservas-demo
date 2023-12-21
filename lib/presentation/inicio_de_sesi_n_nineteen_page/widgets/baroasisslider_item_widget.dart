import '../models/baroasisslider_item_model.dart';
import 'package:asaf_s_application2/core/app_export.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class BaroasissliderItemWidget extends StatelessWidget {
  BaroasissliderItemWidget(
    this.baroasissliderItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  BaroasissliderItemModel baroasissliderItemModelObj;

  @override
  Widget build(BuildContext context) {
    return CustomImageView(
      imagePath: baroasissliderItemModelObj?.image,
      height: 220.v,
      width: 380.h,
      radius: BorderRadius.circular(
        28.h,
      ),
      margin: EdgeInsets.only(bottom: 32.v),
    );
  }
}
