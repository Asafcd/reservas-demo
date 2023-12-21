import '../models/baroasisslider1_item_model.dart';
import 'package:asaf_s_application2/core/app_export.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class Baroasisslider1ItemWidget extends StatelessWidget {
  Baroasisslider1ItemWidget(
    this.baroasisslider1ItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  Baroasisslider1ItemModel baroasisslider1ItemModelObj;

  @override
  Widget build(BuildContext context) {
    return CustomImageView(
      imagePath: baroasisslider1ItemModelObj?.image,
      height: 220.v,
      width: 380.h,
      radius: BorderRadius.circular(
        28.h,
      ),
      margin: EdgeInsets.only(bottom: 32.v),
    );
  }
}
