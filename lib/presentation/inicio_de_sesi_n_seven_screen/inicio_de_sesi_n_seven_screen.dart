import 'bloc/inicio_de_sesi_n_seven_bloc.dart';
import 'models/inicio_de_sesi_n_seven_model.dart';
import 'package:asaf_s_application2/core/app_export.dart';
import 'package:asaf_s_application2/widgets/custom_floating_text_field.dart';
import 'package:flutter/material.dart';

class InicioDeSesiNSevenScreen extends StatelessWidget {
  const InicioDeSesiNSevenScreen({Key? key})
      : super(
          key: key,
        );

  static Widget builder(BuildContext context) {
    return BlocProvider<InicioDeSesiNSevenBloc>(
      create: (context) => InicioDeSesiNSevenBloc(InicioDeSesiNSevenState(
        inicioDeSesiNSevenModelObj: InicioDeSesiNSevenModel(),
      ))
        ..add(InicioDeSesiNSevenInitialEvent()),
      child: InicioDeSesiNSevenScreen(),
    );
  }

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return BlocBuilder<InicioDeSesiNSevenBloc, InicioDeSesiNSevenState>(
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
                            top: 234.v,
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
                                    SizedBox(height: 24.v),
                                    Align(
                                      alignment: Alignment.centerLeft,
                                      child: SizedBox(
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
                                    ),
                                    SizedBox(height: 15.v),
                                    SizedBox(
                                      width: 261.h,
                                      child: Text(
                                        "msg_se_le_enviar_un".tr,
                                        maxLines: 4,
                                        overflow: TextOverflow.ellipsis,
                                        style: CustomTextStyles
                                            .bodyMediumGray800
                                            .copyWith(
                                          height: 1.43,
                                        ),
                                      ),
                                    ),
                                    SizedBox(height: 6.v),
                                    BlocSelector<
                                        InicioDeSesiNSevenBloc,
                                        InicioDeSesiNSevenState,
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
                                          textInputAction: TextInputAction.done,
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
