import '../models/baroasiscomponent_item_model.dart';
import 'package:asaf_s_application2/core/app_export.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class BaroasiscomponentItemWidget extends StatelessWidget {
  BaroasiscomponentItemWidget(
    this.baroasiscomponentItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  BaroasiscomponentItemModel baroasiscomponentItemModelObj;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 152.h,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomImageView(
            imagePath: baroasiscomponentItemModelObj?.userImage,
            height: 138.v,
            width: 152.h,
            radius: BorderRadius.circular(
              28.h,
            ),
          ),
          SizedBox(height: 7.v),
          Text(
            baroasiscomponentItemModelObj.text!,
            style: theme.textTheme.titleMedium,
          ),
          SizedBox(height: 4.v),
          Row(
            children: [
              CustomImageView(
                imagePath: baroasiscomponentItemModelObj?.reviewImage,
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
                  baroasiscomponentItemModelObj.reviewText!,
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
                  baroasiscomponentItemModelObj.timingText!,
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
                  baroasiscomponentItemModelObj.clockText!,
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
