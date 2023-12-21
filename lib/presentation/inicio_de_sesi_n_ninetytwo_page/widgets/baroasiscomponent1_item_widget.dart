import '../models/baroasiscomponent1_item_model.dart';
import 'package:asaf_s_application2/core/app_export.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class Baroasiscomponent1ItemWidget extends StatelessWidget {
  Baroasiscomponent1ItemWidget(
    this.baroasiscomponent1ItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  Baroasiscomponent1ItemModel baroasiscomponent1ItemModelObj;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 152.h,
      child: Column(
        children: [
          CustomImageView(
            imagePath: baroasiscomponent1ItemModelObj?.userImage,
            height: 138.v,
            width: 152.h,
            radius: BorderRadius.circular(
              28.h,
            ),
          ),
          SizedBox(height: 7.v),
          Align(
            alignment: Alignment.centerLeft,
            child: Text(
              baroasiscomponent1ItemModelObj.text!,
              style: theme.textTheme.titleMedium,
            ),
          ),
          SizedBox(height: 4.v),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CustomImageView(
                imagePath: baroasiscomponent1ItemModelObj?.reviewImage,
                height: 14.adaptSize,
                width: 14.adaptSize,
                radius: BorderRadius.circular(
                  1.h,
                ),
                margin: EdgeInsets.symmetric(vertical: 2.v),
              ),
              Padding(
                padding: EdgeInsets.only(left: 4.h),
                child: Text(
                  baroasiscomponent1ItemModelObj.reviewText!,
                  style: theme.textTheme.bodySmall,
                ),
              ),
            ],
          ),
          SizedBox(height: 4.v),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CustomImageView(
                imagePath: ImageConstant.imgEditCalendar,
                height: 15.adaptSize,
                width: 15.adaptSize,
                margin: EdgeInsets.symmetric(vertical: 1.v),
              ),
              Padding(
                padding: EdgeInsets.only(left: 4.h),
                child: Text(
                  baroasiscomponent1ItemModelObj.timingText!,
                  style: theme.textTheme.bodySmall,
                ),
              ),
            ],
          ),
          SizedBox(height: 4.v),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CustomImageView(
                imagePath: ImageConstant.imgClock,
                height: 14.adaptSize,
                width: 14.adaptSize,
                margin: EdgeInsets.symmetric(vertical: 2.v),
              ),
              Padding(
                padding: EdgeInsets.only(left: 4.h),
                child: Text(
                  baroasiscomponent1ItemModelObj.clockText!,
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
