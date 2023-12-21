import 'bloc/inicio_de_sesi_n_sixtyfour_bloc.dart';
import 'models/inicio_de_sesi_n_sixtyfour_model.dart';
import 'package:asaf_s_application2/core/app_export.dart';
import 'package:asaf_s_application2/widgets/app_bar/appbar_title_edittext.dart';
import 'package:asaf_s_application2/widgets/app_bar/custom_app_bar.dart';
import 'package:asaf_s_application2/widgets/custom_checkbox_button.dart';
import 'package:asaf_s_application2/widgets/custom_floating_text_field.dart';
import 'package:asaf_s_application2/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';

class InicioDeSesiNSixtyfourScreen extends StatelessWidget {
  const InicioDeSesiNSixtyfourScreen({Key? key})
      : super(
          key: key,
        );

  static Widget builder(BuildContext context) {
    return BlocProvider<InicioDeSesiNSixtyfourBloc>(
      create: (context) =>
          InicioDeSesiNSixtyfourBloc(InicioDeSesiNSixtyfourState(
        inicioDeSesiNSixtyfourModelObj: InicioDeSesiNSixtyfourModel(),
      ))
            ..add(InicioDeSesiNSixtyfourInitialEvent()),
      child: InicioDeSesiNSixtyfourScreen(),
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
                          SizedBox(height: 16.v),
                          _buildFirstName(context),
                          SizedBox(height: 16.v),
                          _buildMothersLastName(context),
                          SizedBox(height: 16.v),
                          _buildMothersLastName2(context),
                          SizedBox(height: 14.v),
                          _buildCode1(context),
                          SizedBox(height: 14.v),
                          _buildEmail(context),
                          SizedBox(height: 24.v),
                          _buildUpload(context),
                          SizedBox(height: 22.v),
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
                                  _buildYear(context),
                                  Spacer(),
                                  _buildCvv(context),
                                ],
                              ),
                            ),
                          ),
                          SizedBox(height: 23.v),
                          _buildUpload1(context),
                          SizedBox(height: 22.v),
                          Align(
                            alignment: Alignment.centerLeft,
                            child: Text(
                              "lbl_detalle_de_pago".tr,
                              style: theme.textTheme.bodyLarge,
                            ),
                          ),
                          SizedBox(height: 23.v),
                          _buildInformacionDeAlimentos(
                            context,
                            hamburguesaDePollo: "msg_hamburguesa_de_pollo".tr,
                            price: "lbl_80_00_mxn".tr,
                            zero: "lbl_1".tr,
                          ),
                          SizedBox(height: 24.v),
                          _buildInformacionDeAlimentos(
                            context,
                            hamburguesaDePollo: "msg_hamburguesa_de_pollo".tr,
                            price: "msg_sin_pepinillos_pan".tr,
                            zero: "lbl_1".tr,
                          ),
                          SizedBox(height: 24.v),
                          _buildInformacionDeAlimentos(
                            context,
                            hamburguesaDePollo: "lbl_sushi".tr,
                            price: "lbl_120_00_mxn".tr,
                            zero: "lbl_0".tr,
                          ),
                          SizedBox(height: 24.v),
                          _buildListaModal(context),
                          SizedBox(height: 24.v),
                          _buildActions(context),
                        ],
                      ),
                    ),
                  ),
                  _buildComponent1(context),
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
  Widget _buildFirstName(BuildContext context) {
    return BlocSelector<InicioDeSesiNSixtyfourBloc, InicioDeSesiNSixtyfourState,
        TextEditingController?>(
      selector: (state) => state.firstNameController,
      builder: (context, firstNameController) {
        return CustomFloatingTextField(
          controller: firstNameController,
          labelText: "lbl_nombre_s".tr,
          labelStyle: CustomTextStyles.bodyLargeGray9000116,
          hintText: "lbl_nombre_s".tr,
        );
      },
    );
  }

  /// Section Widget
  Widget _buildMothersLastName(BuildContext context) {
    return BlocSelector<InicioDeSesiNSixtyfourBloc, InicioDeSesiNSixtyfourState,
        TextEditingController?>(
      selector: (state) => state.mothersLastNameController,
      builder: (context, mothersLastNameController) {
        return CustomFloatingTextField(
          controller: mothersLastNameController,
          labelText: "msg_apellido_paterno".tr,
          labelStyle: CustomTextStyles.bodyLargeGray9000116,
          hintText: "msg_apellido_paterno".tr,
        );
      },
    );
  }

  /// Section Widget
  Widget _buildMothersLastName2(BuildContext context) {
    return BlocSelector<InicioDeSesiNSixtyfourBloc, InicioDeSesiNSixtyfourState,
        TextEditingController?>(
      selector: (state) => state.mothersLastName2Controller,
      builder: (context, mothersLastName2Controller) {
        return CustomFloatingTextField(
          controller: mothersLastName2Controller,
          labelText: "msg_apellido_materno".tr,
          labelStyle: CustomTextStyles.bodyLargeGray9000116,
          hintText: "msg_apellido_materno".tr,
          borderDecoration:
              FloatingTextFormFieldStyleHelper.fillPrimaryContainer,
          filled: true,
          fillColor: theme.colorScheme.primaryContainer,
        );
      },
    );
  }

  /// Section Widget
  Widget _buildCode(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: 1.v),
      child: BlocSelector<InicioDeSesiNSixtyfourBloc,
          InicioDeSesiNSixtyfourState, TextEditingController?>(
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
        child: BlocSelector<InicioDeSesiNSixtyfourBloc,
            InicioDeSesiNSixtyfourState, TextEditingController?>(
          selector: (state) => state.phoneController,
          builder: (context, phoneController) {
            return CustomFloatingTextField(
              controller: phoneController,
              labelText: "lbl_tel_fono".tr,
              labelStyle: CustomTextStyles.bodyLargeGray9000116,
              hintText: "lbl_tel_fono".tr,
              borderDecoration:
                  FloatingTextFormFieldStyleHelper.fillPrimaryContainer,
              filled: true,
              fillColor: theme.colorScheme.primaryContainer,
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
    return BlocSelector<InicioDeSesiNSixtyfourBloc, InicioDeSesiNSixtyfourState,
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
  Widget _buildUpload(BuildContext context) {
    return Align(
      alignment: Alignment.centerLeft,
      child: Padding(
        padding: EdgeInsets.only(right: 107.h),
        child: BlocSelector<InicioDeSesiNSixtyfourBloc,
            InicioDeSesiNSixtyfourState, bool?>(
          selector: (state) => state.upload,
          builder: (context, upload) {
            return CustomCheckboxButton(
              alignment: Alignment.centerLeft,
              text: "msg_datos_mismos_que".tr,
              value: upload,
              onChange: (value) {
                context
                    .read<InicioDeSesiNSixtyfourBloc>()
                    .add(ChangeCheckBoxEvent(value: value));
              },
            );
          },
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildCardNumber(BuildContext context) {
    return BlocSelector<InicioDeSesiNSixtyfourBloc, InicioDeSesiNSixtyfourState,
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
    return BlocSelector<InicioDeSesiNSixtyfourBloc, InicioDeSesiNSixtyfourState,
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
  Widget _buildYear(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        left: 16.h,
        top: 9.v,
      ),
      child: BlocSelector<InicioDeSesiNSixtyfourBloc,
          InicioDeSesiNSixtyfourState, TextEditingController?>(
        selector: (state) => state.yearController,
        builder: (context, yearController) {
          return CustomTextFormField(
            width: 80.h,
            controller: yearController,
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
  Widget _buildCvv(BuildContext context) {
    return BlocSelector<InicioDeSesiNSixtyfourBloc, InicioDeSesiNSixtyfourState,
        TextEditingController?>(
      selector: (state) => state.cvvController,
      builder: (context, cvvController) {
        return CustomFloatingTextField(
          width: 80.h,
          controller: cvvController,
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
  Widget _buildUpload1(BuildContext context) {
    return Align(
      alignment: Alignment.centerLeft,
      child: BlocSelector<InicioDeSesiNSixtyfourBloc,
          InicioDeSesiNSixtyfourState, bool?>(
        selector: (state) => state.upload1,
        builder: (context, upload1) {
          return CustomCheckboxButton(
            alignment: Alignment.centerLeft,
            text: "msg_guardar_datos_de".tr,
            value: upload1,
            onChange: (value) {
              context
                  .read<InicioDeSesiNSixtyfourBloc>()
                  .add(ChangeCheckBox1Event(value: value));
            },
          );
        },
      ),
    );
  }

  /// Section Widget
  Widget _buildListaModal(BuildContext context) {
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
  Widget _buildComponent1(BuildContext context) {
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
      title: BlocSelector<InicioDeSesiNSixtyfourBloc,
          InicioDeSesiNSixtyfourState, TextEditingController?>(
        selector: (state) => state.productValueController,
        builder: (context, productValueController) {
          return AppbarTitleEdittext(
            margin: EdgeInsets.only(bottom: 788.v),
            hintText: "lbl_product".tr,
            controller: productValueController,
          );
        },
      ),
      styleType: Style.bgOutline,
    );
  }

  /// Common widget
  Widget _buildInformacionDeAlimentos(
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
