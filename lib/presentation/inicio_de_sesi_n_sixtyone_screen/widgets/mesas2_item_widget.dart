import '../models/mesas2_item_model.dart';
import 'package:asaf_s_application2/core/app_export.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class Mesas2ItemWidget extends StatelessWidget {
  Mesas2ItemWidget(
    this.mesas2ItemModelObj, {
    Key? key,
    this.onTapViewHierarchy,
  }) : super(
          key: key,
        );

  Mesas2ItemModel mesas2ItemModelObj;

  VoidCallback? onTapViewHierarchy;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        onTapViewHierarchy!.call();
      },
      child: Container(
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
                padding: EdgeInsets.only(top: 4.v),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    CustomImageView(
                      imagePath: mesas2ItemModelObj?.dynamicImage,
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
                              text: "lbl_mesa_vip".tr,
                              style: theme.textTheme.titleMedium,
                            ),
                            TextSpan(
                              text: "msg_150_00_mxn_lorem".tr,
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
              imagePath: mesas2ItemModelObj?.dynamicImage1,
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
      ),
    );
  }
}
