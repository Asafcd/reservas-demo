import '../models/foodinformationlist2_item_model.dart';
import 'package:asaf_s_application2/core/app_export.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class Foodinformationlist2ItemWidget extends StatelessWidget {
  Foodinformationlist2ItemWidget(
    this.foodinformationlist2ItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  Foodinformationlist2ItemModel foodinformationlist2ItemModelObj;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(15.h),
      decoration: AppDecoration.fillPrimaryContainer.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder18,
      ),
      child: Row(
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgThumbsUp,
            height: 48.adaptSize,
            width: 48.adaptSize,
            margin: EdgeInsets.symmetric(vertical: 9.v),
          ),
          Padding(
            padding: EdgeInsets.only(
              left: 20.h,
              top: 1.v,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  foodinformationlist2ItemModelObj.foodName!,
                  style: CustomTextStyles.titleSmallOnPrimaryMedium,
                ),
                Container(
                  width: 75.h,
                  margin: EdgeInsets.only(left: 5.h),
                  child: Text(
                    foodinformationlist2ItemModelObj.foodDescription!,
                    maxLines: 3,
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
