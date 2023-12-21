import 'bloc/inicio_de_sesi_n_thirtyseven_bloc.dart';
import 'models/inicio_de_sesi_n_thirtyseven_model.dart';
import 'package:asaf_s_application2/core/app_export.dart';
import 'package:asaf_s_application2/widgets/app_bar/appbar_leading_image.dart';
import 'package:asaf_s_application2/widgets/app_bar/appbar_title.dart';
import 'package:asaf_s_application2/widgets/app_bar/appbar_trailing_image.dart';
import 'package:asaf_s_application2/widgets/app_bar/custom_app_bar.dart';
import 'package:asaf_s_application2/widgets/custom_floating_text_field.dart';
import 'package:flutter/material.dart';

class InicioDeSesiNThirtysevenScreen extends StatelessWidget {
  const InicioDeSesiNThirtysevenScreen({Key? key})
      : super(
          key: key,
        );

  static Widget builder(BuildContext context) {
    return BlocProvider<InicioDeSesiNThirtysevenBloc>(
      create: (context) =>
          InicioDeSesiNThirtysevenBloc(InicioDeSesiNThirtysevenState(
        inicioDeSesiNThirtysevenModelObj: InicioDeSesiNThirtysevenModel(),
      ))
            ..add(InicioDeSesiNThirtysevenInitialEvent()),
      child: InicioDeSesiNThirtysevenScreen(),
    );
  }

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return BlocBuilder<InicioDeSesiNThirtysevenBloc,
        InicioDeSesiNThirtysevenState>(
      builder: (context, state) {
        return SafeArea(
          child: Scaffold(
            backgroundColor: theme.colorScheme.primaryContainer,
            resizeToAvoidBottomInset: false,
            body: Container(
              width: double.maxFinite,
              padding: EdgeInsets.symmetric(horizontal: 8.h),
              child: Container(
                width: 412.h,
                decoration: AppDecoration.outlineGrayF.copyWith(
                  borderRadius: BorderRadiusStyle.roundedBorder18,
                ),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    _buildAppBar(context),
                    SizedBox(height: 14.v),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 16.h),
                      child: Column(
                        children: [
                          Align(
                            alignment: Alignment.centerLeft,
                            child: Text(
                              "msg_datos_de_los_invitados".tr,
                              style: theme.textTheme.bodyLarge,
                            ),
                          ),
                          SizedBox(height: 16.v),
                          _buildInvitadoCounterCarolinaInurreta(context),
                          SizedBox(height: 14.v),
                          _buildInvitadoCounterJosInurretaTamai(context),
                          SizedBox(height: 14.v),
                          _buildInvitadoCounterAnaBelNInurreta(context),
                          SizedBox(height: 14.v),
                          _buildInvitadoCounterJenniferHernNdez(context),
                          SizedBox(height: 14.v),
                          _buildInvitadoCounterDavidInurretaGMez(context),
                          SizedBox(height: 24.v),
                          _buildActions(context),
                        ],
                      ),
                    ),
                    Spacer(),
                    _buildComponent(context),
                  ],
                ),
              ),
            ),
          ),
        );
      },
    );
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
      leadingWidth: 48.h,
      leading: AppbarLeadingImage(
        imagePath: ImageConstant.imgMegaphone,
        margin: EdgeInsets.only(
          left: 24.h,
          top: 20.v,
          bottom: 20.v,
        ),
      ),
      centerTitle: true,
      title: AppbarTitle(
        text: "lbl_product".tr,
      ),
      actions: [
        AppbarTrailingImage(
          imagePath: ImageConstant.imgLockGray800,
          margin: EdgeInsets.symmetric(
            horizontal: 24.h,
            vertical: 20.v,
          ),
        ),
      ],
      styleType: Style.bgFill,
    );
  }

  /// Section Widget
  Widget _buildInvitadoCounterCarolinaInurreta(BuildContext context) {
    return BlocSelector<InicioDeSesiNThirtysevenBloc,
        InicioDeSesiNThirtysevenState, TextEditingController?>(
      selector: (state) => state.invitadoCounterCarolinaInurretaController,
      builder: (context, invitadoCounterCarolinaInurretaController) {
        return CustomFloatingTextField(
          controller: invitadoCounterCarolinaInurretaController,
          labelText: "lbl_invitado_1".tr,
          labelStyle: CustomTextStyles.bodyLargeGray9000116,
          hintText: "lbl_invitado_1".tr,
          contentPadding: EdgeInsets.fromLTRB(16.h, 15.v, 16.h, 16.v),
          borderDecoration:
              FloatingTextFormFieldStyleHelper.fillPrimaryContainer,
          filled: true,
          fillColor: theme.colorScheme.primaryContainer,
        );
      },
    );
  }

  /// Section Widget
  Widget _buildInvitadoCounterJosInurretaTamai(BuildContext context) {
    return BlocSelector<InicioDeSesiNThirtysevenBloc,
        InicioDeSesiNThirtysevenState, TextEditingController?>(
      selector: (state) => state.invitadoCounterJosInurretaTamaiController,
      builder: (context, invitadoCounterJosInurretaTamaiController) {
        return CustomFloatingTextField(
          controller: invitadoCounterJosInurretaTamaiController,
          labelText: "lbl_invitado_2".tr,
          labelStyle: CustomTextStyles.bodyLargeGray9000116,
          hintText: "lbl_invitado_2".tr,
          contentPadding: EdgeInsets.fromLTRB(16.h, 15.v, 16.h, 16.v),
          borderDecoration:
              FloatingTextFormFieldStyleHelper.fillPrimaryContainer,
          filled: true,
          fillColor: theme.colorScheme.primaryContainer,
        );
      },
    );
  }

  /// Section Widget
  Widget _buildInvitadoCounterAnaBelNInurreta(BuildContext context) {
    return BlocSelector<InicioDeSesiNThirtysevenBloc,
        InicioDeSesiNThirtysevenState, TextEditingController?>(
      selector: (state) => state.invitadoCounterAnaBelNInurretaController,
      builder: (context, invitadoCounterAnaBelNInurretaController) {
        return CustomFloatingTextField(
          controller: invitadoCounterAnaBelNInurretaController,
          labelText: "lbl_invitado_3".tr,
          labelStyle: CustomTextStyles.bodyLargeGray9000116,
          hintText: "lbl_invitado_3".tr,
          contentPadding: EdgeInsets.fromLTRB(16.h, 15.v, 16.h, 16.v),
          borderDecoration:
              FloatingTextFormFieldStyleHelper.fillPrimaryContainer,
          filled: true,
          fillColor: theme.colorScheme.primaryContainer,
        );
      },
    );
  }

  /// Section Widget
  Widget _buildInvitadoCounterJenniferHernNdez(BuildContext context) {
    return BlocSelector<InicioDeSesiNThirtysevenBloc,
        InicioDeSesiNThirtysevenState, TextEditingController?>(
      selector: (state) => state.invitadoCounterJenniferHernNdezController,
      builder: (context, invitadoCounterJenniferHernNdezController) {
        return CustomFloatingTextField(
          controller: invitadoCounterJenniferHernNdezController,
          labelText: "lbl_invitado_4".tr,
          labelStyle: CustomTextStyles.bodyLargeGray9000116,
          hintText: "lbl_invitado_4".tr,
          contentPadding: EdgeInsets.fromLTRB(16.h, 15.v, 16.h, 16.v),
          borderDecoration:
              FloatingTextFormFieldStyleHelper.fillPrimaryContainer,
          filled: true,
          fillColor: theme.colorScheme.primaryContainer,
        );
      },
    );
  }

  /// Section Widget
  Widget _buildInvitadoCounterDavidInurretaGMez(BuildContext context) {
    return BlocSelector<InicioDeSesiNThirtysevenBloc,
        InicioDeSesiNThirtysevenState, TextEditingController?>(
      selector: (state) => state.invitadoCounterDavidInurretaGMezController,
      builder: (context, invitadoCounterDavidInurretaGMezController) {
        return CustomFloatingTextField(
          controller: invitadoCounterDavidInurretaGMezController,
          labelText: "lbl_invitado_5".tr,
          labelStyle: CustomTextStyles.bodyLargeGray9000116,
          hintText: "lbl_invitado_5".tr,
          textInputAction: TextInputAction.done,
          contentPadding: EdgeInsets.fromLTRB(16.h, 15.v, 16.h, 16.v),
          borderDecoration:
              FloatingTextFormFieldStyleHelper.fillPrimaryContainer,
          filled: true,
          fillColor: theme.colorScheme.primaryContainer,
        );
      },
    );
  }

  /// Section Widget
  Widget _buildActions(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 36.h,
        vertical: 31.v,
      ),
      decoration: AppDecoration.fillPrimaryContainer.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder28,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Padding(
            padding: EdgeInsets.only(
              top: 1.v,
              bottom: 2.v,
            ),
            child: Text(
              "lbl_cancelar".tr,
              style: theme.textTheme.titleSmall,
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              left: 32.h,
              top: 3.v,
            ),
            child: Text(
              "lbl_aceptar".tr,
              style: theme.textTheme.titleSmall,
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildComponent(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 24.h,
        vertical: 14.v,
      ),
      decoration: AppDecoration.fillPrimaryContainer.copyWith(
        borderRadius: BorderRadiusStyle.customBorderBL181,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: EdgeInsets.only(bottom: 3.v),
            child: Text(
              "lbl_total".tr,
              style: theme.textTheme.bodyLarge,
            ),
          ),
          Spacer(),
          Padding(
            padding: EdgeInsets.only(bottom: 2.v),
            child: Text(
              "lbl".tr,
              style: theme.textTheme.bodyLarge,
            ),
          ),
          Padding(
            padding: EdgeInsets.only(bottom: 3.v),
            child: Text(
              "lbl_0".tr,
              style: theme.textTheme.bodyLarge,
            ),
          ),
          Padding(
            padding: EdgeInsets.only(bottom: 3.v),
            child: Text(
              "lbl_00".tr,
              style: theme.textTheme.bodyLarge,
            ),
          ),
          Padding(
            padding: EdgeInsets.only(bottom: 2.v),
            child: Text(
              "lbl_mxn".tr,
              style: theme.textTheme.bodyLarge,
            ),
          ),
        ],
      ),
    );
  }
}
