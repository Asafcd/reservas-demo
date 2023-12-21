import 'bloc/inicio_de_sesi_n_seventyeight_bloc.dart';
import 'models/inicio_de_sesi_n_seventyeight_model.dart';
import 'package:asaf_s_application2/core/app_export.dart';
import 'package:asaf_s_application2/widgets/custom_elevated_button.dart';
import 'package:flutter/material.dart';

// ignore_for_file: must_be_immutable
class InicioDeSesiNSeventyeightPage extends StatefulWidget {
  const InicioDeSesiNSeventyeightPage({Key? key})
      : super(
          key: key,
        );

  @override
  InicioDeSesiNSeventyeightPageState createState() =>
      InicioDeSesiNSeventyeightPageState();
  static Widget builder(BuildContext context) {
    return BlocProvider<InicioDeSesiNSeventyeightBloc>(
      create: (context) =>
          InicioDeSesiNSeventyeightBloc(InicioDeSesiNSeventyeightState(
        inicioDeSesiNSeventyeightModelObj: InicioDeSesiNSeventyeightModel(),
      ))
            ..add(InicioDeSesiNSeventyeightInitialEvent()),
      child: InicioDeSesiNSeventyeightPage(),
    );
  }
}

class InicioDeSesiNSeventyeightPageState
    extends State<InicioDeSesiNSeventyeightPage>
    with AutomaticKeepAliveClientMixin<InicioDeSesiNSeventyeightPage> {
  @override
  bool get wantKeepAlive => true;
  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return BlocBuilder<InicioDeSesiNSeventyeightBloc,
        InicioDeSesiNSeventyeightState>(
      builder: (context, state) {
        return SafeArea(
          child: Scaffold(
            body: SizedBox(
              width: mediaQueryData.size.width,
              child: SingleChildScrollView(
                child: Padding(
                  padding: EdgeInsets.only(top: 180.v),
                  child: Column(
                    children: [
                      SizedBox(height: 16.v),
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 8.h),
                        child: Column(
                          children: [
                            _buildInformacionDeAlimentos(context),
                            SizedBox(height: 16.v),
                            _buildComponent(context),
                            SizedBox(height: 16.v),
                            Padding(
                              padding: EdgeInsets.symmetric(horizontal: 16.h),
                              child: _buildFotoComida(
                                context,
                                foodImage: ImageConstant.imgThumbsUp,
                                foodName: "lbl_cerveza".tr,
                                foodPrice: "lbl_60_00_mxn".tr,
                                zero: "lbl_0".tr,
                              ),
                            ),
                            SizedBox(height: 16.v),
                            Padding(
                              padding: EdgeInsets.symmetric(horizontal: 16.h),
                              child: _buildFotoComida(
                                context,
                                foodImage: ImageConstant.imgFotoComida,
                                foodName: "lbl_helado".tr,
                                foodPrice: "lbl_80_00_mxn".tr,
                                zero: "lbl_0".tr,
                              ),
                            ),
                            SizedBox(height: 16.v),
                            _buildComponent2(context),
                            SizedBox(height: 16.v),
                            _buildComponent3(context),
                            _buildComponentNinetyNine(context),
                            _buildActions(context),
                          ],
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
  Widget _buildInformacionDeAlimentos(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 16.h),
      padding: EdgeInsets.symmetric(
        horizontal: 15.h,
        vertical: 16.v,
      ),
      decoration: AppDecoration.fillPrimaryContainer.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder18,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          Expanded(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Column(
                  children: [
                    _buildFotoComida1(
                      context,
                      fotoComida: ImageConstant.imgThumbsUp,
                      hamburguesaDePollo: "msg_hamburguesa_de_pollo".tr,
                      price: "lbl_80_00_mxn".tr,
                    ),
                    SizedBox(height: 4.v),
                    CustomElevatedButton(
                      height: 40.v,
                      width: 154.h,
                      text: "lbl_editar_orden".tr,
                      leftIcon: Container(
                        margin: EdgeInsets.only(right: 8.h),
                        child: CustomImageView(
                          imagePath: ImageConstant.imgEdit,
                          height: 18.adaptSize,
                          width: 18.adaptSize,
                        ),
                      ),
                      buttonStyle: CustomButtonStyles.fillPrimary,
                      alignment: Alignment.centerRight,
                    ),
                  ],
                ),
                CustomImageView(
                  imagePath: ImageConstant.imgRemove,
                  height: 24.adaptSize,
                  width: 24.adaptSize,
                  margin: EdgeInsets.only(
                    left: 20.h,
                    top: 12.v,
                    bottom: 56.v,
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              left: 9.h,
              top: 12.v,
              bottom: 55.v,
            ),
            child: Text(
              "lbl_0".tr,
              style: CustomTextStyles.titleMediumOnPrimary,
            ),
          ),
          CustomImageView(
            imagePath: ImageConstant.imgPlus,
            height: 24.adaptSize,
            width: 24.adaptSize,
            margin: EdgeInsets.only(
              left: 9.h,
              top: 12.v,
              bottom: 55.v,
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildComponent(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 16.h),
      padding: EdgeInsets.symmetric(
        horizontal: 15.h,
        vertical: 16.v,
      ),
      decoration: AppDecoration.fillPrimaryContainer.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder18,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        mainAxisSize: MainAxisSize.min,
        children: [
          Expanded(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
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
                      Text(
                        "lbl_sushi".tr,
                        style: CustomTextStyles.titleSmallOnPrimaryMedium,
                      ),
                      Text(
                        "lbl_120_00_mxn".tr,
                        style: CustomTextStyles.labelMediumOnPrimary,
                      ),
                    ],
                  ),
                ),
                Spacer(),
                CustomImageView(
                  imagePath: ImageConstant.imgFlechaSeleccionarOnprimary,
                  height: 21.adaptSize,
                  width: 21.adaptSize,
                  margin: EdgeInsets.only(
                    top: 6.v,
                    bottom: 21.v,
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
            padding: EdgeInsets.only(
              left: 9.h,
              top: 12.v,
              bottom: 11.v,
            ),
            child: Text(
              "lbl_0".tr,
              style: CustomTextStyles.titleMediumOnPrimary,
            ),
          ),
          CustomImageView(
            imagePath: ImageConstant.imgPlus,
            height: 24.adaptSize,
            width: 24.adaptSize,
            margin: EdgeInsets.only(
              left: 9.h,
              top: 12.v,
              bottom: 12.v,
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildComponent2(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 16.h),
      padding: EdgeInsets.symmetric(
        horizontal: 15.h,
        vertical: 16.v,
      ),
      decoration: AppDecoration.fillPrimaryContainer.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder18,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        mainAxisSize: MainAxisSize.min,
        children: [
          _buildFotoComida1(
            context,
            fotoComida: ImageConstant.imgFotoComida,
            hamburguesaDePollo: "msg_tostada_con_aguacate".tr,
            price: "lbl_80_00_mxn".tr,
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
            padding: EdgeInsets.only(
              left: 9.h,
              top: 12.v,
              bottom: 11.v,
            ),
            child: Text(
              "lbl_0".tr,
              style: CustomTextStyles.titleMediumOnPrimary,
            ),
          ),
          CustomImageView(
            imagePath: ImageConstant.imgPlus,
            height: 24.adaptSize,
            width: 24.adaptSize,
            margin: EdgeInsets.only(
              left: 9.h,
              top: 12.v,
              bottom: 12.v,
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildComponent3(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 16.h),
      padding: EdgeInsets.symmetric(
        horizontal: 15.h,
        vertical: 16.v,
      ),
      decoration: AppDecoration.fillPrimaryContainer.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder18,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        mainAxisSize: MainAxisSize.min,
        children: [
          Expanded(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CustomImageView(
                  imagePath: ImageConstant.imgFotoComida,
                  height: 48.adaptSize,
                  width: 48.adaptSize,
                ),
                Padding(
                  padding: EdgeInsets.only(
                    left: 20.h,
                    top: 7.v,
                    bottom: 7.v,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "lbl_orden_de_papas".tr,
                        style: CustomTextStyles.titleSmallOnPrimaryMedium,
                      ),
                      Text(
                        "lbl_60_00_mxn".tr,
                        style: CustomTextStyles.labelMediumOnPrimary,
                      ),
                    ],
                  ),
                ),
                Spacer(),
                CustomImageView(
                  imagePath: ImageConstant.imgFlechaSeleccionarOnprimary,
                  height: 21.adaptSize,
                  width: 21.adaptSize,
                  margin: EdgeInsets.only(
                    top: 6.v,
                    bottom: 21.v,
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
            padding: EdgeInsets.only(
              left: 9.h,
              top: 12.v,
              bottom: 11.v,
            ),
            child: Text(
              "lbl_0".tr,
              style: CustomTextStyles.titleMediumOnPrimary,
            ),
          ),
          CustomImageView(
            imagePath: ImageConstant.imgPlus,
            height: 24.adaptSize,
            width: 24.adaptSize,
            margin: EdgeInsets.only(
              left: 9.h,
              top: 12.v,
              bottom: 12.v,
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildComponentNinetyNine(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 24.h,
        vertical: 14.v,
      ),
      decoration: AppDecoration.fillPrimaryContainer.copyWith(
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
    );
  }

  /// Section Widget
  Widget _buildActions(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 16.h),
      padding: EdgeInsets.symmetric(
        horizontal: 36.h,
        vertical: 34.v,
      ),
      decoration: AppDecoration.fillPrimaryContainer.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder28,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        mainAxisSize: MainAxisSize.min,
        children: [
          Padding(
            padding: EdgeInsets.only(left: 151.h),
            child: Text(
              "lbl_cancelar".tr,
              textAlign: TextAlign.center,
              style: theme.textTheme.titleSmall,
            ),
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

  /// Common widget
  Widget _buildFotoComida(
    BuildContext context, {
    required String foodImage,
    required String foodName,
    required String foodPrice,
    required String zero,
  }) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 15.h,
        vertical: 16.v,
      ),
      decoration: AppDecoration.fillPrimaryContainer.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder18,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        mainAxisSize: MainAxisSize.min,
        children: [
          Expanded(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CustomImageView(
                  imagePath: foodImage,
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
                      Text(
                        foodName,
                        style:
                            CustomTextStyles.titleSmallOnPrimaryMedium.copyWith(
                          color: theme.colorScheme.onPrimary,
                        ),
                      ),
                      Text(
                        foodPrice,
                        style: CustomTextStyles.labelMediumOnPrimary.copyWith(
                          color: theme.colorScheme.onPrimary,
                        ),
                      ),
                    ],
                  ),
                ),
                Spacer(),
                CustomImageView(
                  imagePath: ImageConstant.imgFlechaSeleccionarOnprimary,
                  height: 21.adaptSize,
                  width: 21.adaptSize,
                  margin: EdgeInsets.only(
                    top: 6.v,
                    bottom: 21.v,
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
            padding: EdgeInsets.only(
              left: 9.h,
              top: 12.v,
              bottom: 11.v,
            ),
            child: Text(
              zero,
              style: CustomTextStyles.titleMediumOnPrimary.copyWith(
                color: theme.colorScheme.onPrimary,
              ),
            ),
          ),
          CustomImageView(
            imagePath: ImageConstant.imgPlus,
            height: 24.adaptSize,
            width: 24.adaptSize,
            margin: EdgeInsets.only(
              left: 9.h,
              top: 12.v,
              bottom: 12.v,
            ),
          ),
        ],
      ),
    );
  }

  /// Common widget
  Widget _buildFotoComida1(
    BuildContext context, {
    required String fotoComida,
    required String hamburguesaDePollo,
    required String price,
  }) {
    return Expanded(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CustomImageView(
            imagePath: fotoComida,
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
                    Padding(
                      padding: EdgeInsets.only(top: 1.v),
                      child: Text(
                        hamburguesaDePollo,
                        style:
                            CustomTextStyles.titleSmallOnPrimaryMedium.copyWith(
                          color: theme.colorScheme.onPrimary,
                        ),
                      ),
                    ),
                    CustomImageView(
                      imagePath: ImageConstant.imgFlechaSeleccionarOnprimary,
                      height: 21.adaptSize,
                      width: 21.adaptSize,
                      margin: EdgeInsets.only(left: 2.h),
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
        ],
      ),
    );
  }
}
