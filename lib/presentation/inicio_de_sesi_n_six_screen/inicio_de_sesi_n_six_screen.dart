import 'bloc/inicio_de_sesi_n_six_bloc.dart';
import 'models/inicio_de_sesi_n_six_model.dart';
import 'package:asaf_s_application2/core/app_export.dart';
import 'package:asaf_s_application2/core/utils/validation_functions.dart';
import 'package:asaf_s_application2/widgets/custom_outlined_button.dart';
import 'package:asaf_s_application2/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';

class InicioDeSesiNSixScreen extends StatelessWidget {
  InicioDeSesiNSixScreen({Key? key})
      : super(
          key: key,
        );

  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  static Widget builder(BuildContext context) {
    return BlocProvider<InicioDeSesiNSixBloc>(
      create: (context) => InicioDeSesiNSixBloc(InicioDeSesiNSixState(
        inicioDeSesiNSixModelObj: InicioDeSesiNSixModel(),
      ))
        ..add(InicioDeSesiNSixInitialEvent()),
      child: InicioDeSesiNSixScreen(),
    );
  }

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        backgroundColor: theme.colorScheme.primaryContainer,
        resizeToAvoidBottomInset: false,
        body: Form(
          key: _formKey,
          child: Container(
            width: double.maxFinite,
            padding: EdgeInsets.symmetric(horizontal: 8.h),
            child: Card(
              clipBehavior: Clip.antiAlias,
              elevation: 0,
              margin: EdgeInsets.all(0),
              shape: RoundedRectangleBorder(
                side: BorderSide(
                  color: appTheme.gray6007f,
                  width: 8.h,
                ),
                borderRadius: BorderRadiusStyle.roundedBorder18,
              ),
              child: Container(
                height: 852.v,
                width: 412.h,
                decoration: AppDecoration.outlineGrayF.copyWith(
                  borderRadius: BorderRadiusStyle.roundedBorder18,
                ),
                child: Stack(
                  alignment: Alignment.topCenter,
                  children: [
                    CustomImageView(
                      imagePath: ImageConstant.imgIntersect,
                      height: 852.v,
                      width: 412.h,
                      radius: BorderRadius.circular(
                        18.h,
                      ),
                      alignment: Alignment.center,
                    ),
                    _buildModalInicioDe(context),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildModalInicioDe(BuildContext context) {
    return Align(
      alignment: Alignment.topCenter,
      child: Padding(
        padding: EdgeInsets.only(
          left: 50.h,
          top: 278.v,
          right: 50.h,
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Container(
              padding: EdgeInsets.symmetric(horizontal: 24.h),
              decoration: AppDecoration.fillPrimaryContainer.copyWith(
                borderRadius: BorderRadiusStyle.customBorderTL28,
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  SizedBox(height: 20.v),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      "msg_seleccionar_cuenta".tr,
                      style: theme.textTheme.headlineSmall,
                    ),
                  ),
                  SizedBox(height: 15.v),
                  CustomOutlinedButton(
                    text: "msg_correo_1234ejemplo_com".tr,
                    leftIcon: Container(
                      margin: EdgeInsets.only(right: 8.h),
                      child: CustomImageView(
                        imagePath: ImageConstant.imgClose18x18,
                        height: 18.adaptSize,
                        width: 18.adaptSize,
                      ),
                    ),
                  ),
                  SizedBox(height: 16.v),
                  BlocSelector<InicioDeSesiNSixBloc, InicioDeSesiNSixState,
                      TextEditingController?>(
                    selector: (state) => state.emailController,
                    builder: (context, emailController) {
                      return CustomTextFormField(
                        controller: emailController,
                        hintText: "msg_correo876_ejemplo_com".tr,
                        textInputAction: TextInputAction.done,
                        textInputType: TextInputType.emailAddress,
                        prefix: Container(
                          margin: EdgeInsets.fromLTRB(16.h, 11.v, 8.h, 11.v),
                          child: CustomImageView(
                            imagePath: ImageConstant.imgClose18x18,
                            height: 18.adaptSize,
                            width: 18.adaptSize,
                          ),
                        ),
                        prefixConstraints: BoxConstraints(
                          maxHeight: 40.v,
                        ),
                        validator: (value) {
                          if (value == null ||
                              (!isValidEmail(value, isRequired: true))) {
                            return "err_msg_please_enter_valid_email".tr;
                          }
                          return null;
                        },
                        contentPadding: EdgeInsets.only(
                          top: 11.v,
                          right: 30.h,
                          bottom: 11.v,
                        ),
                      );
                    },
                  ),
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.symmetric(
                horizontal: 36.h,
                vertical: 31.v,
              ),
              decoration: AppDecoration.fillPrimaryContainer.copyWith(
                borderRadius: BorderRadiusStyle.customBorderBL28,
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
            ),
          ],
        ),
      ),
    );
  }
}
