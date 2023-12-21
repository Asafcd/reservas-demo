import '../models/reservaactiva_item_model.dart';
import 'package:asaf_s_application2/core/app_export.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class ReservaactivaItemWidget extends StatelessWidget {
  ReservaactivaItemWidget(
    this.reservaactivaItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  ReservaactivaItemModel reservaactivaItemModelObj;

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
            imagePath: reservaactivaItemModelObj?.image,
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
                  reservaactivaItemModelObj.text!,
                  style: theme.textTheme.titleMedium,
                ),
                Row(
                  children: [
                    CustomImageView(
                      imagePath: reservaactivaItemModelObj?.image1,
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
                      padding: EdgeInsets.only(left: 8.h),
                      child: Text(
                        reservaactivaItemModelObj.text1!,
                        style: theme.textTheme.bodySmall,
                      ),
                    ),
                  ],
                ),
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
                        reservaactivaItemModelObj.text2!,
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
                        reservaactivaItemModelObj.text3!,
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
                        reservaactivaItemModelObj.text4!,
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
