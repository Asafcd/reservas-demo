import 'bloc/inicio_de_sesi_n_eighteen_bloc.dart';
import 'models/inicio_de_sesi_n_eighteen_model.dart';
import 'package:asaf_s_application2/core/app_export.dart';
import 'package:flutter/material.dart';

// ignore_for_file: must_be_immutable
class InicioDeSesiNEighteenDialog extends StatelessWidget {
  const InicioDeSesiNEighteenDialog({Key? key})
      : super(
          key: key,
        );

  static Widget builder(BuildContext context) {
    return BlocProvider<InicioDeSesiNEighteenBloc>(
      create: (context) => InicioDeSesiNEighteenBloc(InicioDeSesiNEighteenState(
        inicioDeSesiNEighteenModelObj: InicioDeSesiNEighteenModel(),
      ))
        ..add(InicioDeSesiNEighteenInitialEvent()),
      child: InicioDeSesiNEighteenDialog(),
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
          SizedBox(height: 15.v),
          SizedBox(
            width: 184.h,
            child: Text(
              "msg_cuenta_creada_exitosamente".tr,
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
              textAlign: TextAlign.center,
              style: theme.textTheme.headlineSmall!.copyWith(
                height: 1.33,
              ),
            ),
          ),
          SizedBox(height: 16.v),
          Align(
            alignment: Alignment.centerLeft,
            child: Container(
              width: 253.h,
              margin: EdgeInsets.only(right: 10.h),
              child: Text(
                "msg_confirme_su_direcci_n".tr,
                maxLines: 3,
                overflow: TextOverflow.ellipsis,
                style: CustomTextStyles.bodyMediumGray800.copyWith(
                  height: 1.43,
                ),
              ),
            ),
          ),
          SizedBox(height: 35.v),
          Align(
            alignment: Alignment.centerRight,
            child: Padding(
              padding: EdgeInsets.only(right: 10.h),
              child: Text(
                "lbl_aceptar".tr,
                style: theme.textTheme.titleSmall,
              ),
            ),
          ),
          SizedBox(height: 7.v),
        ],
      ),
    );
  }
}
