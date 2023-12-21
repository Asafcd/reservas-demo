import 'bloc/inicio_de_sesi_n_fifteen_bloc.dart';
import 'models/inicio_de_sesi_n_fifteen_model.dart';
import 'package:asaf_s_application2/core/app_export.dart';
import 'package:asaf_s_application2/core/utils/validation_functions.dart';
import 'package:asaf_s_application2/widgets/custom_floating_text_field.dart';
import 'package:flutter/material.dart';

class InicioDeSesiNFifteenScreen extends StatelessWidget {
  InicioDeSesiNFifteenScreen({Key? key})
      : super(
          key: key,
        );

  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  static Widget builder(BuildContext context) {
    return BlocProvider<InicioDeSesiNFifteenBloc>(
      create: (context) => InicioDeSesiNFifteenBloc(InicioDeSesiNFifteenState(
        inicioDeSesiNFifteenModelObj: InicioDeSesiNFifteenModel(),
      ))
        ..add(InicioDeSesiNFifteenInitialEvent()),
      child: InicioDeSesiNFifteenScreen(),
    );
  }

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return BlocBuilder<InicioDeSesiNFifteenBloc, InicioDeSesiNFifteenState>(
      builder: (context, state) {
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
                        Align(
                          alignment: Alignment.topCenter,
                          child: Padding(
                            padding: EdgeInsets.only(
                              left: 50.h,
                              top: 198.v,
                              right: 50.h,
                            ),
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                Container(
                                  padding:
                                      EdgeInsets.symmetric(horizontal: 24.h),
                                  decoration: AppDecoration.fillPrimaryContainer
                                      .copyWith(
                                    borderRadius:
                                        BorderRadiusStyle.customBorderTL28,
                                  ),
                                  child: Column(
                                    mainAxisSize: MainAxisSize.min,
                                    mainAxisAlignment: MainAxisAlignment.end,
                                    children: [
                                      SizedBox(height: 23.v),
                                      Align(
                                        alignment: Alignment.centerLeft,
                                        child: Text(
                                          "lbl_registro".tr,
                                          style: theme.textTheme.headlineSmall,
                                        ),
                                      ),
                                      SizedBox(height: 2.v),
                                      BlocSelector<
                                          InicioDeSesiNFifteenBloc,
                                          InicioDeSesiNFifteenState,
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
                                      Container(
                                        decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadiusStyle.customBorderTL4,
                                        ),
                                        child: Column(
                                          children: [
                                            BlocBuilder<
                                                InicioDeSesiNFifteenBloc,
                                                InicioDeSesiNFifteenState>(
                                              builder: (context, state) {
                                                return CustomFloatingTextField(
                                                  controller:
                                                      state.passwordController,
                                                  labelText:
                                                      "lbl_contrase_a".tr,
                                                  labelStyle: CustomTextStyles
                                                      .bodyMediumGray800,
                                                  hintText: "lbl_contrase_a".tr,
                                                  textInputType: TextInputType
                                                      .visiblePassword,
                                                  obscureText:
                                                      state.isShowPassword,
                                                  suffix: InkWell(
                                                    onTap: () {
                                                      context
                                                          .read<
                                                              InicioDeSesiNFifteenBloc>()
                                                          .add(ChangePasswordVisibilityEvent(
                                                              value: !state
                                                                  .isShowPassword));
                                                    },
                                                    child: Container(
                                                      margin:
                                                          EdgeInsets.symmetric(
                                                              horizontal: 12.h),
                                                      child: CustomImageView(
                                                        imagePath: ImageConstant
                                                            .imgEye,
                                                        height: 24.adaptSize,
                                                        width: 24.adaptSize,
                                                      ),
                                                    ),
                                                  ),
                                                  suffixConstraints:
                                                      BoxConstraints(
                                                    maxHeight: 65.v,
                                                  ),
                                                  validator: (value) {
                                                    if (value == null ||
                                                        (!isValidPassword(value,
                                                            isRequired:
                                                                true))) {
                                                      return "err_msg_please_enter_valid_password"
                                                          .tr;
                                                    }
                                                    return null;
                                                  },
                                                  contentPadding:
                                                      EdgeInsets.fromLTRB(16.h,
                                                          13.v, 16.h, 18.v),
                                                );
                                              },
                                            ),
                                            SizedBox(height: 3.v),
                                            Container(
                                              width: 229.h,
                                              margin: EdgeInsets.only(
                                                left: 16.h,
                                                right: 18.h,
                                              ),
                                              child: Text(
                                                "msg_debe_contener_al".tr,
                                                maxLines: 2,
                                                overflow: TextOverflow.ellipsis,
                                                style: CustomTextStyles
                                                    .bodySmallGray800
                                                    .copyWith(
                                                  height: 1.33,
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                      SizedBox(height: 3.v),
                                      Container(
                                        decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadiusStyle.customBorderTL4,
                                        ),
                                        child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            BlocBuilder<
                                                InicioDeSesiNFifteenBloc,
                                                InicioDeSesiNFifteenState>(
                                              builder: (context, state) {
                                                return CustomFloatingTextField(
                                                  controller: state
                                                      .confirmPasswordController,
                                                  labelText:
                                                      "msg_confirmar_contrase_a"
                                                          .tr,
                                                  labelStyle: CustomTextStyles
                                                      .bodyMediumGray800,
                                                  hintText:
                                                      "msg_confirmar_contrase_a"
                                                          .tr,
                                                  textInputAction:
                                                      TextInputAction.done,
                                                  textInputType: TextInputType
                                                      .visiblePassword,
                                                  obscureText:
                                                      state.isShowPassword1,
                                                  suffix: InkWell(
                                                    onTap: () {
                                                      context
                                                          .read<
                                                              InicioDeSesiNFifteenBloc>()
                                                          .add(ChangePasswordVisibilityEvent1(
                                                              value: !state
                                                                  .isShowPassword1));
                                                    },
                                                    child: Container(
                                                      margin:
                                                          EdgeInsets.symmetric(
                                                              horizontal: 12.h),
                                                      child: CustomImageView(
                                                        imagePath: ImageConstant
                                                            .imgEye,
                                                        height: 24.adaptSize,
                                                        width: 24.adaptSize,
                                                      ),
                                                    ),
                                                  ),
                                                  suffixConstraints:
                                                      BoxConstraints(
                                                    maxHeight: 65.v,
                                                  ),
                                                  validator: (value) {
                                                    if (value == null ||
                                                        (!isValidPassword(value,
                                                            isRequired:
                                                                true))) {
                                                      return "err_msg_please_enter_valid_password"
                                                          .tr;
                                                    }
                                                    return null;
                                                  },
                                                  contentPadding:
                                                      EdgeInsets.fromLTRB(16.h,
                                                          13.v, 16.h, 18.v),
                                                );
                                              },
                                            ),
                                            SizedBox(height: 4.v),
                                            Padding(
                                              padding:
                                                  EdgeInsets.only(left: 16.h),
                                              child: Text(
                                                "lbl_supporting_text".tr,
                                                style: CustomTextStyles
                                                    .bodySmallGray800,
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Container(
                                  padding: EdgeInsets.symmetric(
                                    horizontal: 36.h,
                                    vertical: 31.v,
                                  ),
                                  decoration: AppDecoration.fillPrimaryContainer
                                      .copyWith(
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
          ),
        );
      },
    );
  }
}
