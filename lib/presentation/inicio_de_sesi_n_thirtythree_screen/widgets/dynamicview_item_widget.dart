import '../models/dynamicview_item_model.dart';
import 'package:asaf_s_application2/core/app_export.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class DynamicviewItemWidget extends StatelessWidget {
  DynamicviewItemWidget(
    this.dynamicviewItemModelObj, {
    Key? key,
    this.onTapDynamicView,
  }) : super(
          key: key,
        );

  DynamicviewItemModel dynamicviewItemModelObj;

  VoidCallback? onTapDynamicView;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        onTapDynamicView!.call();
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
          children: [
            Expanded(
              child: Padding(
                padding: EdgeInsets.only(top: 4.v),
                child: Row(
                  children: [
                    CustomImageView(
                      imagePath: dynamicviewItemModelObj?.imageProp,
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
            Container(
              height: 24.adaptSize,
              width: 24.adaptSize,
              margin: EdgeInsets.only(
                left: 22.h,
                top: 20.v,
                bottom: 20.v,
              ),
              child: Stack(
                alignment: Alignment.center,
                children: [
                  Align(
                    alignment: Alignment.center,
                    child: Container(
                      height: 18.adaptSize,
                      width: 18.adaptSize,
                      decoration: BoxDecoration(
                        color: theme.colorScheme.primary,
                        borderRadius: BorderRadius.circular(
                          2.h,
                        ),
                      ),
                    ),
                  ),
                  CustomImageView(
                    imagePath: dynamicviewItemModelObj?.imageProp1,
                    height: 24.adaptSize,
                    width: 24.adaptSize,
                    alignment: Alignment.center,
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
