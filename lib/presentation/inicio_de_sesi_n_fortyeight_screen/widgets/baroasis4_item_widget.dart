import '../models/baroasis4_item_model.dart';
import 'package:asaf_s_application2/core/app_export.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class Baroasis4ItemWidget extends StatelessWidget {
  Baroasis4ItemWidget(
    this.baroasis4ItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  Baroasis4ItemModel baroasis4ItemModelObj;

  @override
  Widget build(BuildContext context) {
    return CustomImageView(
      imagePath: baroasis4ItemModelObj?.image,
      height: 220.v,
      width: 412.h,
      margin: EdgeInsets.only(bottom: 32.v),
    );
  }
}
