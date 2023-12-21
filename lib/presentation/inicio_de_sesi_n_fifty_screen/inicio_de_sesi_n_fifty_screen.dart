import 'bloc/inicio_de_sesi_n_fifty_bloc.dart';
import 'models/inicio_de_sesi_n_fifty_model.dart';
import 'package:asaf_s_application2/core/app_export.dart';
import 'package:asaf_s_application2/core/utils/validation_functions.dart';
import 'package:asaf_s_application2/widgets/app_bar/appbar_leading_image.dart';
import 'package:asaf_s_application2/widgets/app_bar/appbar_title.dart';
import 'package:asaf_s_application2/widgets/app_bar/appbar_trailing_image.dart';
import 'package:asaf_s_application2/widgets/app_bar/custom_app_bar.dart';
import 'package:asaf_s_application2/widgets/custom_floating_text_field.dart';
import 'package:flutter/material.dart';

class InicioDeSesiNFiftyScreen extends StatelessWidget {
  InicioDeSesiNFiftyScreen({Key? key})
      : super(
          key: key,
        );

  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  static Widget builder(BuildContext context) {
    return BlocProvider<InicioDeSesiNFiftyBloc>(
      create: (context) => InicioDeSesiNFiftyBloc(InicioDeSesiNFiftyState(
        inicioDeSesiNFiftyModelObj: InicioDeSesiNFiftyModel(),
      ))
        ..add(InicioDeSesiNFiftyInitialEvent()),
      child: InicioDeSesiNFiftyScreen(),
    );
  }

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return BlocBuilder<InicioDeSesiNFiftyBloc, InicioDeSesiNFiftyState>(
      builder: (context, state) {
        return SafeArea(
          child: Scaffold(
            backgroundColor: theme.colorScheme.primaryContainer,
            resizeToAvoidBottomInset: false,
            appBar: _buildAppBar(context),
            body: Form(
              key: _formKey,
              child: SingleChildScrollView(
                child: Container(
                  height: 864.v,
                  width: 412.h,
                  margin: EdgeInsets.symmetric(horizontal: 8.h),
                  child: Stack(
                    alignment: Alignment.center,
                    children: [
                      Align(
                        alignment: Alignment.bottomCenter,
                        child: Padding(
                          padding: EdgeInsets.symmetric(horizontal: 16.h),
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              SizedBox(
                                height: 280.adaptSize,
                                width: 280.adaptSize,
                                child: Stack(
                                  alignment: Alignment.bottomRight,
                                  children: [
                                    CustomImageView(
                                      imagePath: ImageConstant.imgSubtract,
                                      height: 280.adaptSize,
                                      width: 280.adaptSize,
                                      alignment: Alignment.center,
                                    ),
                                    Align(
                                      alignment: Alignment.bottomRight,
                                      child: Container(
                                        height: 92.adaptSize,
                                        width: 92.adaptSize,
                                        padding: EdgeInsets.all(30.h),
                                        decoration:
                                            AppDecoration.fillPrimary.copyWith(
                                          borderRadius:
                                              BorderRadiusStyle.circleBorder46,
                                        ),
                                        child: CustomImageView(
                                          imagePath: ImageConstant.imgEdit,
                                          height: 32.adaptSize,
                                          width: 32.adaptSize,
                                          alignment: Alignment.center,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              SizedBox(height: 24.v),
                              BlocSelector<
                                  InicioDeSesiNFiftyBloc,
                                  InicioDeSesiNFiftyState,
                                  TextEditingController?>(
                                selector: (state) => state.fullNameController,
                                builder: (context, fullNameController) {
                                  return CustomFloatingTextField(
                                    controller: fullNameController,
                                    labelText: "lbl_nombre_completo".tr,
                                    labelStyle:
                                        CustomTextStyles.bodyLargeGray9000116,
                                    hintText: "lbl_nombre_completo".tr,
                                    suffix: Container(
                                      margin: EdgeInsets.symmetric(
                                          horizontal: 12.h),
                                      child: CustomImageView(
                                        imagePath:
                                            ImageConstant.imgEditGray90001,
                                        height: 24.adaptSize,
                                        width: 24.adaptSize,
                                      ),
                                    ),
                                    suffixConstraints: BoxConstraints(
                                      maxHeight: 64.v,
                                    ),
                                    contentPadding: EdgeInsets.fromLTRB(
                                        16.h, 15.v, 16.h, 16.v),
                                  );
                                },
                              ),
                              SizedBox(height: 14.v),
                              BlocSelector<
                                  InicioDeSesiNFiftyBloc,
                                  InicioDeSesiNFiftyState,
                                  TextEditingController?>(
                                selector: (state) => state.nameController,
                                builder: (context, nameController) {
                                  return CustomFloatingTextField(
                                    controller: nameController,
                                    labelText: "lbl_nickname".tr,
                                    labelStyle:
                                        CustomTextStyles.bodyLargeGray9000116,
                                    hintText: "lbl_nickname".tr,
                                    suffix: Container(
                                      margin: EdgeInsets.symmetric(
                                          horizontal: 12.h),
                                      child: CustomImageView(
                                        imagePath:
                                            ImageConstant.imgEditGray90001,
                                        height: 24.adaptSize,
                                        width: 24.adaptSize,
                                      ),
                                    ),
                                    suffixConstraints: BoxConstraints(
                                      maxHeight: 65.v,
                                    ),
                                    validator: (value) {
                                      if (!isText(value)) {
                                        return "err_msg_please_enter_valid_text"
                                            .tr;
                                      }
                                      return null;
                                    },
                                    borderDecoration:
                                        FloatingTextFormFieldStyleHelper
                                            .fillPrimaryContainer,
                                    filled: true,
                                    fillColor:
                                        theme.colorScheme.primaryContainer,
                                  );
                                },
                              ),
                              SizedBox(height: 14.v),
                              BlocSelector<
                                  InicioDeSesiNFiftyBloc,
                                  InicioDeSesiNFiftyState,
                                  TextEditingController?>(
                                selector: (state) => state.emailController,
                                builder: (context, emailController) {
                                  return CustomFloatingTextField(
                                    controller: emailController,
                                    labelText: "lbl_correo".tr,
                                    labelStyle:
                                        CustomTextStyles.bodyLargeGray9000116,
                                    hintText: "lbl_correo".tr,
                                    textInputAction: TextInputAction.done,
                                  );
                                },
                              ),
                              SizedBox(height: 14.v),
                              _buildTextField(context),
                              SizedBox(height: 32.v),
                              _buildListaModal(
                                context,
                                darkModeImage: ImageConstant.imgLogout,
                                darkModeText: "lbl_cerrar_sesi_n".tr,
                              ),
                              SizedBox(height: 24.v),
                              _buildListaModal(
                                context,
                                darkModeImage: ImageConstant.imgDarkMode,
                                darkModeText: "lbl_modo_oscuro".tr,
                              ),
                            ],
                          ),
                        ),
                      ),
                      Align(
                        alignment: Alignment.center,
                        child: Container(
                          height: 852.v,
                          width: 412.h,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(
                              18.h,
                            ),
                            border: Border.all(
                              color: appTheme.gray6007f,
                              width: 8.h,
                              strokeAlign: strokeAlignOutside,
                            ),
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
    );
  }

  /// Section Widget
  Widget _buildTextField(BuildContext context) {
    return SizedBox(
      height: 65.v,
      width: 380.h,
      child: Stack(
        alignment: Alignment.center,
        children: [
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              height: 56.v,
              width: 380.h,
              decoration: BoxDecoration(
                color: theme.colorScheme.primaryContainer,
                borderRadius: BorderRadius.circular(
                  4.h,
                ),
              ),
            ),
          ),
          Align(
            alignment: Alignment.center,
            child: SizedBox(
              height: 65.v,
              width: 380.h,
              child: Stack(
                alignment: Alignment.topCenter,
                children: [
                  Align(
                    alignment: Alignment.bottomCenter,
                    child: Container(
                      height: 56.v,
                      width: 380.h,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(
                          4.h,
                        ),
                        border: Border.all(
                          color: appTheme.gray600,
                          width: 1.h,
                        ),
                      ),
                    ),
                  ),
                  Align(
                    alignment: Alignment.topCenter,
                    child: Padding(
                      padding: EdgeInsets.only(
                        left: 12.h,
                        bottom: 4.v,
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: EdgeInsets.only(bottom: 9.v),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                SizedBox(
                                  height: 18.v,
                                  width: 51.h,
                                  child: Stack(
                                    alignment: Alignment.center,
                                    children: [
                                      Align(
                                        alignment: Alignment.bottomCenter,
                                        child: Container(
                                          height: 16.v,
                                          width: 51.h,
                                          decoration: BoxDecoration(
                                            color: theme
                                                .colorScheme.primaryContainer,
                                          ),
                                        ),
                                      ),
                                      Align(
                                        alignment: Alignment.center,
                                        child: Text(
                                          "lbl_idioma".tr,
                                          style:
                                              CustomTextStyles.bodySmallGray800,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                SizedBox(height: 9.v),
                                Align(
                                  alignment: Alignment.centerRight,
                                  child: Text(
                                    "lbl_espa_ol".tr,
                                    style:
                                        CustomTextStyles.bodyLargeGray9000116,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          CustomImageView(
                            imagePath: ImageConstant.imgFlechaSeleccionar,
                            height: 48.adaptSize,
                            width: 48.adaptSize,
                            margin: EdgeInsets.only(top: 13.v),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  /// Common widget
  Widget _buildListaModal(
    BuildContext context, {
    required String darkModeImage,
    required String darkModeText,
  }) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 19.h,
        vertical: 9.v,
      ),
      decoration: AppDecoration.outlineOnPrimaryContainer1,
      child: Row(
        children: [
          CustomImageView(
            imagePath: darkModeImage,
            height: 40.adaptSize,
            width: 40.adaptSize,
          ),
          Padding(
            padding: EdgeInsets.only(
              left: 8.h,
              top: 8.v,
              bottom: 7.v,
            ),
            child: Text(
              darkModeText,
              style: theme.textTheme.titleMedium!.copyWith(
                color: theme.colorScheme.onPrimaryContainer,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
