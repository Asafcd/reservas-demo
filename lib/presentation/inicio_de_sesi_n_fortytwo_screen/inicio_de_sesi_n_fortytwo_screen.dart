import 'bloc/inicio_de_sesi_n_fortytwo_bloc.dart';
import 'models/inicio_de_sesi_n_fortytwo_model.dart';
import 'package:asaf_s_application2/core/app_export.dart';
import 'package:asaf_s_application2/core/utils/validation_functions.dart';
import 'package:asaf_s_application2/presentation/inicio_de_sesi_n_forty_page/inicio_de_sesi_n_forty_page.dart';
import 'package:asaf_s_application2/presentation/inicio_de_sesi_n_fortynine_page/inicio_de_sesi_n_fortynine_page.dart';
import 'package:asaf_s_application2/presentation/inicio_de_sesi_n_ninetytwo_page/inicio_de_sesi_n_ninetytwo_page.dart';
import 'package:asaf_s_application2/presentation/inicio_de_sesi_n_twentyone_page/inicio_de_sesi_n_twentyone_page.dart';
import 'package:asaf_s_application2/widgets/app_bar/appbar_leading_image.dart';
import 'package:asaf_s_application2/widgets/app_bar/appbar_title.dart';
import 'package:asaf_s_application2/widgets/app_bar/appbar_trailing_image.dart';
import 'package:asaf_s_application2/widgets/app_bar/custom_app_bar.dart';
import 'package:asaf_s_application2/widgets/custom_bottom_bar.dart';
import 'package:asaf_s_application2/widgets/custom_elevated_button.dart';
import 'package:asaf_s_application2/widgets/custom_floating_text_field.dart';
import 'package:asaf_s_application2/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';

class InicioDeSesiNFortytwoScreen extends StatelessWidget {
  InicioDeSesiNFortytwoScreen({Key? key})
      : super(
          key: key,
        );

  GlobalKey<NavigatorState> navigatorKey = GlobalKey();

  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  static Widget builder(BuildContext context) {
    return BlocProvider<InicioDeSesiNFortytwoBloc>(
      create: (context) => InicioDeSesiNFortytwoBloc(InicioDeSesiNFortytwoState(
        inicioDeSesiNFortytwoModelObj: InicioDeSesiNFortytwoModel(),
      ))
        ..add(InicioDeSesiNFortytwoInitialEvent()),
      child: InicioDeSesiNFortytwoScreen(),
    );
  }

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        backgroundColor: theme.colorScheme.primaryContainer,
        resizeToAvoidBottomInset: false,
        appBar: _buildAppBar(context),
        body: Form(
          key: _formKey,
          child: SingleChildScrollView(
            child: Container(
              height: 1264.v,
              width: 412.h,
              margin: EdgeInsets.symmetric(horizontal: 8.h),
              child: Stack(
                alignment: Alignment.topCenter,
                children: [
                  Align(
                    alignment: Alignment.bottomCenter,
                    child: Padding(
                      padding: EdgeInsets.symmetric(horizontal: 16.h),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Align(
                            alignment: Alignment.centerLeft,
                            child: Text(
                              "msg_datos_de_la_cuenta".tr,
                              style: theme.textTheme.bodyLarge,
                            ),
                          ),
                          SizedBox(height: 17.v),
                          _buildUserName(context),
                          SizedBox(height: 14.v),
                          _buildTextField(context),
                          SizedBox(height: 14.v),
                          _buildCode1(context),
                          SizedBox(height: 14.v),
                          _buildEmail(context),
                          SizedBox(height: 25.v),
                          Align(
                            alignment: Alignment.centerLeft,
                            child: Text(
                              "lbl_datos_de_pago".tr,
                              style: theme.textTheme.bodyLarge,
                            ),
                          ),
                          SizedBox(height: 15.v),
                          _buildCardNumber(context),
                          SizedBox(height: 14.v),
                          Align(
                            alignment: Alignment.centerLeft,
                            child: Padding(
                              padding: EdgeInsets.only(right: 92.h),
                              child: Row(
                                children: [
                                  _buildExpirationDate(context),
                                  _buildZipcode(context),
                                  Spacer(),
                                  _buildCvv(context),
                                ],
                              ),
                            ),
                          ),
                          SizedBox(height: 25.v),
                          Align(
                            alignment: Alignment.centerLeft,
                            child: Text(
                              "lbl_detalle_de_pago".tr,
                              style: theme.textTheme.bodyLarge,
                            ),
                          ),
                          SizedBox(height: 22.v),
                          _buildVerQR1(context),
                          SizedBox(height: 24.v),
                          _buildListaModal(
                            context,
                            foodName: "msg_hamburguesa_de_pollo".tr,
                            price: "msg_sin_pepinillos_pan".tr,
                            zeroText: "lbl_1".tr,
                          ),
                          SizedBox(height: 24.v),
                          _buildListaModal(
                            context,
                            foodName: "lbl_sushi".tr,
                            price: "lbl_120_00_mxn".tr,
                            zeroText: "lbl_0".tr,
                          ),
                          SizedBox(height: 24.v),
                          _buildListaModal2(context),
                          SizedBox(height: 24.v),
                          _buildActions(context),
                        ],
                      ),
                    ),
                  ),
                  Align(
                    alignment: Alignment.topCenter,
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
        bottomNavigationBar: Padding(
          padding: EdgeInsets.symmetric(horizontal: 8.h),
          child: _buildBottomBar(context),
        ),
      ),
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
  Widget _buildUserName(BuildContext context) {
    return BlocSelector<InicioDeSesiNFortytwoBloc, InicioDeSesiNFortytwoState,
        TextEditingController?>(
      selector: (state) => state.userNameController,
      builder: (context, userNameController) {
        return CustomFloatingTextField(
          controller: userNameController,
          labelText: "msg_nombre_del_usuario".tr,
          labelStyle: CustomTextStyles.bodyLargeGray9000116,
          hintText: "msg_nombre_del_usuario".tr,
          contentPadding: EdgeInsets.fromLTRB(16.h, 15.v, 16.h, 16.v),
        );
      },
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
                alignment: Alignment.topLeft,
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
                    alignment: Alignment.topLeft,
                    child: Container(
                      margin: EdgeInsets.only(left: 12.h),
                      padding: EdgeInsets.symmetric(horizontal: 4.h),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "msg_asientos_reservados".tr,
                            style: CustomTextStyles.bodySmallGray800,
                          ),
                          SizedBox(height: 7.v),
                          Text(
                            "lbl_6".tr,
                            style: CustomTextStyles.bodyLargeGray9000116,
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

  /// Section Widget
  Widget _buildCode(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: 1.v),
      child: BlocSelector<InicioDeSesiNFortytwoBloc, InicioDeSesiNFortytwoState,
          TextEditingController?>(
        selector: (state) => state.codeController,
        builder: (context, codeController) {
          return CustomFloatingTextField(
            width: 80.h,
            controller: codeController,
            labelText: "lbl_c_digo".tr,
            labelStyle: CustomTextStyles.bodyLargeGray90001,
            hintText: "lbl_c_digo".tr,
            hintStyle: CustomTextStyles.bodyLargeGray90001,
            contentPadding: EdgeInsets.fromLTRB(8.h, 16.v, 8.h, 15.v),
            borderDecoration: FloatingTextFormFieldStyleHelper.outlineGrayTL4,
            filled: true,
            fillColor: theme.colorScheme.primaryContainer,
          );
        },
      ),
    );
  }

  /// Section Widget
  Widget _buildPhone(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: EdgeInsets.only(left: 32.h),
        child: BlocSelector<InicioDeSesiNFortytwoBloc,
            InicioDeSesiNFortytwoState, TextEditingController?>(
          selector: (state) => state.phoneController,
          builder: (context, phoneController) {
            return CustomFloatingTextField(
              controller: phoneController,
              labelText: "lbl_tel_fono".tr,
              labelStyle: CustomTextStyles.bodyLargeGray9000116,
              hintText: "lbl_tel_fono".tr,
            );
          },
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildCode1(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        _buildCode(context),
        _buildPhone(context),
      ],
    );
  }

  /// Section Widget
  Widget _buildEmail(BuildContext context) {
    return BlocSelector<InicioDeSesiNFortytwoBloc, InicioDeSesiNFortytwoState,
        TextEditingController?>(
      selector: (state) => state.emailController,
      builder: (context, emailController) {
        return CustomFloatingTextField(
          controller: emailController,
          labelText: "lbl_correo".tr,
          labelStyle: CustomTextStyles.bodyLargeGray9000116,
          hintText: "lbl_correo".tr,
          borderDecoration:
              FloatingTextFormFieldStyleHelper.fillPrimaryContainer,
          filled: true,
          fillColor: theme.colorScheme.primaryContainer,
        );
      },
    );
  }

  /// Section Widget
  Widget _buildCardNumber(BuildContext context) {
    return BlocSelector<InicioDeSesiNFortytwoBloc, InicioDeSesiNFortytwoState,
        TextEditingController?>(
      selector: (state) => state.cardNumberController,
      builder: (context, cardNumberController) {
        return CustomFloatingTextField(
          controller: cardNumberController,
          labelText: "msg_n_mero_de_tarjeta".tr,
          labelStyle: CustomTextStyles.bodyLargeGray9000116,
          hintText: "msg_n_mero_de_tarjeta".tr,
          suffix: Container(
            margin: EdgeInsets.symmetric(horizontal: 12.h),
            child: CustomImageView(
              imagePath: ImageConstant.imgEye,
              height: 24.adaptSize,
              width: 24.adaptSize,
            ),
          ),
          suffixConstraints: BoxConstraints(
            maxHeight: 64.v,
          ),
          borderDecoration:
              FloatingTextFormFieldStyleHelper.fillPrimaryContainer,
          filled: true,
          fillColor: theme.colorScheme.primaryContainer,
        );
      },
    );
  }

  /// Section Widget
  Widget _buildExpirationDate(BuildContext context) {
    return BlocSelector<InicioDeSesiNFortytwoBloc, InicioDeSesiNFortytwoState,
        TextEditingController?>(
      selector: (state) => state.expirationDateController,
      builder: (context, expirationDateController) {
        return CustomFloatingTextField(
          width: 80.h,
          controller: expirationDateController,
          labelText: "lbl_expira".tr,
          labelStyle: CustomTextStyles.bodyLargeGray90001,
          hintText: "lbl_expira".tr,
          hintStyle: CustomTextStyles.bodyLargeGray90001,
          contentPadding: EdgeInsets.fromLTRB(8.h, 16.v, 8.h, 15.v),
          borderDecoration: FloatingTextFormFieldStyleHelper.outlineGrayTL4,
          filled: true,
          fillColor: theme.colorScheme.primaryContainer,
        );
      },
    );
  }

  /// Section Widget
  Widget _buildZipcode(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        left: 16.h,
        top: 9.v,
      ),
      child: BlocSelector<InicioDeSesiNFortytwoBloc, InicioDeSesiNFortytwoState,
          TextEditingController?>(
        selector: (state) => state.zipcodeController,
        builder: (context, zipcodeController) {
          return CustomTextFormField(
            width: 80.h,
            controller: zipcodeController,
            hintText: "lbl_2027".tr,
            hintStyle: CustomTextStyles.bodyLargeGray90001,
            contentPadding: EdgeInsets.symmetric(
              horizontal: 8.h,
              vertical: 16.v,
            ),
          );
        },
      ),
    );
  }

  /// Section Widget
  Widget _buildCvv(BuildContext context) {
    return BlocSelector<InicioDeSesiNFortytwoBloc, InicioDeSesiNFortytwoState,
        TextEditingController?>(
      selector: (state) => state.cvvController,
      builder: (context, cvvController) {
        return CustomFloatingTextField(
          width: 80.h,
          controller: cvvController,
          labelText: "lbl_cvv".tr,
          labelStyle: CustomTextStyles.bodyMediumGray800,
          hintText: "lbl_cvv".tr,
          textInputAction: TextInputAction.done,
          textInputType: TextInputType.visiblePassword,
          obscureText: true,
          validator: (value) {
            if (value == null || (!isValidPassword(value, isRequired: true))) {
              return "err_msg_please_enter_valid_password".tr;
            }
            return null;
          },
          contentPadding: EdgeInsets.fromLTRB(8.h, 13.v, 8.h, 18.v),
          borderDecoration: FloatingTextFormFieldStyleHelper.outlineGrayTL4,
          filled: true,
          fillColor: theme.colorScheme.primaryContainer,
        );
      },
    );
  }

  /// Section Widget
  Widget _buildVerQR(BuildContext context) {
    return CustomElevatedButton(
      width: 121.h,
      text: "lbl_ver_qr".tr,
      leftIcon: Container(
        margin: EdgeInsets.only(right: 12.h),
        child: CustomImageView(
          imagePath: ImageConstant.imgPrinter,
          height: 24.adaptSize,
          width: 24.adaptSize,
        ),
      ),
      alignment: Alignment.topRight,
    );
  }

  /// Section Widget
  Widget _buildVerQR1(BuildContext context) {
    return SizedBox(
      height: 81.v,
      width: 380.h,
      child: Stack(
        alignment: Alignment.topRight,
        children: [
          Align(
            alignment: Alignment.center,
            child: Container(
              margin: EdgeInsets.only(top: 1.v),
              padding: EdgeInsets.symmetric(
                horizontal: 15.h,
                vertical: 16.v,
              ),
              decoration: BoxDecoration(
                borderRadius: BorderRadiusStyle.roundedBorder18,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CustomImageView(
                    imagePath: ImageConstant.imgThumbsUp,
                    height: 48.adaptSize,
                    width: 48.adaptSize,
                  ),
                  Container(
                    width: 177.h,
                    margin: EdgeInsets.only(
                      left: 20.h,
                      top: 6.v,
                      bottom: 6.v,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(
                          height: 34.v,
                          width: 163.h,
                          child: Stack(
                            alignment: Alignment.bottomLeft,
                            children: [
                              Align(
                                alignment: Alignment.topCenter,
                                child: Text(
                                  "msg_hamburguesa_de_pollo".tr,
                                  style: CustomTextStyles
                                      .titleSmallOnPrimaryMedium,
                                ),
                              ),
                              Align(
                                alignment: Alignment.bottomLeft,
                                child: Text(
                                  "lbl_80_00_mxn".tr,
                                  style: CustomTextStyles.labelMediumOnPrimary,
                                ),
                              ),
                            ],
                          ),
                        ),
                        CustomImageView(
                          imagePath:
                              ImageConstant.imgFlechaSeleccionarOnprimary,
                          height: 4.v,
                          width: 8.h,
                          margin: EdgeInsets.only(
                            left: 6.h,
                            top: 7.v,
                            bottom: 22.v,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    width: 77.h,
                    margin: EdgeInsets.only(
                      left: 26.h,
                      top: 11.v,
                      bottom: 11.v,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        CustomImageView(
                          imagePath: ImageConstant.imgRemove,
                          height: 24.adaptSize,
                          width: 24.adaptSize,
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: 11.h),
                          child: Text(
                            "lbl_1".tr,
                            style: CustomTextStyles.titleMediumOnPrimary,
                          ),
                        ),
                        CustomImageView(
                          imagePath: ImageConstant.imgPlus,
                          height: 24.adaptSize,
                          width: 24.adaptSize,
                          margin: EdgeInsets.only(left: 12.h),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          _buildVerQR(context),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildListaModal2(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 24.h,
        vertical: 16.v,
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadiusStyle.roundedBorder18,
      ),
      child: Row(
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgRectangle12416,
            height: 56.adaptSize,
            width: 56.adaptSize,
            margin: EdgeInsets.symmetric(vertical: 1.v),
          ),
          Container(
            width: 208.h,
            margin: EdgeInsets.only(left: 10.h),
            child: RichText(
              text: TextSpan(
                children: [
                  TextSpan(
                    text: "lbl_mesa_vip".tr,
                    style: theme.textTheme.titleMedium,
                  ),
                  TextSpan(
                    text: "msg_150_00_mxn_lorem".tr,
                    style: theme.textTheme.bodySmall,
                  ),
                ],
              ),
              textAlign: TextAlign.left,
            ),
          ),
          Container(
            height: 24.adaptSize,
            width: 24.adaptSize,
            margin: EdgeInsets.only(
              left: 22.h,
              top: 17.v,
              bottom: 17.v,
            ),
            child: Stack(
              alignment: Alignment.center,
              children: [
                Align(
                  alignment: Alignment.center,
                  child: Container(
                    height: 18.adaptSize,
                    width: 18.adaptSize,
                    decoration: BoxDecoration(
                      color: theme.colorScheme.primary,
                      borderRadius: BorderRadius.circular(
                        2.h,
                      ),
                    ),
                  ),
                ),
                CustomImageView(
                  imagePath: ImageConstant.imgIconsCheckSmall,
                  height: 24.adaptSize,
                  width: 24.adaptSize,
                  alignment: Alignment.center,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildActions(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 36.h,
        vertical: 34.v,
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadiusStyle.roundedBorder28,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Text(
            "lbl_cancelar".tr,
            textAlign: TextAlign.center,
            style: theme.textTheme.titleSmall,
          ),
          Padding(
            padding: EdgeInsets.only(left: 32.h),
            child: Text(
              "lbl_aceptar".tr,
              textAlign: TextAlign.center,
              style: theme.textTheme.titleSmall,
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildBottomBar(BuildContext context) {
    return CustomBottomBar(
      onChanged: (BottomBarEnum type) {
        Navigator.pushNamed(
            navigatorKey.currentContext!, getCurrentRoute(type));
      },
    );
  }

  /// Common widget
  Widget _buildListaModal(
    BuildContext context, {
    required String foodName,
    required String price,
    required String zeroText,
  }) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 15.h,
        vertical: 16.v,
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadiusStyle.roundedBorder18,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgThumbsUp,
            height: 48.adaptSize,
            width: 48.adaptSize,
          ),
          Padding(
            padding: EdgeInsets.only(
              left: 20.h,
              top: 6.v,
              bottom: 6.v,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Text(
                      foodName,
                      style:
                          CustomTextStyles.titleSmallOnPrimaryMedium.copyWith(
                        color: theme.colorScheme.onPrimary,
                      ),
                    ),
                    CustomImageView(
                      imagePath: ImageConstant.imgFlechaSeleccionarOnprimary,
                      height: 21.adaptSize,
                      width: 21.adaptSize,
                    ),
                  ],
                ),
                Text(
                  price,
                  style: CustomTextStyles.labelMediumOnPrimary.copyWith(
                    color: theme.colorScheme.onPrimary,
                  ),
                ),
              ],
            ),
          ),
          CustomImageView(
            imagePath: ImageConstant.imgRemove,
            height: 24.adaptSize,
            width: 24.adaptSize,
            margin: EdgeInsets.only(
              left: 20.h,
              top: 12.v,
              bottom: 12.v,
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(vertical: 12.v),
            child: Text(
              zeroText,
              textAlign: TextAlign.center,
              style: CustomTextStyles.titleMediumOnPrimary.copyWith(
                color: theme.colorScheme.onPrimary,
              ),
            ),
          ),
          CustomImageView(
            imagePath: ImageConstant.imgPlus,
            height: 24.adaptSize,
            width: 24.adaptSize,
            margin: EdgeInsets.symmetric(vertical: 12.v),
          ),
        ],
      ),
    );
  }

  ///Handling route based on bottom click actions
  String getCurrentRoute(BottomBarEnum type) {
    switch (type) {
      case BottomBarEnum.Promociones:
        return AppRoutes.inicioDeSesiNTwentyonePage;
      case BottomBarEnum.Favoritos:
        return AppRoutes.inicioDeSesiNFortyPage;
      case BottomBarEnum.Cercadem:
        return AppRoutes.inicioDeSesiNFortyninePage;
      case BottomBarEnum.Pickup:
        return AppRoutes.inicioDeSesiNNinetytwoPage;
      default:
        return "/";
    }
  }

  ///Handling page based on route
  Widget getCurrentPage(
    BuildContext context,
    String currentRoute,
  ) {
    switch (currentRoute) {
      case AppRoutes.inicioDeSesiNTwentyonePage:
        return InicioDeSesiNTwentyonePage();
      case AppRoutes.inicioDeSesiNFortyPage:
        return InicioDeSesiNFortyPage();
      case AppRoutes.inicioDeSesiNFortyninePage:
        return InicioDeSesiNFortyninePage();
      case AppRoutes.inicioDeSesiNNinetytwoPage:
        return InicioDeSesiNNinetytwoPage();
      default:
        return DefaultWidget();
    }
  }
}
