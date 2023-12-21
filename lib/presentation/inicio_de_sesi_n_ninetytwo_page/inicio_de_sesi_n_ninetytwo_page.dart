import '../inicio_de_sesi_n_ninetytwo_page/widgets/baroasiscomponent1_item_widget.dart';
import '../inicio_de_sesi_n_ninetytwo_page/widgets/reservaactivasection_item_widget.dart';
import 'bloc/inicio_de_sesi_n_ninetytwo_bloc.dart';
import 'models/baroasiscomponent1_item_model.dart';
import 'models/inicio_de_sesi_n_ninetytwo_model.dart';
import 'models/reservaactivasection_item_model.dart';
import 'package:asaf_s_application2/core/app_export.dart';
import 'package:asaf_s_application2/widgets/app_bar/appbar_leading_image.dart';
import 'package:asaf_s_application2/widgets/app_bar/appbar_title.dart';
import 'package:asaf_s_application2/widgets/app_bar/appbar_trailing_image.dart';
import 'package:asaf_s_application2/widgets/app_bar/custom_app_bar.dart';
import 'package:asaf_s_application2/widgets/custom_outlined_button.dart';
import 'package:flutter/material.dart';

// ignore_for_file: must_be_immutable
class InicioDeSesiNNinetytwoPage extends StatelessWidget {
  const InicioDeSesiNNinetytwoPage({Key? key})
      : super(
          key: key,
        );

  static Widget builder(BuildContext context) {
    return BlocProvider<InicioDeSesiNNinetytwoBloc>(
      create: (context) =>
          InicioDeSesiNNinetytwoBloc(InicioDeSesiNNinetytwoState(
        inicioDeSesiNNinetytwoModelObj: InicioDeSesiNNinetytwoModel(),
      ))
            ..add(InicioDeSesiNNinetytwoInitialEvent()),
      child: InicioDeSesiNNinetytwoPage(),
    );
  }

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        appBar: _buildAppBarSection(context),
        body: SizedBox(
          width: mediaQueryData.size.width,
          child: SingleChildScrollView(
            child: Container(
              height: 922.v,
              width: 420.h,
              margin: EdgeInsets.only(left: 8.h),
              child: Stack(
                alignment: Alignment.topCenter,
                children: [
                  Align(
                    alignment: Alignment.bottomCenter,
                    child: Padding(
                      padding: EdgeInsets.only(left: 16.h),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          _buildKaraokeSection(context),
                          SizedBox(height: 32.v),
                          _buildReservaActivaSection(context),
                          SizedBox(height: 30.v),
                          _buildBarOasisComponentSection(context),
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
      ),
    );
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBarSection(BuildContext context) {
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
        text: "lbl_cupones".tr,
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
      styleType: Style.bgFill,
    );
  }

  /// Section Widget
  Widget _buildKaraokeSection(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "lbl_categor_a".tr,
          style: theme.textTheme.bodyLarge,
        ),
        SizedBox(height: 24.v),
        Row(
          children: [
            Expanded(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SizedBox(
                    width: 251.h,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          padding: EdgeInsets.symmetric(
                            horizontal: 16.h,
                            vertical: 10.v,
                          ),
                          decoration: AppDecoration.fillPrimary.copyWith(
                            borderRadius: BorderRadiusStyle.roundedBorder18,
                          ),
                          child: Container(
                            width: 62.h,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadiusStyle.circleBorder10,
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                CustomImageView(
                                  imagePath: ImageConstant.imgSettings,
                                  height: 18.adaptSize,
                                  width: 18.adaptSize,
                                ),
                                Text(
                                  "lbl_bares".tr,
                                  style: CustomTextStyles
                                      .labelLargePrimaryContainer,
                                ),
                              ],
                            ),
                          ),
                        ),
                        Container(
                          padding: EdgeInsets.symmetric(
                            horizontal: 15.h,
                            vertical: 9.v,
                          ),
                          decoration: AppDecoration.outlinePrimary.copyWith(
                            borderRadius: BorderRadiusStyle.roundedBorder18,
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              CustomImageView(
                                imagePath: ImageConstant.imgRamenDining,
                                height: 18.adaptSize,
                                width: 18.adaptSize,
                              ),
                              Padding(
                                padding: EdgeInsets.only(left: 8.h),
                                child: Text(
                                  "lbl_restaurantes".tr,
                                  style: theme.textTheme.labelLarge,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  CustomOutlinedButton(
                    width: 110.h,
                    text: "lbl_karaoke".tr,
                    leftIcon: Container(
                      margin: EdgeInsets.only(right: 8.h),
                      child: CustomImageView(
                        imagePath: ImageConstant.imgMenu,
                        height: 18.adaptSize,
                        width: 18.adaptSize,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.only(left: 16.h),
              padding: EdgeInsets.symmetric(
                horizontal: 15.h,
                vertical: 9.v,
              ),
              decoration: AppDecoration.outlinePrimary.copyWith(
                borderRadius: BorderRadiusStyle.roundedBorder18,
              ),
              child: Container(
                width: 55.h,
                decoration: BoxDecoration(
                  borderRadius: BorderRadiusStyle.circleBorder10,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    CustomImageView(
                      imagePath: ImageConstant.imgGlobe,
                      height: 18.adaptSize,
                      width: 18.adaptSize,
                      margin: EdgeInsets.symmetric(vertical: 1.v),
                    ),
                    Text(
                      "lbl_club".tr,
                      textAlign: TextAlign.center,
                      style: theme.textTheme.labelLarge,
                    ),
                  ],
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.only(left: 16.h),
              padding: EdgeInsets.symmetric(
                horizontal: 15.h,
                vertical: 9.v,
              ),
              decoration: AppDecoration.outlinePrimary.copyWith(
                borderRadius: BorderRadiusStyle.roundedBorder18,
              ),
              child: Container(
                width: 72.h,
                decoration: BoxDecoration(
                  borderRadius: BorderRadiusStyle.circleBorder10,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    CustomImageView(
                      imagePath: ImageConstant.imgIcon,
                      height: 18.adaptSize,
                      width: 18.adaptSize,
                      margin: EdgeInsets.symmetric(vertical: 1.v),
                    ),
                    Text(
                      "lbl_boliche".tr,
                      textAlign: TextAlign.center,
                      style: theme.textTheme.labelLarge,
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }

  /// Section Widget
  Widget _buildReservaActivaSection(BuildContext context) {
    return Align(
      alignment: Alignment.centerLeft,
      child: Padding(
        padding: EdgeInsets.only(right: 24.h),
        child: BlocSelector<InicioDeSesiNNinetytwoBloc,
            InicioDeSesiNNinetytwoState, InicioDeSesiNNinetytwoModel?>(
          selector: (state) => state.inicioDeSesiNNinetytwoModelObj,
          builder: (context, inicioDeSesiNNinetytwoModelObj) {
            return ListView.separated(
              physics: NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              separatorBuilder: (
                context,
                index,
              ) {
                return SizedBox(
                  height: 32.v,
                );
              },
              itemCount: inicioDeSesiNNinetytwoModelObj
                      ?.reservaactivasectionItemList.length ??
                  0,
              itemBuilder: (context, index) {
                ReservaactivasectionItemModel model =
                    inicioDeSesiNNinetytwoModelObj
                            ?.reservaactivasectionItemList[index] ??
                        ReservaactivasectionItemModel();
                return ReservaactivasectionItemWidget(
                  model,
                );
              },
            );
          },
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildBarOasisComponentSection(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "lbl_promociones".tr,
          style: theme.textTheme.bodyLarge,
        ),
        SizedBox(height: 26.v),
        SizedBox(
          height: 236.v,
          child: BlocSelector<InicioDeSesiNNinetytwoBloc,
              InicioDeSesiNNinetytwoState, InicioDeSesiNNinetytwoModel?>(
            selector: (state) => state.inicioDeSesiNNinetytwoModelObj,
            builder: (context, inicioDeSesiNNinetytwoModelObj) {
              return ListView.separated(
                scrollDirection: Axis.horizontal,
                separatorBuilder: (
                  context,
                  index,
                ) {
                  return SizedBox(
                    width: 24.h,
                  );
                },
                itemCount: inicioDeSesiNNinetytwoModelObj
                        ?.baroasiscomponent1ItemList.length ??
                    0,
                itemBuilder: (context, index) {
                  Baroasiscomponent1ItemModel model =
                      inicioDeSesiNNinetytwoModelObj
                              ?.baroasiscomponent1ItemList[index] ??
                          Baroasiscomponent1ItemModel();
                  return Baroasiscomponent1ItemWidget(
                    model,
                  );
                },
              );
            },
          ),
        ),
      ],
    );
  }
}
