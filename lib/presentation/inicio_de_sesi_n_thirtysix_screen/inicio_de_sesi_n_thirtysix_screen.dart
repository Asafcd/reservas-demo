import 'bloc/inicio_de_sesi_n_thirtysix_bloc.dart';
import 'models/inicio_de_sesi_n_thirtysix_model.dart';
import 'package:asaf_s_application2/core/app_export.dart';
import 'package:asaf_s_application2/widgets/app_bar/appbar_leading_image.dart';
import 'package:asaf_s_application2/widgets/app_bar/appbar_title.dart';
import 'package:asaf_s_application2/widgets/app_bar/appbar_trailing_image.dart';
import 'package:asaf_s_application2/widgets/app_bar/custom_app_bar.dart';
import 'package:asaf_s_application2/widgets/custom_floating_text_field.dart';
import 'package:flutter/material.dart';

class InicioDeSesiNThirtysixScreen extends StatelessWidget {
  const InicioDeSesiNThirtysixScreen({Key? key})
      : super(
          key: key,
        );

  static Widget builder(BuildContext context) {
    return BlocProvider<InicioDeSesiNThirtysixBloc>(
      create: (context) =>
          InicioDeSesiNThirtysixBloc(InicioDeSesiNThirtysixState(
        inicioDeSesiNThirtysixModelObj: InicioDeSesiNThirtysixModel(),
      ))
            ..add(InicioDeSesiNThirtysixInitialEvent()),
      child: InicioDeSesiNThirtysixScreen(),
    );
  }

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return BlocBuilder<InicioDeSesiNThirtysixBloc, InicioDeSesiNThirtysixState>(
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
                          _buildInvitadoCounter1(context),
                          SizedBox(height: 14.v),
                          _buildInvitadoCounter2(context),
                          SizedBox(height: 14.v),
                          _buildInvitadoCounter3(context),
                          SizedBox(height: 14.v),
                          _buildInvitadoCounter4(context),
                          SizedBox(height: 14.v),
                          _buildInvitadoCounter5(context),
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
  Widget _buildInvitadoCounter1(BuildContext context) {
    return BlocSelector<InicioDeSesiNThirtysixBloc, InicioDeSesiNThirtysixState,
        TextEditingController?>(
      selector: (state) => state.invitadoCounter1Controller,
      builder: (context, invitadoCounter1Controller) {
        return CustomFloatingTextField(
          controller: invitadoCounter1Controller,
          labelText: "lbl_invitado_1".tr,
          labelStyle: CustomTextStyles.bodyLargeGray9000116,
          hintText: "lbl_invitado_1".tr,
        );
      },
    );
  }

  /// Section Widget
  Widget _buildInvitadoCounter2(BuildContext context) {
    return BlocSelector<InicioDeSesiNThirtysixBloc, InicioDeSesiNThirtysixState,
        TextEditingController?>(
      selector: (state) => state.invitadoCounter2Controller,
      builder: (context, invitadoCounter2Controller) {
        return CustomFloatingTextField(
          controller: invitadoCounter2Controller,
          labelText: "lbl_invitado_2".tr,
          labelStyle: CustomTextStyles.bodyLargeGray9000116,
          hintText: "lbl_invitado_2".tr,
          borderDecoration:
              FloatingTextFormFieldStyleHelper.fillPrimaryContainer,
          filled: true,
          fillColor: theme.colorScheme.primaryContainer,
        );
      },
    );
  }

  /// Section Widget
  Widget _buildInvitadoCounter3(BuildContext context) {
    return BlocSelector<InicioDeSesiNThirtysixBloc, InicioDeSesiNThirtysixState,
        TextEditingController?>(
      selector: (state) => state.invitadoCounter3Controller,
      builder: (context, invitadoCounter3Controller) {
        return CustomFloatingTextField(
          controller: invitadoCounter3Controller,
          labelText: "lbl_invitado_3".tr,
          labelStyle: CustomTextStyles.bodyLargeGray9000116,
          hintText: "lbl_invitado_3".tr,
          borderDecoration:
              FloatingTextFormFieldStyleHelper.fillPrimaryContainer,
          filled: true,
          fillColor: theme.colorScheme.primaryContainer,
        );
      },
    );
  }

  /// Section Widget
  Widget _buildInvitadoCounter4(BuildContext context) {
    return BlocSelector<InicioDeSesiNThirtysixBloc, InicioDeSesiNThirtysixState,
        TextEditingController?>(
      selector: (state) => state.invitadoCounter4Controller,
      builder: (context, invitadoCounter4Controller) {
        return CustomFloatingTextField(
          controller: invitadoCounter4Controller,
          labelText: "lbl_invitado_4".tr,
          labelStyle: CustomTextStyles.bodyLargeGray9000116,
          hintText: "lbl_invitado_4".tr,
          borderDecoration:
              FloatingTextFormFieldStyleHelper.fillPrimaryContainer,
          filled: true,
          fillColor: theme.colorScheme.primaryContainer,
        );
      },
    );
  }

  /// Section Widget
  Widget _buildInvitadoCounter5(BuildContext context) {
    return BlocSelector<InicioDeSesiNThirtysixBloc, InicioDeSesiNThirtysixState,
        TextEditingController?>(
      selector: (state) => state.invitadoCounter5Controller,
      builder: (context, invitadoCounter5Controller) {
        return CustomFloatingTextField(
          controller: invitadoCounter5Controller,
          labelText: "lbl_invitado_5".tr,
          labelStyle: CustomTextStyles.bodyLargeGray9000116,
          hintText: "lbl_invitado_5".tr,
          textInputAction: TextInputAction.done,
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
