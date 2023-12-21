import 'bloc/inicio_de_sesi_n_thirteen_bloc.dart';
import 'models/inicio_de_sesi_n_thirteen_model.dart';
import 'package:asaf_s_application2/core/app_export.dart';
import 'package:asaf_s_application2/core/utils/validation_functions.dart';
import 'package:asaf_s_application2/widgets/custom_floating_text_field.dart';
import 'package:flutter/material.dart';

class InicioDeSesiNThirteenScreen extends StatelessWidget {
  InicioDeSesiNThirteenScreen({Key? key})
      : super(
          key: key,
        );

  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  static Widget builder(BuildContext context) {
    return BlocProvider<InicioDeSesiNThirteenBloc>(
      create: (context) => InicioDeSesiNThirteenBloc(InicioDeSesiNThirteenState(
        inicioDeSesiNThirteenModelObj: InicioDeSesiNThirteenModel(),
      ))
        ..add(InicioDeSesiNThirteenInitialEvent()),
      child: InicioDeSesiNThirteenScreen(),
    );
  }

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return BlocBuilder<InicioDeSesiNThirteenBloc, InicioDeSesiNThirteenState>(
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
                              top: 210.v,
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
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    mainAxisAlignment: MainAxisAlignment.end,
                                    children: [
                                      SizedBox(height: 24.v),
                                      SizedBox(
                                        width: 140.h,
                                        child: Text(
                                          "msg_recuperar_contrase_a".tr,
                                          maxLines: 2,
                                          overflow: TextOverflow.ellipsis,
                                          style: theme.textTheme.headlineSmall!
                                              .copyWith(
                                            height: 1.33,
                                          ),
                                        ),
                                      ),
                                      SizedBox(height: 17.v),
                                      Text(
                                        "msg_ingrese_la_nueva".tr,
                                        style:
                                            CustomTextStyles.bodyMediumGray800,
                                      ),
                                      SizedBox(height: 4.v),
                                      Container(
                                        decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadiusStyle.customBorderTL4,
                                        ),
                                        child: Column(
                                          children: [
                                            BlocBuilder<
                                                InicioDeSesiNThirteenBloc,
                                                InicioDeSesiNThirteenState>(
                                              builder: (context, state) {
                                                return CustomFloatingTextField(
                                                  controller: state
                                                      .newPasswordController,
                                                  labelText:
                                                      "msg_nueva_contrase_a".tr,
                                                  labelStyle: CustomTextStyles
                                                      .bodyMediumGray800,
                                                  hintText:
                                                      "msg_nueva_contrase_a".tr,
                                                  textInputType: TextInputType
                                                      .visiblePassword,
                                                  obscureText:
                                                      state.isShowPassword,
                                                  suffix: InkWell(
                                                    onTap: () {
                                                      context
                                                          .read<
                                                              InicioDeSesiNThirteenBloc>()
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
                                      BlocBuilder<InicioDeSesiNThirteenBloc,
                                          InicioDeSesiNThirteenState>(
                                        builder: (context, state) {
                                          return CustomFloatingTextField(
                                            controller:
                                                state.confirmPasswordController,
                                            labelText:
                                                "msg_confirmar_contrase_a".tr,
                                            labelStyle: CustomTextStyles
                                                .bodyMediumGray800,
                                            hintText:
                                                "msg_confirmar_contrase_a".tr,
                                            textInputAction:
                                                TextInputAction.done,
                                            textInputType:
                                                TextInputType.visiblePassword,
                                            obscureText: state.isShowPassword1,
                                            suffix: InkWell(
                                              onTap: () {
                                                context
                                                    .read<
                                                        InicioDeSesiNThirteenBloc>()
                                                    .add(ChangePasswordVisibilityEvent1(
                                                        value: !state
                                                            .isShowPassword1));
                                              },
                                              child: Container(
                                                margin: EdgeInsets.symmetric(
                                                    horizontal: 12.h),
                                                child: CustomImageView(
                                                  imagePath:
                                                      ImageConstant.imgEye,
                                                  height: 24.adaptSize,
                                                  width: 24.adaptSize,
                                                ),
                                              ),
                                            ),
                                            suffixConstraints: BoxConstraints(
                                              maxHeight: 65.v,
                                            ),
                                            validator: (value) {
                                              if (value == null ||
                                                  (!isValidPassword(value,
                                                      isRequired: true))) {
                                                return "err_msg_please_enter_valid_password"
                                                    .tr;
                                              }
                                              return null;
                                            },
                                            contentPadding: EdgeInsets.fromLTRB(
                                                16.h, 13.v, 16.h, 18.v),
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
