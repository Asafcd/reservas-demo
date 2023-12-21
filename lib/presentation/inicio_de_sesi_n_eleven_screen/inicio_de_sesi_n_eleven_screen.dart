import 'bloc/inicio_de_sesi_n_eleven_bloc.dart';
import 'models/inicio_de_sesi_n_eleven_model.dart';
import 'package:asaf_s_application2/core/app_export.dart';
import 'package:asaf_s_application2/widgets/custom_floating_text_field.dart';
import 'package:flutter/material.dart';

class InicioDeSesiNElevenScreen extends StatelessWidget {
  const InicioDeSesiNElevenScreen({Key? key})
      : super(
          key: key,
        );

  static Widget builder(BuildContext context) {
    return BlocProvider<InicioDeSesiNElevenBloc>(
      create: (context) => InicioDeSesiNElevenBloc(InicioDeSesiNElevenState(
        inicioDeSesiNElevenModelObj: InicioDeSesiNElevenModel(),
      ))
        ..add(InicioDeSesiNElevenInitialEvent()),
      child: InicioDeSesiNElevenScreen(),
    );
  }

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return BlocBuilder<InicioDeSesiNElevenBloc, InicioDeSesiNElevenState>(
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
                            top: 210.v,
                            right: 50.h,
                          ),
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              _buildIntersectImage(context),
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

  /// Section Widget
  Widget _buildIntersectImage(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 24.h),
      decoration: AppDecoration.fillPrimaryContainer.copyWith(
        borderRadius: BorderRadiusStyle.customBorderTL28,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          SizedBox(height: 24.v),
          SizedBox(
            width: 140.h,
            child: Text(
              "msg_recuperar_contrase_a".tr,
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
              style: theme.textTheme.headlineSmall!.copyWith(
                height: 1.33,
              ),
            ),
          ),
          SizedBox(height: 17.v),
          Text(
            "msg_ingrese_la_nueva".tr,
            style: CustomTextStyles.bodyMediumGray800,
          ),
          SizedBox(height: 4.v),
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadiusStyle.customBorderTL4,
            ),
            child: Column(
              children: [
                BlocSelector<InicioDeSesiNElevenBloc, InicioDeSesiNElevenState,
                    TextEditingController?>(
                  selector: (state) => state.newPasswordController,
                  builder: (context, newPasswordController) {
                    return CustomFloatingTextField(
                      controller: newPasswordController,
                      labelText: "msg_nueva_contrase_a".tr,
                      labelStyle: CustomTextStyles.bodyLargeGray9000116,
                      hintText: "msg_nueva_contrase_a".tr,
                      suffix: Container(
                        margin: EdgeInsets.symmetric(horizontal: 12.h),
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
                    style: CustomTextStyles.bodySmallGray800.copyWith(
                      height: 1.33,
                    ),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 3.v),
          BlocSelector<InicioDeSesiNElevenBloc, InicioDeSesiNElevenState,
              TextEditingController?>(
            selector: (state) => state.confirmPasswordController,
            builder: (context, confirmPasswordController) {
              return CustomFloatingTextField(
                controller: confirmPasswordController,
                labelText: "msg_confirmar_contrase_a".tr,
                labelStyle: CustomTextStyles.bodyLargeGray9000116,
                hintText: "msg_confirmar_contrase_a".tr,
                textInputAction: TextInputAction.done,
                suffix: Container(
                  margin: EdgeInsets.symmetric(horizontal: 12.h),
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
    );
  }
}
