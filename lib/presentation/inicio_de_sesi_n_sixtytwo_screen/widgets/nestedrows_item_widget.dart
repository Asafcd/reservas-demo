import '../models/nestedrows_item_model.dart';
import 'package:asaf_s_application2/core/app_export.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class NestedrowsItemWidget extends StatelessWidget {
  NestedrowsItemWidget(
    this.nestedrowsItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  NestedrowsItemModel nestedrowsItemModelObj;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 24.h,
        vertical: 13.v,
      ),
      decoration: AppDecoration.fillPrimaryContainer.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder18,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Expanded(
            child: Padding(
              padding: EdgeInsets.only(top: 3.v),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CustomImageView(
                    imagePath: nestedrowsItemModelObj?.dynamicImage,
                    height: 56.adaptSize,
                    width: 56.adaptSize,
                    margin: EdgeInsets.only(bottom: 4.v),
                  ),
                  Container(
                    width: 208.h,
                    margin: EdgeInsets.only(left: 10.h),
                    child: RichText(
                      text: TextSpan(
                        children: [
                          TextSpan(
                            text: "lbl_periqueras".tr,
                            style: theme.textTheme.titleMedium,
                          ),
                          TextSpan(
                            text: "msg_70_00_mxn_lorem".tr,
                            style: theme.textTheme.bodySmall,
                          ),
                        ],
                      ),
                      textAlign: TextAlign.left,
                    ),
                  ),
                ],
              ),
            ),
          ),
          CustomImageView(
            imagePath: ImageConstant.imgUpload,
            height: 48.adaptSize,
            width: 48.adaptSize,
            margin: EdgeInsets.only(
              left: 10.h,
              top: 8.v,
              bottom: 8.v,
            ),
          ),
        ],
      ),
    );
  }
}
