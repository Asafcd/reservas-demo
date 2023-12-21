import '../models/activereservations_item_model.dart';
import 'package:asaf_s_application2/core/app_export.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class ActivereservationsItemWidget extends StatelessWidget {
  ActivereservationsItemWidget(
    this.activereservationsItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  ActivereservationsItemModel activereservationsItemModelObj;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 23.h,
        vertical: 13.v,
      ),
      decoration: AppDecoration.outlineRed.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder18,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CustomImageView(
            imagePath: activereservationsItemModelObj?.rowImage,
            height: 80.v,
            width: 88.h,
            margin: EdgeInsets.symmetric(vertical: 30.v),
          ),
          Expanded(
            child: Padding(
              padding: EdgeInsets.only(
                left: 32.h,
                top: 3.v,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    activereservationsItemModelObj.text1!,
                    style: theme.textTheme.titleMedium,
                  ),
                  Padding(
                    padding: EdgeInsets.only(right: 80.h),
                    child: Row(
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
                            activereservationsItemModelObj.text2!,
                            style: theme.textTheme.bodySmall,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(right: 65.h),
                    child: Row(
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
                            activereservationsItemModelObj.text3!,
                            style: theme.textTheme.bodySmall,
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 1.v),
                  Padding(
                    padding: EdgeInsets.only(right: 12.h),
                    child: Row(
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
                            activereservationsItemModelObj.text4!,
                            style: CustomTextStyles.bodySmallRed900,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(right: 47.h),
                    child: Row(
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
                            activereservationsItemModelObj.text5!,
                            style: theme.textTheme.bodySmall,
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 2.v),
                  Padding(
                    padding: EdgeInsets.only(right: 12.h),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        CustomImageView(
                          imagePath: ImageConstant.imgPercent,
                          height: 15.adaptSize,
                          width: 15.adaptSize,
                          margin: EdgeInsets.only(bottom: 25.v),
                        ),
                        Expanded(
                          child: Container(
                            width: 171.h,
                            margin: EdgeInsets.only(left: 8.h),
                            child: Text(
                              activereservationsItemModelObj.text6!,
                              maxLines: 2,
                              overflow: TextOverflow.ellipsis,
                              style: CustomTextStyles.bodySmall_2.copyWith(
                                height: 1.67,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
