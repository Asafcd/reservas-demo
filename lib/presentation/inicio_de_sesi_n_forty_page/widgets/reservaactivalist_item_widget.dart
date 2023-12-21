import '../models/reservaactivalist_item_model.dart';
import 'package:asaf_s_application2/core/app_export.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class ReservaactivalistItemWidget extends StatelessWidget {
  ReservaactivalistItemWidget(
    this.reservaactivalistItemModelObj, {
    Key? key,
    this.onTapReservaActiva,
  }) : super(
          key: key,
        );

  ReservaactivalistItemModel reservaactivalistItemModelObj;

  VoidCallback? onTapReservaActiva;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        onTapReservaActiva!.call();
      },
      child: Container(
        padding: EdgeInsets.symmetric(
          horizontal: 23.h,
          vertical: 15.v,
        ),
        decoration: AppDecoration.outlinePrimary1.copyWith(
          borderRadius: BorderRadiusStyle.roundedBorder18,
        ),
        child: Row(
          children: [
            CustomImageView(
              imagePath: reservaactivalistItemModelObj?.image,
              height: 80.v,
              width: 88.h,
              radius: BorderRadius.circular(
                18.h,
              ),
              margin: EdgeInsets.symmetric(vertical: 4.v),
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
                    reservaactivalistItemModelObj.text!,
                    style: CustomTextStyles.titleMediumOnPrimary,
                  ),
                  SizedBox(height: 1.v),
                  Row(
                    children: [
                      CustomImageView(
                        imagePath: reservaactivalistItemModelObj?.image1,
                        height: 15.adaptSize,
                        width: 15.adaptSize,
                        margin: EdgeInsets.symmetric(vertical: 1.v),
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 8.h),
                        child: Text(
                          reservaactivalistItemModelObj.text1!,
                          style: CustomTextStyles.bodySmallOnPrimary_1,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 5.v),
                  Row(
                    children: [
                      CustomImageView(
                        imagePath: reservaactivalistItemModelObj?.image2,
                        height: 14.adaptSize,
                        width: 14.adaptSize,
                        margin: EdgeInsets.only(bottom: 3.v),
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 8.h),
                        child: Text(
                          reservaactivalistItemModelObj.text2!,
                          style: CustomTextStyles.bodySmallOnPrimary_1,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 2.v),
                  Row(
                    children: [
                      CustomImageView(
                        imagePath: reservaactivalistItemModelObj?.image3,
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
                          reservaactivalistItemModelObj.text3!,
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
