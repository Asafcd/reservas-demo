import '../models/baroasis6_item_model.dart';
import 'package:asaf_s_application2/core/app_export.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class Baroasis6ItemWidget extends StatelessWidget {
  Baroasis6ItemWidget(
    this.baroasis6ItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  Baroasis6ItemModel baroasis6ItemModelObj;

  @override
  Widget build(BuildContext context) {
    return CustomImageView(
      imagePath: baroasis6ItemModelObj?.image,
      height: 220.v,
      width: 412.h,
      margin: EdgeInsets.only(bottom: 32.v),
    );
  }
}
