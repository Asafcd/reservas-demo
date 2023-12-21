import 'package:asaf_s_application2/core/app_export.dart';
import 'package:asaf_s_application2/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class AppbarTitleEdittext extends StatelessWidget {
  AppbarTitleEdittext({
    Key? key,
    this.hintText,
    this.controller,
    this.margin,
  }) : super(
          key: key,
        );

  String? hintText;

  TextEditingController? controller;

  EdgeInsetsGeometry? margin;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: margin ?? EdgeInsets.zero,
      child: CustomTextFormField(
        width: 412.h,
        controller: controller,
        hintText: "lbl_product".tr,
        hintStyle: theme.textTheme.titleLarge!,
        prefix: Container(
          margin: EdgeInsets.fromLTRB(16.h, 20.v, 30.h, 20.v),
          child: CustomImageView(
            imagePath: ImageConstant.imgMegaphone,
            height: 24.adaptSize,
            width: 24.adaptSize,
          ),
        ),
        prefixConstraints: BoxConstraints(
          maxHeight: 64.v,
        ),
        suffix: Container(
          margin: EdgeInsets.fromLTRB(30.h, 20.v, 16.h, 20.v),
          child: CustomImageView(
            imagePath: ImageConstant.imgLockGray800,
            height: 24.adaptSize,
            width: 24.adaptSize,
          ),
        ),
        suffixConstraints: BoxConstraints(
          maxHeight: 64.v,
        ),
      ),
    );
  }
}
