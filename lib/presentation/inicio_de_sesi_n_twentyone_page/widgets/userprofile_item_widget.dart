import '../models/userprofile_item_model.dart';
import 'package:asaf_s_application2/core/app_export.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class UserprofileItemWidget extends StatelessWidget {
  UserprofileItemWidget(
    this.userprofileItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  UserprofileItemModel userprofileItemModelObj;

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.center,
      child: SizedBox(
        height: 252.v,
        width: 380.h,
        child: Stack(
          alignment: Alignment.bottomLeft,
          children: [
            CustomImageView(
              imagePath: ImageConstant.imgRectangle12405,
              height: 220.v,
              width: 380.h,
              radius: BorderRadius.circular(
                28.h,
              ),
              alignment: Alignment.topCenter,
            ),
            Align(
              alignment: Alignment.bottomLeft,
              child: Padding(
                padding: EdgeInsets.only(
                  left: 16.h,
                  bottom: 46.v,
                ),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "lbl_bar_oasis".tr,
                      style: CustomTextStyles.titleMediumPrimaryContainer,
                    ),
                    SizedBox(height: 4.v),
                    Row(
                      children: [
                        CustomImageView(
                          imagePath: ImageConstant.imgStar24,
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
                            "msg_4_8_1_200_reviews".tr,
                            style: CustomTextStyles.bodySmallPrimaryContainer,
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
                            "msg_viernes_domingo".tr,
                            style: CustomTextStyles.bodySmallPrimaryContainer,
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
                            "msg_4_00_p_m_3_00".tr,
                            style: CustomTextStyles.bodySmallPrimaryContainer,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
