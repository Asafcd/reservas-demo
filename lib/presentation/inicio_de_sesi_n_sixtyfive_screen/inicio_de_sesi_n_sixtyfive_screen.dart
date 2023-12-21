import 'bloc/inicio_de_sesi_n_sixtyfive_bloc.dart';
import 'models/inicio_de_sesi_n_sixtyfive_model.dart';
import 'package:asaf_s_application2/core/app_export.dart';
import 'package:asaf_s_application2/widgets/app_bar/appbar_title_edittext.dart';
import 'package:asaf_s_application2/widgets/app_bar/custom_app_bar.dart';
import 'package:asaf_s_application2/widgets/custom_checkbox_button.dart';
import 'package:asaf_s_application2/widgets/custom_floating_text_field.dart';
import 'package:asaf_s_application2/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';

class InicioDeSesiNSixtyfiveScreen extends StatelessWidget {
  const InicioDeSesiNSixtyfiveScreen({Key? key})
      : super(
          key: key,
        );

  static Widget builder(BuildContext context) {
    return BlocProvider<InicioDeSesiNSixtyfiveBloc>(
      create: (context) =>
          InicioDeSesiNSixtyfiveBloc(InicioDeSesiNSixtyfiveState(
        inicioDeSesiNSixtyfiveModelObj: InicioDeSesiNSixtyfiveModel(),
      ))
            ..add(InicioDeSesiNSixtyfiveInitialEvent()),
      child: InicioDeSesiNSixtyfiveScreen(),
    );
  }

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        backgroundColor: theme.colorScheme.primaryContainer,
        resizeToAvoidBottomInset: false,
        body: SizedBox(
          width: double.maxFinite,
          child: SingleChildScrollView(
            child: Container(
              height: 1428.v,
              width: 412.h,
              margin: EdgeInsets.symmetric(horizontal: 8.h),
              child: Stack(
                alignment: Alignment.bottomCenter,
                children: [
                  Align(
                    alignment: Alignment.bottomCenter,
                    child: Padding(
                      padding: EdgeInsets.only(
                        left: 13.h,
                        right: 16.h,
                      ),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Align(
                            alignment: Alignment.centerLeft,
                            child: Padding(
                              padding: EdgeInsets.only(left: 3.h),
                              child: Text(
                                "msg_datos_de_la_cuenta".tr,
                                style: theme.textTheme.bodyLarge,
                              ),
                            ),
                          ),
                          SizedBox(height: 16.v),
                          _buildFirstNameTextField(context),
                          SizedBox(height: 16.v),
                          _buildLastNameTextField(context),
                          SizedBox(height: 16.v),
                          _buildMiddleNameTextField(context),
                          SizedBox(height: 14.v),
                          _buildCode(context),
                          SizedBox(height: 14.v),
                          _buildEmailTextField(context),
                          SizedBox(height: 21.v),
                          Align(
                            alignment: Alignment.centerLeft,
                            child: Padding(
                              padding: EdgeInsets.only(right: 107.h),
                              child: Row(
                                children: [
                                  SizedBox(
                                    height: 24.adaptSize,
                                    width: 24.adaptSize,
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
                                              borderRadius:
                                                  BorderRadius.circular(
                                                2.h,
                                              ),
                                            ),
                                          ),
                                        ),
                                        CustomImageView(
                                          imagePath:
                                              ImageConstant.imgIconsCheckSmall,
                                          height: 24.adaptSize,
                                          width: 24.adaptSize,
                                          alignment: Alignment.center,
                                        ),
                                      ],
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(
                                      left: 5.h,
                                      top: 3.v,
                                    ),
                                    child: Text(
                                      "msg_datos_mismos_que".tr,
                                      style: CustomTextStyles.bodyMediumPrimary,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          SizedBox(height: 22.v),
                          Align(
                            alignment: Alignment.centerLeft,
                            child: Padding(
                              padding: EdgeInsets.only(left: 3.h),
                              child: Text(
                                "lbl_datos_de_pago".tr,
                                style: theme.textTheme.bodyLarge,
                              ),
                            ),
                          ),
                          SizedBox(height: 15.v),
                          _buildCardNumberTextField(context),
                          SizedBox(height: 14.v),
                          Align(
                            alignment: Alignment.centerLeft,
                            child: Padding(
                              padding: EdgeInsets.only(
                                left: 3.h,
                                right: 92.h,
                              ),
                              child: Row(
                                children: [
                                  _buildExpiresMonthTextField(context),
                                  _buildExpiresYearTextField(context),
                                  Spacer(),
                                  _buildCvvTextField(context),
                                ],
                              ),
                            ),
                          ),
                          SizedBox(height: 23.v),
                          _buildSaveDataCheckBox(context),
                          SizedBox(height: 22.v),
                          Align(
                            alignment: Alignment.centerLeft,
                            child: Padding(
                              padding: EdgeInsets.only(left: 3.h),
                              child: Text(
                                "lbl_detalle_de_pago".tr,
                                style: theme.textTheme.bodyLarge,
                              ),
                            ),
                          ),
                          SizedBox(height: 23.v),
                          Padding(
                            padding: EdgeInsets.only(left: 3.h),
                            child: _buildInformaciNDeAlimentos(
                              context,
                              hamburguesaDePollo: "msg_hamburguesa_de_pollo".tr,
                              price: "lbl_80_00_mxn".tr,
                              zero: "lbl_1".tr,
                            ),
                          ),
                          SizedBox(height: 24.v),
                          Padding(
                            padding: EdgeInsets.only(left: 3.h),
                            child: _buildInformaciNDeAlimentos(
                              context,
                              hamburguesaDePollo: "msg_hamburguesa_de_pollo".tr,
                              price: "msg_sin_pepinillos_pan".tr,
                              zero: "lbl_1".tr,
                            ),
                          ),
                          SizedBox(height: 24.v),
                          Padding(
                            padding: EdgeInsets.only(left: 3.h),
                            child: _buildInformaciNDeAlimentos(
                              context,
                              hamburguesaDePollo: "lbl_sushi".tr,
                              price: "lbl_120_00_mxn".tr,
                              zero: "lbl_0".tr,
                            ),
                          ),
                          SizedBox(height: 24.v),
                          _buildListaModal(context),
                          SizedBox(height: 24.v),
                          _buildActionsRow(context),
                        ],
                      ),
                    ),
                  ),
                  _buildTotalRow(context),
                  _buildAppBar(context),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildFirstNameTextField(BuildContext context) {
    return BlocSelector<InicioDeSesiNSixtyfiveBloc, InicioDeSesiNSixtyfiveState,
        TextEditingController?>(
      selector: (state) => state.firstNameTextFieldController,
      builder: (context, firstNameTextFieldController) {
        return CustomFloatingTextField(
          controller: firstNameTextFieldController,
          labelText: "lbl_nombre_s".tr,
          labelStyle: CustomTextStyles.bodyLargeGray9000116,
          hintText: "lbl_nombre_s".tr,
          contentPadding: EdgeInsets.fromLTRB(16.h, 15.v, 16.h, 16.v),
        );
      },
    );
  }

  /// Section Widget
  Widget _buildLastNameTextField(BuildContext context) {
    return SizedBox(
      height: 64.v,
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
              height: 64.v,
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
                            "msg_apellido_paterno".tr,
                            style: CustomTextStyles.bodySmallGray800,
                          ),
                          SizedBox(height: 6.v),
                          Text(
                            "lbl_flores".tr,
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
  Widget _buildMiddleNameTextField(BuildContext context) {
    return SizedBox(
      height: 64.v,
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
              height: 64.v,
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
                            "msg_apellido_materno".tr,
                            style: CustomTextStyles.bodySmallGray800,
                          ),
                          SizedBox(height: 5.v),
                          Text(
                            "lbl_g_mez".tr,
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
  Widget _buildCodeTextField(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: 1.v),
      child: BlocSelector<InicioDeSesiNSixtyfiveBloc,
          InicioDeSesiNSixtyfiveState, TextEditingController?>(
        selector: (state) => state.codeTextFieldController,
        builder: (context, codeTextFieldController) {
          return CustomFloatingTextField(
            width: 80.h,
            controller: codeTextFieldController,
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
  Widget _buildPhoneTextField(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 32.h),
      child: BlocSelector<InicioDeSesiNSixtyfiveBloc,
          InicioDeSesiNSixtyfiveState, TextEditingController?>(
        selector: (state) => state.phoneTextFieldController,
        builder: (context, phoneTextFieldController) {
          return CustomFloatingTextField(
            width: 268.h,
            controller: phoneTextFieldController,
            labelText: "lbl_tel_fono".tr,
            labelStyle: CustomTextStyles.bodyLargeGray9000116,
            hintText: "lbl_tel_fono".tr,
          );
        },
      ),
    );
  }

  /// Section Widget
  Widget _buildCode(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        _buildCodeTextField(context),
        _buildPhoneTextField(context),
      ],
    );
  }

  /// Section Widget
  Widget _buildEmailTextField(BuildContext context) {
    return BlocSelector<InicioDeSesiNSixtyfiveBloc, InicioDeSesiNSixtyfiveState,
        TextEditingController?>(
      selector: (state) => state.emailTextFieldController,
      builder: (context, emailTextFieldController) {
        return CustomFloatingTextField(
          controller: emailTextFieldController,
          labelText: "lbl_correo".tr,
          labelStyle: CustomTextStyles.bodyLargeGray9000116,
          hintText: "lbl_correo".tr,
        );
      },
    );
  }

  /// Section Widget
  Widget _buildCardNumberTextField(BuildContext context) {
    return BlocSelector<InicioDeSesiNSixtyfiveBloc, InicioDeSesiNSixtyfiveState,
        TextEditingController?>(
      selector: (state) => state.cardNumberTextFieldController,
      builder: (context, cardNumberTextFieldController) {
        return CustomFloatingTextField(
          controller: cardNumberTextFieldController,
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
        );
      },
    );
  }

  /// Section Widget
  Widget _buildExpiresMonthTextField(BuildContext context) {
    return BlocSelector<InicioDeSesiNSixtyfiveBloc, InicioDeSesiNSixtyfiveState,
        TextEditingController?>(
      selector: (state) => state.expiresMonthTextFieldController,
      builder: (context, expiresMonthTextFieldController) {
        return CustomFloatingTextField(
          width: 80.h,
          controller: expiresMonthTextFieldController,
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
  Widget _buildExpiresYearTextField(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        left: 16.h,
        top: 9.v,
      ),
      child: BlocSelector<InicioDeSesiNSixtyfiveBloc,
          InicioDeSesiNSixtyfiveState, TextEditingController?>(
        selector: (state) => state.expiresYearTextFieldController,
        builder: (context, expiresYearTextFieldController) {
          return CustomTextFormField(
            width: 80.h,
            controller: expiresYearTextFieldController,
            hintText: "lbl_a_o".tr,
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
  Widget _buildCvvTextField(BuildContext context) {
    return BlocSelector<InicioDeSesiNSixtyfiveBloc, InicioDeSesiNSixtyfiveState,
        TextEditingController?>(
      selector: (state) => state.cvvTextFieldController,
      builder: (context, cvvTextFieldController) {
        return CustomFloatingTextField(
          width: 80.h,
          controller: cvvTextFieldController,
          labelText: "lbl_cvv".tr,
          labelStyle: CustomTextStyles.bodyLargeGray90001,
          hintText: "lbl_cvv".tr,
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
  Widget _buildSaveDataCheckBox(BuildContext context) {
    return Align(
      alignment: Alignment.centerLeft,
      child: Padding(
        padding: EdgeInsets.only(left: 3.h),
        child: BlocSelector<InicioDeSesiNSixtyfiveBloc,
            InicioDeSesiNSixtyfiveState, bool?>(
          selector: (state) => state.saveDataCheckBox,
          builder: (context, saveDataCheckBox) {
            return CustomCheckboxButton(
              alignment: Alignment.centerLeft,
              text: "msg_guardar_datos_de".tr,
              value: saveDataCheckBox,
              onChange: (value) {
                context
                    .read<InicioDeSesiNSixtyfiveBloc>()
                    .add(ChangeCheckBoxEvent(value: value));
              },
            );
          },
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildListaModal(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 3.h),
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
  Widget _buildActionsRow(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 3.h),
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
  Widget _buildTotalRow(BuildContext context) {
    return Align(
      alignment: Alignment.bottomCenter,
      child: Container(
        margin: EdgeInsets.only(
          top: 792.v,
          bottom: 576.v,
        ),
        padding: EdgeInsets.symmetric(
          horizontal: 24.h,
          vertical: 14.v,
        ),
        decoration: BoxDecoration(
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
      ),
    );
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
      height: 852.v,
      centerTitle: true,
      title: BlocSelector<InicioDeSesiNSixtyfiveBloc,
          InicioDeSesiNSixtyfiveState, TextEditingController?>(
        selector: (state) => state.productValueEditTextController,
        builder: (context, productValueEditTextController) {
          return AppbarTitleEdittext(
            margin: EdgeInsets.only(bottom: 788.v),
            hintText: "lbl_product".tr,
            controller: productValueEditTextController,
          );
        },
      ),
      styleType: Style.bgOutline,
    );
  }

  /// Common widget
  Widget _buildInformaciNDeAlimentos(
    BuildContext context, {
    required String hamburguesaDePollo,
    required String price,
    required String zero,
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
            margin: EdgeInsets.symmetric(vertical: 16.v),
          ),
          Padding(
            padding: EdgeInsets.only(left: 20.h),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Text(
                      hamburguesaDePollo,
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
                SizedBox(
                  width: 82.h,
                  child: Text(
                    price,
                    maxLines: null,
                    overflow: TextOverflow.ellipsis,
                    style: CustomTextStyles.labelMediumOnPrimary.copyWith(
                      color: theme.colorScheme.onPrimary,
                    ),
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
              top: 28.v,
              bottom: 28.v,
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(vertical: 28.v),
            child: Text(
              zero,
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
            margin: EdgeInsets.symmetric(vertical: 28.v),
          ),
        ],
      ),
    );
  }
}
