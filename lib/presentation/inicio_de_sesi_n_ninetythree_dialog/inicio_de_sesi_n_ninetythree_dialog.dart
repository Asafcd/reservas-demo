import 'bloc/inicio_de_sesi_n_ninetythree_bloc.dart';
import 'models/inicio_de_sesi_n_ninetythree_model.dart';
import 'package:asaf_s_application2/core/app_export.dart';
import 'package:flutter/material.dart';

// ignore_for_file: must_be_immutable
class InicioDeSesiNNinetythreeDialog extends StatelessWidget {
  const InicioDeSesiNNinetythreeDialog({Key? key})
      : super(
          key: key,
        );

  static Widget builder(BuildContext context) {
    return BlocProvider<InicioDeSesiNNinetythreeBloc>(
      create: (context) =>
          InicioDeSesiNNinetythreeBloc(InicioDeSesiNNinetythreeState(
        inicioDeSesiNNinetythreeModelObj: InicioDeSesiNNinetythreeModel(),
      ))
            ..add(InicioDeSesiNNinetythreeInitialEvent()),
      child: InicioDeSesiNNinetythreeDialog(),
    );
  }

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return Container(
      width: 312.h,
      padding: EdgeInsets.all(24.h),
      decoration: AppDecoration.fillPrimaryContainer.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder28,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgIconPrimary,
            height: 32.adaptSize,
            width: 32.adaptSize,
          ),
          SizedBox(height: 16.v),
          Text(
            "msg_comparta_y_gane".tr,
            style: theme.textTheme.headlineSmall,
          ),
          SizedBox(height: 11.v),
          Align(
            alignment: Alignment.centerLeft,
            child: Container(
              width: 236.h,
              margin: EdgeInsets.only(right: 27.h),
              child: Text(
                "msg_comparta_su_experiencia".tr,
                maxLines: 4,
                overflow: TextOverflow.ellipsis,
                style: CustomTextStyles.bodyMediumGray800.copyWith(
                  height: 1.43,
                ),
              ),
            ),
          ),
          SizedBox(height: 34.v),
          Align(
            alignment: Alignment.centerRight,
            child: Padding(
              padding: EdgeInsets.only(right: 12.h),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text(
                    "lbl_no_gracias".tr,
                    style: theme.textTheme.titleSmall,
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 32.h),
                    child: Text(
                      "lbl_aceptar".tr,
                      style: theme.textTheme.titleSmall,
                    ),
                  ),
                ],
              ),
            ),
          ),
          SizedBox(height: 7.v),
        ],
      ),
    );
  }
}
