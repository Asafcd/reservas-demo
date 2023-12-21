import 'bloc/inicio_de_sesi_n_fortyfive_bloc.dart';
import 'models/inicio_de_sesi_n_fortyfive_model.dart';
import 'package:asaf_s_application2/core/app_export.dart';
import 'package:asaf_s_application2/widgets/custom_outlined_button.dart';
import 'package:flutter/material.dart';

// ignore_for_file: must_be_immutable
class InicioDeSesiNFortyfiveDialog extends StatelessWidget {
  const InicioDeSesiNFortyfiveDialog({Key? key})
      : super(
          key: key,
        );

  static Widget builder(BuildContext context) {
    return BlocProvider<InicioDeSesiNFortyfiveBloc>(
      create: (context) =>
          InicioDeSesiNFortyfiveBloc(InicioDeSesiNFortyfiveState(
        inicioDeSesiNFortyfiveModelObj: InicioDeSesiNFortyfiveModel(),
      ))
            ..add(InicioDeSesiNFortyfiveInitialEvent()),
      child: InicioDeSesiNFortyfiveDialog(),
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
          SizedBox(height: 23.v),
          _buildCompartirViaSms(context),
          SizedBox(height: 16.v),
          CustomOutlinedButton(
            text: "msg_compartir_v_a_instagram".tr,
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

  /// Section Widget
  Widget _buildCompartirViaSms(BuildContext context) {
    return Column(
      children: [
        Align(
          alignment: Alignment.centerLeft,
          child: Text(
            "lbl_compartir_qr".tr,
            style: theme.textTheme.headlineSmall,
          ),
        ),
        SizedBox(height: 12.v),
        CustomOutlinedButton(
          text: "msg_compartir_v_a_sms".tr,
          leftIcon: Container(
            margin: EdgeInsets.only(right: 8.h),
            child: CustomImageView(
              imagePath: ImageConstant.imgSms,
              height: 18.adaptSize,
              width: 18.adaptSize,
            ),
          ),
        ),
        SizedBox(height: 16.v),
        CustomOutlinedButton(
          text: "msg_compartir_v_a_whatsapp".tr,
          leftIcon: Container(
            margin: EdgeInsets.only(right: 8.h),
            child: CustomImageView(
              imagePath: ImageConstant.imgWhatsapp,
              height: 18.adaptSize,
              width: 18.adaptSize,
            ),
          ),
        ),
        SizedBox(height: 16.v),
        CustomOutlinedButton(
          text: "msg_compartir_v_a_messenger".tr,
          leftIcon: Container(
            margin: EdgeInsets.only(right: 8.h),
            child: CustomImageView(
              imagePath: ImageConstant.imgMessenger,
              height: 18.adaptSize,
              width: 18.adaptSize,
            ),
          ),
        ),
        SizedBox(height: 16.v),
        CustomOutlinedButton(
          text: "msg_compartir_v_a_gmail".tr,
          leftIcon: Container(
            margin: EdgeInsets.only(right: 9.h),
            child: CustomImageView(
              imagePath: ImageConstant.imgClose,
              height: 15.adaptSize,
              width: 15.adaptSize,
            ),
          ),
        ),
        SizedBox(height: 16.v),
        CustomOutlinedButton(
          text: "msg_compartir_v_a_telegram".tr,
          leftIcon: Container(
            margin: EdgeInsets.only(right: 8.h),
            child: CustomImageView(
              imagePath: ImageConstant.imgTelegram,
              height: 18.adaptSize,
              width: 18.adaptSize,
            ),
          ),
        ),
      ],
    );
  }
}
