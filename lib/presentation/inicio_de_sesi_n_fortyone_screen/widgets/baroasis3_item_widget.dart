import '../models/baroasis3_item_model.dart';
import 'package:asaf_s_application2/core/app_export.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class Baroasis3ItemWidget extends StatelessWidget {
  Baroasis3ItemWidget(
    this.baroasis3ItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  Baroasis3ItemModel baroasis3ItemModelObj;

  @override
  Widget build(BuildContext context) {
    return CustomImageView(
      imagePath: baroasis3ItemModelObj?.image,
      height: 220.v,
      width: 412.h,
      margin: EdgeInsets.only(bottom: 32.v),
    );
  }
}
