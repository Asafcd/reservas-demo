import 'bloc/inicio_de_sesi_n_seventyseven_bloc.dart';
import 'models/inicio_de_sesi_n_seventyseven_model.dart';
import 'package:asaf_s_application2/core/app_export.dart';
import 'package:asaf_s_application2/widgets/custom_elevated_button.dart';
import 'package:flutter/material.dart';

// ignore_for_file: must_be_immutable
class InicioDeSesiNSeventysevenPage extends StatefulWidget {
  const InicioDeSesiNSeventysevenPage({Key? key})
      : super(
          key: key,
        );

  @override
  InicioDeSesiNSeventysevenPageState createState() =>
      InicioDeSesiNSeventysevenPageState();
  static Widget builder(BuildContext context) {
    return BlocProvider<InicioDeSesiNSeventysevenBloc>(
      create: (context) =>
          InicioDeSesiNSeventysevenBloc(InicioDeSesiNSeventysevenState(
        inicioDeSesiNSeventysevenModelObj: InicioDeSesiNSeventysevenModel(),
      ))
            ..add(InicioDeSesiNSeventysevenInitialEvent()),
      child: InicioDeSesiNSeventysevenPage(),
    );
  }
}

class InicioDeSesiNSeventysevenPageState
    extends State<InicioDeSesiNSeventysevenPage>
    with AutomaticKeepAliveClientMixin<InicioDeSesiNSeventysevenPage> {
  @override
  bool get wantKeepAlive => true;
  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return BlocBuilder<InicioDeSesiNSeventysevenBloc,
        InicioDeSesiNSeventysevenState>(
      builder: (context, state) {
        return SafeArea(
          child: Scaffold(
            body: Container(
              width: double.maxFinite,
              margin: EdgeInsets.only(top: 180.v),
              decoration: AppDecoration.fillGray,
              child: Column(
                children: [
                  SizedBox(height: 16.v),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 8.h),
                    child: Column(
                      children: [
                        Padding(
                          padding: EdgeInsets.symmetric(horizontal: 16.h),
                          child: _buildFotoComida1(
                            context,
                            foodImage: ImageConstant.imgThumbsUp,
                            foodName: "msg_hamburguesa_de_pollo".tr,
                            price: "lbl_80_00_mxn".tr,
                            quantity: "lbl_0".tr,
                          ),
                        ),
                        SizedBox(height: 16.v),
                        _buildInformacionDeAlimentos(context),
                        SizedBox(height: 16.v),
                        Padding(
                          padding: EdgeInsets.symmetric(horizontal: 16.h),
                          child: _buildFotoComida(
                            context,
                            foodImage: ImageConstant.imgThumbsUp,
                            foodName: "lbl_cerveza".tr,
                            foodPrice: "lbl_60_00_mxn".tr,
                            quantityZero: "lbl_0".tr,
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
                            quantityZero: "lbl_0".tr,
                          ),
                        ),
                        SizedBox(height: 16.v),
                        Padding(
                          padding: EdgeInsets.symmetric(horizontal: 16.h),
                          child: _buildFotoComida1(
                            context,
                            foodImage: ImageConstant.imgFotoComida,
                            foodName: "msg_tostada_con_aguacate".tr,
                            price: "lbl_80_00_mxn".tr,
                            quantity: "lbl_0".tr,
                          ),
                        ),
                        SizedBox(height: 16.v),
                        _buildVerMenu(context),
                        SizedBox(height: 1.v),
                        _buildActions(context),
                        SizedBox(height: 8.v),
                        _buildComponentNinetyNine(context),
                      ],
                    ),
                  ),
                ],
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
  Widget _buildVerMenu(BuildContext context) {
    return SizedBox(
      height: 95.v,
      width: 380.h,
      child: Stack(
        alignment: Alignment.bottomRight,
        children: [
          Align(
            alignment: Alignment.topCenter,
            child: Container(
              margin: EdgeInsets.only(bottom: 15.v),
              padding: EdgeInsets.symmetric(
                horizontal: 15.h,
                vertical: 16.v,
              ),
              decoration: AppDecoration.fillPrimaryContainer.copyWith(
                borderRadius: BorderRadiusStyle.roundedBorder18,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(
                    width: 182.h,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        CustomImageView(
                          imagePath: ImageConstant.imgFotoComida,
                          height: 48.adaptSize,
                          width: 48.adaptSize,
                        ),
                        Padding(
                          padding: EdgeInsets.symmetric(vertical: 7.v),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "lbl_orden_de_papas".tr,
                                style:
                                    CustomTextStyles.titleSmallOnPrimaryMedium,
                              ),
                              Text(
                                "lbl_60_00_mxn".tr,
                                style: CustomTextStyles.labelMediumOnPrimary,
                              ),
                            ],
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
            ),
          ),
          CustomElevatedButton(
            width: 143.h,
            text: "lbl_ver_men".tr,
            leftIcon: Container(
              margin: EdgeInsets.only(right: 12.h),
              child: CustomImageView(
                imagePath: ImageConstant.imgMenubook,
                height: 24.adaptSize,
                width: 24.adaptSize,
              ),
            ),
            alignment: Alignment.bottomRight,
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
        vertical: 31.v,
      ),
      decoration: AppDecoration.fillPrimaryContainer.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder28,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        mainAxisSize: MainAxisSize.min,
        children: [
          Padding(
            padding: EdgeInsets.only(
              left: 151.h,
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

  /// Common widget
  Widget _buildFotoComida(
    BuildContext context, {
    required String foodImage,
    required String foodName,
    required String foodPrice,
    required String quantityZero,
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
              quantityZero,
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
    required String foodImage,
    required String foodName,
    required String price,
    required String quantity,
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
                      Row(
                        children: [
                          Padding(
                            padding: EdgeInsets.only(top: 1.v),
                            child: Text(
                              foodName,
                              style: CustomTextStyles.titleSmallOnPrimaryMedium
                                  .copyWith(
                                color: theme.colorScheme.onPrimary,
                              ),
                            ),
                          ),
                          CustomImageView(
                            imagePath:
                                ImageConstant.imgFlechaSeleccionarOnprimary,
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
              quantity,
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
}
