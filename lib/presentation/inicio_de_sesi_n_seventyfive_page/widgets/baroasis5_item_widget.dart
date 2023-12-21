import '../models/baroasis5_item_model.dart';
import 'package:asaf_s_application2/core/app_export.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class Baroasis5ItemWidget extends StatelessWidget {
  Baroasis5ItemWidget(
    this.baroasis5ItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  Baroasis5ItemModel baroasis5ItemModelObj;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 152.h,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomImageView(
            imagePath: baroasis5ItemModelObj?.dynamicImage,
            height: 138.v,
            width: 152.h,
            radius: BorderRadius.circular(
              28.h,
            ),
          ),
          SizedBox(height: 7.v),
          Text(
            baroasis5ItemModelObj.dynamicText!,
            style: theme.textTheme.titleMedium,
          ),
          SizedBox(height: 4.v),
          Row(
            children: [
              CustomImageView(
                imagePath: baroasis5ItemModelObj?.dynamicImage1,
                height: 14.adaptSize,
                width: 14.adaptSize,
                radius: BorderRadius.circular(
                  1.h,
                ),
                margin: EdgeInsets.only(
                  top: 1.v,
                  bottom: 2.v,
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 4.h),
                child: Text(
                  baroasis5ItemModelObj.dynamicText1!,
                  style: theme.textTheme.bodySmall,
                ),
              ),
            ],
          ),
          SizedBox(height: 4.v),
          Row(
            children: [
              CustomImageView(
                imagePath: ImageConstant.imgEditCalendar,
                height: 15.adaptSize,
                width: 15.adaptSize,
                margin: EdgeInsets.only(bottom: 2.v),
              ),
              Padding(
                padding: EdgeInsets.only(left: 4.h),
                child: Text(
                  baroasis5ItemModelObj.dynamicText2!,
                  style: theme.textTheme.bodySmall,
                ),
              ),
            ],
          ),
          SizedBox(height: 4.v),
          Row(
            children: [
              CustomImageView(
                imagePath: ImageConstant.imgClock,
                height: 14.adaptSize,
                width: 14.adaptSize,
                margin: EdgeInsets.only(bottom: 3.v),
              ),
              Padding(
                padding: EdgeInsets.only(left: 4.h),
                child: Text(
                  baroasis5ItemModelObj.dynamicText3!,
                  style: theme.textTheme.bodySmall,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
