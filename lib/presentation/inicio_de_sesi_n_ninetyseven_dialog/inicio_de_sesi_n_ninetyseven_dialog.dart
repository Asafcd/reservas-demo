import 'bloc/inicio_de_sesi_n_ninetyseven_bloc.dart';
import 'models/inicio_de_sesi_n_ninetyseven_model.dart';
import 'package:asaf_s_application2/core/app_export.dart';
import 'package:asaf_s_application2/widgets/custom_outlined_button.dart';
import 'package:flutter/material.dart';

// ignore_for_file: must_be_immutable
class InicioDeSesiNNinetysevenDialog extends StatelessWidget {
  const InicioDeSesiNNinetysevenDialog({Key? key})
      : super(
          key: key,
        );

  static Widget builder(BuildContext context) {
    return BlocProvider<InicioDeSesiNNinetysevenBloc>(
      create: (context) =>
          InicioDeSesiNNinetysevenBloc(InicioDeSesiNNinetysevenState(
        inicioDeSesiNNinetysevenModelObj: InicioDeSesiNNinetysevenModel(),
      ))
            ..add(InicioDeSesiNNinetysevenInitialEvent()),
      child: InicioDeSesiNNinetysevenDialog(),
    );
  }

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return Container(
      width: 312.h,
      padding: EdgeInsets.symmetric(horizontal: 24.h),
      decoration: AppDecoration.fillPrimaryContainer.copyWith(
        borderRadius: BorderRadiusStyle.customBorderTL28,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          SizedBox(height: 21.v),
          Align(
            alignment: Alignment.centerLeft,
            child: SizedBox(
              width: 151.h,
              child: Text(
                "msg_publicaci_n_aprobada".tr,
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
                style: theme.textTheme.headlineSmall!.copyWith(
                  height: 1.33,
                ),
              ),
            ),
          ),
          SizedBox(height: 10.v),
          CustomOutlinedButton(
            text: "msg_compartir_por_facebook".tr,
            leftIcon: Container(
              margin: EdgeInsets.only(right: 8.h),
              child: CustomImageView(
                imagePath: ImageConstant.imgIconPrimarycontainer,
                height: 18.adaptSize,
                width: 18.adaptSize,
              ),
            ),
          ),
          SizedBox(height: 16.v),
          CustomOutlinedButton(
            text: "msg_compartir_por_instagram".tr,
            leftIcon: Container(
              margin: EdgeInsets.only(right: 8.h),
              child: CustomImageView(
                imagePath: ImageConstant.imgInstagram,
                height: 18.adaptSize,
                width: 18.adaptSize,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
