import 'bloc/inicio_de_sesi_n_two_bloc.dart';
import 'models/inicio_de_sesi_n_two_model.dart';
import 'package:asaf_s_application2/core/app_export.dart';
import 'package:asaf_s_application2/widgets/custom_floating_text_field.dart';
import 'package:flutter/material.dart';

class InicioDeSesiNTwoScreen extends StatelessWidget {
  const InicioDeSesiNTwoScreen({Key? key})
      : super(
          key: key,
        );

  static Widget builder(BuildContext context) {
    return BlocProvider<InicioDeSesiNTwoBloc>(
      create: (context) => InicioDeSesiNTwoBloc(InicioDeSesiNTwoState(
        inicioDeSesiNTwoModelObj: InicioDeSesiNTwoModel(),
      ))
        ..add(InicioDeSesiNTwoInitialEvent()),
      child: InicioDeSesiNTwoScreen(),
    );
  }

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return BlocBuilder<InicioDeSesiNTwoBloc, InicioDeSesiNTwoState>(
      builder: (context, state) {
        return SafeArea(
          child: Scaffold(
            backgroundColor: theme.colorScheme.primaryContainer,
            resizeToAvoidBottomInset: false,
            body: Container(
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
                      Align(
                        alignment: Alignment.topCenter,
                        child: Padding(
                          padding: EdgeInsets.only(
                            left: 50.h,
                            top: 262.v,
                            right: 50.h,
                          ),
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Container(
                                padding: EdgeInsets.symmetric(horizontal: 24.h),
                                decoration:
                                    AppDecoration.fillPrimaryContainer.copyWith(
                                  borderRadius:
                                      BorderRadiusStyle.customBorderTL28,
                                ),
                                child: Column(
                                  mainAxisSize: MainAxisSize.min,
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  children: [
                                    SizedBox(height: 20.v),
                                    Align(
                                      alignment: Alignment.centerLeft,
                                      child: Text(
                                        "lbl_iniciar_sesi_n".tr,
                                        style: theme.textTheme.headlineSmall,
                                      ),
                                    ),
                                    SizedBox(height: 6.v),
                                    BlocSelector<
                                        InicioDeSesiNTwoBloc,
                                        InicioDeSesiNTwoState,
                                        TextEditingController?>(
                                      selector: (state) =>
                                          state.emailController,
                                      builder: (context, emailController) {
                                        return CustomFloatingTextField(
                                          controller: emailController,
                                          labelText: "lbl_correo".tr,
                                          labelStyle: CustomTextStyles
                                              .bodyLargeGray9000116,
                                          hintText: "lbl_correo".tr,
                                        );
                                      },
                                    ),
                                    SizedBox(height: 6.v),
                                    BlocSelector<
                                        InicioDeSesiNTwoBloc,
                                        InicioDeSesiNTwoState,
                                        TextEditingController?>(
                                      selector: (state) =>
                                          state.passwordController,
                                      builder: (context, passwordController) {
                                        return CustomFloatingTextField(
                                          controller: passwordController,
                                          labelText: "lbl_contrase_a".tr,
                                          labelStyle: CustomTextStyles
                                              .bodyLargeGray9000116,
                                          hintText: "lbl_contrase_a".tr,
                                          textInputAction: TextInputAction.done,
                                          suffix: Container(
                                            margin: EdgeInsets.symmetric(
                                                horizontal: 12.h),
                                            child: CustomImageView(
                                              imagePath: ImageConstant.imgEye,
                                              height: 24.adaptSize,
                                              width: 24.adaptSize,
                                            ),
                                          ),
                                          suffixConstraints: BoxConstraints(
                                            maxHeight: 65.v,
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
                                decoration:
                                    AppDecoration.fillPrimaryContainer.copyWith(
                                  borderRadius:
                                      BorderRadiusStyle.customBorderBL28,
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
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}
