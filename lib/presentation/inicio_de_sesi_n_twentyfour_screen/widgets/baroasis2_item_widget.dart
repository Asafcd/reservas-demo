import '../models/baroasis2_item_model.dart';
import 'package:asaf_s_application2/core/app_export.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class Baroasis2ItemWidget extends StatelessWidget {
  Baroasis2ItemWidget(
    this.baroasis2ItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  Baroasis2ItemModel baroasis2ItemModelObj;

  @override
  Widget build(BuildContext context) {
    return CustomImageView(
      imagePath: baroasis2ItemModelObj?.image,
      height: 220.v,
      width: 412.h,
      margin: EdgeInsets.only(bottom: 32.v),
    );
  }
}
