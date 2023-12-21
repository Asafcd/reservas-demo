import '../models/reservaactivasection_item_model.dart';
import 'package:asaf_s_application2/core/app_export.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class ReservaactivasectionItemWidget extends StatelessWidget {
  ReservaactivasectionItemWidget(
    this.reservaactivasectionItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  ReservaactivasectionItemModel reservaactivasectionItemModelObj;

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.centerLeft,
      child: Container(
        padding: EdgeInsets.symmetric(
          horizontal: 23.h,
          vertical: 14.v,
        ),
        decoration: AppDecoration.outlinePrimary1.copyWith(
          borderRadius: BorderRadiusStyle.roundedBorder18,
        ),
        child: Row(
          children: [
            CustomImageView(
              imagePath: reservaactivasectionItemModelObj?.userImage,
              height: 80.v,
              width: 88.h,
              radius: BorderRadius.circular(
                18.h,
              ),
              margin: EdgeInsets.symmetric(vertical: 5.v),
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
                    reservaactivasectionItemModelObj.barName!,
                    style: CustomTextStyles.titleMediumOnPrimary,
                  ),
                  SizedBox(height: 3.v),
                  Row(
                    children: [
                      CustomImageView(
                        imagePath: reservaactivasectionItemModelObj?.eventImage,
                        height: 15.adaptSize,
                        width: 15.adaptSize,
                        margin: EdgeInsets.symmetric(vertical: 1.v),
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 8.h),
                        child: Text(
                          reservaactivasectionItemModelObj.eventDate!,
                          style: CustomTextStyles.bodySmallOnPrimary_1,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 5.v),
                  Row(
                    children: [
                      CustomImageView(
                        imagePath: reservaactivasectionItemModelObj?.eventTime,
                        height: 14.adaptSize,
                        width: 14.adaptSize,
                        margin: EdgeInsets.only(bottom: 3.v),
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 8.h),
                        child: Text(
                          reservaactivasectionItemModelObj.eventTime1!,
                          style: CustomTextStyles.bodySmallOnPrimary_1,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 3.v),
                  Row(
                    children: [
                      CustomImageView(
                        imagePath:
                            reservaactivasectionItemModelObj?.pickupImage,
                        height: 14.adaptSize,
                        width: 14.adaptSize,
                        margin: EdgeInsets.only(
                          top: 1.v,
                          bottom: 2.v,
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 8.h),
                        child: Text(
                          reservaactivasectionItemModelObj.pickupText!,
                          style: CustomTextStyles.bodySmallOnPrimary_1,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
