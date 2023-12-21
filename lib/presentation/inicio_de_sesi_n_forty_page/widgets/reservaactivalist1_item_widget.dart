import '../models/reservaactivalist1_item_model.dart';
import 'package:asaf_s_application2/core/app_export.dart';
import 'package:asaf_s_application2/widgets/custom_rating_bar.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class Reservaactivalist1ItemWidget extends StatelessWidget {
  Reservaactivalist1ItemWidget(
    this.reservaactivalist1ItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  Reservaactivalist1ItemModel reservaactivalist1ItemModelObj;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 24.h,
        vertical: 16.v,
      ),
      decoration: AppDecoration.fillPrimaryContainer.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder18,
      ),
      child: Row(
        children: [
          CustomImageView(
            imagePath: reservaactivalist1ItemModelObj?.image,
            height: 72.adaptSize,
            width: 72.adaptSize,
            margin: EdgeInsets.symmetric(vertical: 11.v),
          ),
          Padding(
            padding: EdgeInsets.only(
              left: 32.h,
              top: 1.v,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  reservaactivalist1ItemModelObj.text!,
                  style: theme.textTheme.titleMedium,
                ),
                SizedBox(
                  width: 191.h,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(
                        padding: EdgeInsets.only(
                          top: 2.v,
                          bottom: 1.v,
                        ),
                        child: CustomRatingBar(
                          ignoreGestures: true,
                          initialRating: 5,
                        ),
                      ),
                      Text(
                        reservaactivalist1ItemModelObj.text1!,
                        style: CustomTextStyles.bodySmall_1,
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 1.v),
                Row(
                  children: [
                    CustomImageView(
                      imagePath: ImageConstant.imgEditCalendar,
                      height: 15.adaptSize,
                      width: 15.adaptSize,
                      margin: EdgeInsets.only(bottom: 2.v),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 8.h),
                      child: Text(
                        reservaactivalist1ItemModelObj.text2!,
                        style: CustomTextStyles.bodySmall_1,
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
                      margin: EdgeInsets.only(bottom: 3.v),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 8.h),
                      child: Text(
                        reservaactivalist1ItemModelObj.text3!,
                        style: CustomTextStyles.bodySmall_1,
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
                        reservaactivalist1ItemModelObj.text4!,
                        style: CustomTextStyles.bodySmall_1,
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
