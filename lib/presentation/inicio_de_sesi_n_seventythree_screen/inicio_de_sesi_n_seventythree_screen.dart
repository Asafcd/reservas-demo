import 'bloc/inicio_de_sesi_n_seventythree_bloc.dart';
import 'models/inicio_de_sesi_n_seventythree_model.dart';
import 'package:asaf_s_application2/core/app_export.dart';
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
import 'package:asaf_s_application2/widgets/custom_outlined_button.dart';
import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';

class InicioDeSesiNSeventythreeScreen extends StatelessWidget {
  InicioDeSesiNSeventythreeScreen({Key? key})
      : super(
          key: key,
        );

  GlobalKey<NavigatorState> navigatorKey = GlobalKey();

  static Widget builder(BuildContext context) {
    return BlocProvider<InicioDeSesiNSeventythreeBloc>(
      create: (context) =>
          InicioDeSesiNSeventythreeBloc(InicioDeSesiNSeventythreeState(
        inicioDeSesiNSeventythreeModelObj: InicioDeSesiNSeventythreeModel(),
      ))
            ..add(InicioDeSesiNSeventythreeInitialEvent()),
      child: InicioDeSesiNSeventythreeScreen(),
    );
  }

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return BlocBuilder<InicioDeSesiNSeventythreeBloc,
        InicioDeSesiNSeventythreeState>(
      builder: (context, state) {
        return SafeArea(
          child: Scaffold(
            appBar: _buildAppBar(context),
            body: Container(
              height: 724.v,
              width: double.maxFinite,
              padding: EdgeInsets.symmetric(vertical: 17.v),
              child: Stack(
                alignment: Alignment.bottomRight,
                children: [
                  _buildPorExpirar(context),
                  Align(
                    alignment: Alignment.bottomRight,
                    child: Container(
                      margin: EdgeInsets.only(right: 16.h),
                      decoration: AppDecoration.outlineGrayF.copyWith(
                        borderRadius: BorderRadiusStyle.roundedBorder18,
                      ),
                      child: CustomElevatedButton(
                        width: 229.h,
                        text: "msg_registrar_cup_n".tr,
                        leftIcon: Container(
                          margin: EdgeInsets.only(right: 12.h),
                          child: CustomImageView(
                            imagePath: ImageConstant.imgQrcodescanner,
                            height: 24.adaptSize,
                            width: 24.adaptSize,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            bottomNavigationBar: Padding(
              padding: EdgeInsets.symmetric(horizontal: 8.h),
              child: _buildBottomBar(context),
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
  Widget _buildPorExpirar(BuildContext context) {
    return Align(
      alignment: Alignment.topCenter,
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        padding: EdgeInsets.only(
          top: 8.v,
          bottom: 373.v,
        ),
        child: IntrinsicWidth(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Padding(
                padding: EdgeInsets.only(right: 197.h),
                child: Text(
                  "msg_cupones_y_descuentos".tr,
                  style: theme.textTheme.bodyLarge,
                ),
              ),
              SizedBox(height: 23.v),
              Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  CustomOutlinedButton(
                    width: 125.h,
                    text: "lbl_por_expirar".tr,
                    leftIcon: Container(
                      margin: EdgeInsets.only(right: 8.h),
                      child: CustomImageView(
                        imagePath: ImageConstant.imgIcon2,
                        height: 18.adaptSize,
                        width: 18.adaptSize,
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
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.end,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SizedBox(height: 1.v),
                        Text(
                          "msg_porcentaje_de_descuento".tr,
                          textAlign: TextAlign.center,
                          style: theme.textTheme.labelLarge,
                        ),
                      ],
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 16.h),
                    padding: EdgeInsets.symmetric(vertical: 8.v),
                    decoration: AppDecoration.outlinePrimary.copyWith(
                      borderRadius: BorderRadiusStyle.roundedBorder18,
                    ),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SizedBox(height: 1.v),
                        Container(
                          width: 101.h,
                          margin: EdgeInsets.only(right: 16.h),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadiusStyle.circleBorder10,
                          ),
                          child: Row(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              CustomImageView(
                                imagePath: ImageConstant.imgIcon4,
                                height: 18.adaptSize,
                                width: 18.adaptSize,
                                margin: EdgeInsets.only(bottom: 1.v),
                              ),
                              Spacer(),
                              CustomImageView(
                                imagePath: ImageConstant.imgIcon6,
                                height: 18.adaptSize,
                                width: 18.adaptSize,
                                margin: EdgeInsets.only(bottom: 1.v),
                              ),
                              Padding(
                                padding: EdgeInsets.only(left: 8.h),
                                child: Text(
                                  "lbl_paquetes".tr,
                                  style: theme.textTheme.labelLarge,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  CustomElevatedButton(
                    height: 40.v,
                    width: 111.h,
                    text: "lbl_externos".tr,
                    margin: EdgeInsets.only(left: 16.h),
                    leftIcon: Container(
                      margin: EdgeInsets.only(right: 8.h),
                      child: CustomImageView(
                        imagePath: ImageConstant.imgIcon7,
                        height: 18.adaptSize,
                        width: 18.adaptSize,
                      ),
                    ),
                    buttonStyle: CustomButtonStyles.fillPrimary,
                    buttonTextStyle:
                        CustomTextStyles.labelLargePrimaryContainer,
                  ),
                ],
              ),
              SizedBox(height: 16.v),
              Container(
                margin: EdgeInsets.only(
                  left: 234.h,
                  right: 24.h,
                ),
                decoration: AppDecoration.outlineGray6001.copyWith(
                  borderRadius: BorderRadiusStyle.roundedBorder18,
                ),
                child: DottedBorder(
                  color: appTheme.gray600,
                  padding: EdgeInsets.only(
                    left: 1.h,
                    top: 1.v,
                    right: 1.h,
                    bottom: 1.v,
                  ),
                  strokeWidth: 1.h,
                  radius: Radius.circular(18),
                  borderType: BorderType.RRect,
                  dashPattern: [
                    10,
                    5,
                  ],
                  child: Padding(
                    padding: EdgeInsets.symmetric(
                      horizontal: 23.h,
                      vertical: 13.v,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        CustomImageView(
                          imagePath: ImageConstant.imgRectangle124079,
                          height: 80.v,
                          width: 88.h,
                          margin: EdgeInsets.symmetric(vertical: 46.v),
                        ),
                        Expanded(
                          child: Padding(
                            padding: EdgeInsets.only(
                              left: 32.h,
                              top: 3.v,
                              right: 3.h,
                            ),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "msg_desayuno_de_regalo".tr,
                                  style: theme.textTheme.titleMedium,
                                ),
                                Row(
                                  children: [
                                    CustomImageView(
                                      imagePath: ImageConstant.imgEditCalendar,
                                      height: 15.adaptSize,
                                      width: 15.adaptSize,
                                      margin: EdgeInsets.only(top: 2.v),
                                    ),
                                    Padding(
                                      padding: EdgeInsets.only(left: 8.h),
                                      child: Text(
                                        "lbl_mi_rcoles".tr,
                                        style: CustomTextStyles.bodySmall_1,
                                      ),
                                    ),
                                  ],
                                ),
                                SizedBox(height: 1.v),
                                Padding(
                                  padding: EdgeInsets.only(right: 52.h),
                                  child: Row(
                                    children: [
                                      CustomImageView(
                                        imagePath: ImageConstant.imgClock,
                                        height: 14.adaptSize,
                                        width: 14.adaptSize,
                                        margin: EdgeInsets.only(bottom: 3.v),
                                      ),
                                      Padding(
                                        padding: EdgeInsets.only(left: 6.h),
                                        child: Text(
                                          "msg_9_00_p_m_3_00".tr,
                                          style: CustomTextStyles.bodySmall_1,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsets.only(right: 21.h),
                                  child: Row(
                                    children: [
                                      CustomImageView(
                                        imagePath: ImageConstant.imgTimer,
                                        height: 15.adaptSize,
                                        width: 15.adaptSize,
                                        margin: EdgeInsets.only(top: 2.v),
                                      ),
                                      Padding(
                                        padding: EdgeInsets.only(left: 8.h),
                                        child: Text(
                                          "msg_01_ene_2023_31_dic_2023".tr,
                                          style: CustomTextStyles.bodySmall_2,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                SizedBox(height: 1.v),
                                Padding(
                                  padding: EdgeInsets.only(right: 47.h),
                                  child: Row(
                                    children: [
                                      CustomImageView(
                                        imagePath: ImageConstant.imgMap,
                                        height: 14.adaptSize,
                                        width: 14.adaptSize,
                                        margin: EdgeInsets.only(
                                          top: 2.v,
                                          bottom: 1.v,
                                        ),
                                      ),
                                      Padding(
                                        padding: EdgeInsets.only(left: 8.h),
                                        child: Text(
                                          "msg_bar_oasis_a_11_2".tr,
                                          style: theme.textTheme.bodySmall,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                SizedBox(height: 1.v),
                                Row(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    CustomImageView(
                                      imagePath: ImageConstant.imgNote,
                                      height: 15.adaptSize,
                                      width: 15.adaptSize,
                                      margin: EdgeInsets.only(bottom: 57.v),
                                    ),
                                    Expanded(
                                      child: Container(
                                        width: 185.h,
                                        margin: EdgeInsets.only(left: 8.h),
                                        child: Text(
                                          "msg_2x1_en_el_paquete".tr,
                                          maxLines: 4,
                                          overflow: TextOverflow.ellipsis,
                                          style: theme.textTheme.bodySmall,
                                        ),
                                      ),
                                    ),
                                  ],
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
            ],
          ),
        ),
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
