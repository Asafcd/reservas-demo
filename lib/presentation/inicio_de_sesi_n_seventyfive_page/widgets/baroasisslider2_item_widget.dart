import '../models/baroasisslider2_item_model.dart';
import 'package:asaf_s_application2/core/app_export.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class Baroasisslider2ItemWidget extends StatelessWidget {
  Baroasisslider2ItemWidget(
    this.baroasisslider2ItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  Baroasisslider2ItemModel baroasisslider2ItemModelObj;

  @override
  Widget build(BuildContext context) {
    return CustomImageView(
      imagePath: baroasisslider2ItemModelObj?.image,
      height: 220.v,
      width: 380.h,
      radius: BorderRadius.circular(
        28.h,
      ),
      margin: EdgeInsets.only(bottom: 32.v),
    );
  }
}
