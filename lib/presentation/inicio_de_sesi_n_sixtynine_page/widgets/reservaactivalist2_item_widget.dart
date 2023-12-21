import '../models/reservaactivalist2_item_model.dart';
import 'package:asaf_s_application2/core/app_export.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class Reservaactivalist2ItemWidget extends StatelessWidget {
  Reservaactivalist2ItemWidget(
    this.reservaactivalist2ItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  Reservaactivalist2ItemModel reservaactivalist2ItemModelObj;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 23.h,
        vertical: 14.v,
      ),
      decoration: AppDecoration.outlineRed.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder18,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          CustomImageView(
            imagePath: reservaactivalist2ItemModelObj?.image,
            height: 80.v,
            width: 88.h,
            margin: EdgeInsets.symmetric(vertical: 29.v),
          ),
          Padding(
            padding: EdgeInsets.only(
              top: 2.v,
              right: 3.h,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  reservaactivalist2ItemModelObj.text!,
                  style: theme.textTheme.titleMedium,
                ),
                Row(
                  children: [
                    CustomImageView(
                      imagePath: ImageConstant.imgEditCalendar,
                      height: 15.adaptSize,
                      width: 15.adaptSize,
                      margin: EdgeInsets.symmetric(vertical: 1.v),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 8.h),
                      child: Text(
                        reservaactivalist2ItemModelObj.text1!,
                        style: theme.textTheme.bodySmall,
                      ),
                    ),
                  ],
                ),
                Row(
                  children: [
                    CustomImageView(
                      imagePath: ImageConstant.imgClock,
                      height: 14.adaptSize,
                      width: 14.adaptSize,
                      margin: EdgeInsets.only(
                        top: 2.v,
                        bottom: 1.v,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 8.h),
                      child: Text(
                        reservaactivalist2ItemModelObj.text2!,
                        style: theme.textTheme.bodySmall,
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 1.v),
                Row(
                  children: [
                    CustomImageView(
                      imagePath: ImageConstant.imgTimer,
                      height: 15.adaptSize,
                      width: 15.adaptSize,
                      margin: EdgeInsets.symmetric(vertical: 1.v),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 8.h),
                      child: Text(
                        reservaactivalist2ItemModelObj.text3!,
                        style: CustomTextStyles.bodySmallRed900,
                      ),
                    ),
                  ],
                ),
                Row(
                  children: [
                    CustomImageView(
                      imagePath: ImageConstant.imgMap,
                      height: 14.adaptSize,
                      width: 14.adaptSize,
                      margin: EdgeInsets.only(
                        top: 2.v,
                        bottom: 1.v,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 8.h),
                      child: Text(
                        reservaactivalist2ItemModelObj.text4!,
                        style: theme.textTheme.bodySmall,
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 2.v),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    CustomImageView(
                      imagePath: reservaactivalist2ItemModelObj?.image1,
                      height: 15.adaptSize,
                      width: 15.adaptSize,
                      margin: EdgeInsets.only(bottom: 25.v),
                    ),
                    Container(
                      width: 171.h,
                      margin: EdgeInsets.only(left: 8.h),
                      child: Text(
                        reservaactivalist2ItemModelObj.text5!,
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                        style: CustomTextStyles.bodySmall_2.copyWith(
                          height: 1.67,
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
