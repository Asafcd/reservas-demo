import '../models/foodinfolist_item_model.dart';
import 'package:asaf_s_application2/core/app_export.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class FoodinfolistItemWidget extends StatelessWidget {
  FoodinfolistItemWidget(
    this.foodinfolistItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  FoodinfolistItemModel foodinfolistItemModelObj;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 15.h,
        vertical: 14.v,
      ),
      decoration: AppDecoration.fillPrimaryContainer.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder18,
      ),
      child: Row(
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgThumbsUp,
            height: 48.adaptSize,
            width: 48.adaptSize,
            margin: EdgeInsets.symmetric(vertical: 3.v),
          ),
          Padding(
            padding: EdgeInsets.only(
              left: 20.h,
              top: 2.v,
            ),
            child: Column(
              children: [
                Text(
                  foodinfolistItemModelObj.text!,
                  style: CustomTextStyles.titleSmallOnPrimaryMedium,
                ),
                SizedBox(
                  width: 170.h,
                  child: Text(
                    foodinfolistItemModelObj.name!,
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                    style: CustomTextStyles.labelMediumOnPrimary,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
