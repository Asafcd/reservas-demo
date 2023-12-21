import '../models/segmentedbutton_item_model.dart';
import 'package:asaf_s_application2/core/app_export.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class SegmentedbuttonItemWidget extends StatelessWidget {
  SegmentedbuttonItemWidget(
    this.segmentedbuttonItemModelObj, {
    Key? key,
    this.onSelectedChipView,
  }) : super(
          key: key,
        );

  SegmentedbuttonItemModel segmentedbuttonItemModelObj;

  Function(bool)? onSelectedChipView;

  @override
  Widget build(BuildContext context) {
    return Theme(
      data: ThemeData(
        canvasColor: Colors.transparent,
      ),
      child: RawChip(
        padding: EdgeInsets.symmetric(
          horizontal: 30.h,
          vertical: 9.v,
        ),
        showCheckmark: false,
        labelPadding: EdgeInsets.zero,
        label: Text(
          segmentedbuttonItemModelObj.container!,
          style: TextStyle(
            color: theme.colorScheme.onPrimary,
            fontSize: 14.fSize,
            fontFamily: 'Poppins',
            fontWeight: FontWeight.w500,
          ),
        ),
        selected: (segmentedbuttonItemModelObj.isSelected ?? false),
        backgroundColor: Colors.transparent,
        selectedColor: Colors.transparent,
        shape: (segmentedbuttonItemModelObj.isSelected ?? false)
            ? RoundedRectangleBorder(
                side: BorderSide(
                  color: appTheme.gray600,
                  width: 1.h,
                ),
                borderRadius: BorderRadius.horizontal(
                  right: Radius.circular(100.h),
                ),
              )
            : RoundedRectangleBorder(
                side: BorderSide(
                  color: appTheme.gray600,
                  width: 1.h,
                ),
              ),
        onSelected: (value) {
          onSelectedChipView?.call(value);
        },
      ),
    );
  }
}
