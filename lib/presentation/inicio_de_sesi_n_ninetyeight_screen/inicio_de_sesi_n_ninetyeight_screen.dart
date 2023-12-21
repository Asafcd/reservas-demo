import 'bloc/inicio_de_sesi_n_ninetyeight_bloc.dart';
import 'models/inicio_de_sesi_n_ninetyeight_model.dart';
import 'package:asaf_s_application2/core/app_export.dart';
import 'package:asaf_s_application2/presentation/inicio_de_sesi_n_forty_page/inicio_de_sesi_n_forty_page.dart';
import 'package:asaf_s_application2/presentation/inicio_de_sesi_n_fortynine_page/inicio_de_sesi_n_fortynine_page.dart';
import 'package:asaf_s_application2/presentation/inicio_de_sesi_n_ninetytwo_page/inicio_de_sesi_n_ninetytwo_page.dart';
import 'package:asaf_s_application2/presentation/inicio_de_sesi_n_twentyone_page/inicio_de_sesi_n_twentyone_page.dart';
import 'package:asaf_s_application2/widgets/custom_bottom_bar.dart';
import 'package:asaf_s_application2/widgets/custom_rating_bar.dart';
import 'package:asaf_s_application2/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';

class InicioDeSesiNNinetyeightScreen extends StatelessWidget {
  InicioDeSesiNNinetyeightScreen({Key? key})
      : super(
          key: key,
        );

  GlobalKey<NavigatorState> navigatorKey = GlobalKey();

  static Widget builder(BuildContext context) {
    return BlocProvider<InicioDeSesiNNinetyeightBloc>(
      create: (context) =>
          InicioDeSesiNNinetyeightBloc(InicioDeSesiNNinetyeightState(
        inicioDeSesiNNinetyeightModelObj: InicioDeSesiNNinetyeightModel(),
      ))
            ..add(InicioDeSesiNNinetyeightInitialEvent()),
      child: InicioDeSesiNNinetyeightScreen(),
    );
  }

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        body: SizedBox(
          width: mediaQueryData.size.width,
          child: SingleChildScrollView(
            child: Container(
              height: 1004.v,
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
                              "msg_reservas_activas".tr,
                              style: theme.textTheme.bodyLarge,
                            ),
                          ),
                          SizedBox(height: 17.v),
                          _buildReservasActivasSection(context),
                          SizedBox(height: 16.v),
                          _buildMagicCoffeeReservaActivaSection(context),
                          SizedBox(height: 15.v),
                          Align(
                            alignment: Alignment.centerLeft,
                            child: Text(
                              "lbl_mis_favoritos".tr,
                              style: theme.textTheme.bodyLarge,
                            ),
                          ),
                          SizedBox(height: 17.v),
                          _buildMagicCoffeeMisFavoritosSection(context),
                          SizedBox(height: 16.v),
                          _buildBarOasisReservaActivaSection(context),
                          SizedBox(height: 16.v),
                          _buildKaraokeFortunaReservaActivaSection(context),
                          SizedBox(height: 16.v),
                          _buildGloboGourmetReservaActivaSection(context),
                        ],
                      ),
                    ),
                  ),
                  BlocSelector<InicioDeSesiNNinetyeightBloc,
                      InicioDeSesiNNinetyeightState, TextEditingController?>(
                    selector: (state) => state.productvalueController,
                    builder: (context, productvalueController) {
                      return CustomTextFormField(
                        width: 412.h,
                        controller: productvalueController,
                        hintText: "lbl_product".tr,
                        hintStyle: theme.textTheme.titleLarge!,
                        textInputAction: TextInputAction.done,
                        alignment: Alignment.topCenter,
                        prefix: Container(
                          margin: EdgeInsets.fromLTRB(16.h, 20.v, 30.h, 20.v),
                          child: CustomImageView(
                            imagePath: ImageConstant.imgMegaphone,
                            height: 24.adaptSize,
                            width: 24.adaptSize,
                          ),
                        ),
                        prefixConstraints: BoxConstraints(
                          maxHeight: 64.v,
                        ),
                        suffix: Container(
                          margin: EdgeInsets.fromLTRB(30.h, 20.v, 16.h, 20.v),
                          child: CustomImageView(
                            imagePath: ImageConstant.imgLockGray800,
                            height: 24.adaptSize,
                            width: 24.adaptSize,
                          ),
                        ),
                        suffixConstraints: BoxConstraints(
                          maxHeight: 64.v,
                        ),
                      );
                    },
                  ),
                  Align(
                    alignment: Alignment.topCenter,
                    child: Container(
                      padding: EdgeInsets.symmetric(
                        horizontal: 50.h,
                        vertical: 238.v,
                      ),
                      decoration: AppDecoration.fillOnError.copyWith(
                        borderRadius: BorderRadiusStyle.roundedBorder18,
                      ),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            width: 312.h,
                            padding: EdgeInsets.symmetric(
                              horizontal: 24.h,
                              vertical: 13.v,
                            ),
                            decoration:
                                AppDecoration.fillPrimaryContainer.copyWith(
                              borderRadius: BorderRadiusStyle.customBorderTL28,
                            ),
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                SizedBox(height: 10.v),
                                CustomImageView(
                                  imagePath: ImageConstant.imgIconPrimary,
                                  height: 32.adaptSize,
                                  width: 32.adaptSize,
                                ),
                                SizedBox(height: 15.v),
                                Text(
                                  "lbl_cup_n_obtenido".tr,
                                  style: theme.textTheme.headlineSmall,
                                ),
                                SizedBox(height: 12.v),
                                Align(
                                  alignment: Alignment.centerLeft,
                                  child: Container(
                                    width: 247.h,
                                    margin: EdgeInsets.only(right: 16.h),
                                    child: Text(
                                      "msg_se_ha_a_adido_el".tr,
                                      maxLines: 2,
                                      overflow: TextOverflow.ellipsis,
                                      style: CustomTextStyles.bodyMediumGray800
                                          .copyWith(
                                        height: 1.43,
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            padding: EdgeInsets.symmetric(
                              horizontal: 16.h,
                              vertical: 4.v,
                            ),
                            decoration: AppDecoration.fillPrimaryContainer,
                            child: Row(
                              children: [
                                CustomImageView(
                                  imagePath: ImageConstant.imgThumbnail,
                                  height: 56.adaptSize,
                                  width: 56.adaptSize,
                                  margin: EdgeInsets.symmetric(vertical: 3.v),
                                ),
                                Container(
                                  width: 171.h,
                                  margin: EdgeInsets.only(
                                    left: 20.h,
                                    top: 2.v,
                                  ),
                                  child: Text(
                                    "msg_gracias_por_compartirnos_20".tr,
                                    maxLines: 3,
                                    overflow: TextOverflow.ellipsis,
                                    style:
                                        CustomTextStyles.bodySmall_2.copyWith(
                                      height: 1.67,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(height: 40.v),
                          Text(
                            "",
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
        bottomNavigationBar: Padding(
          padding: EdgeInsets.symmetric(horizontal: 8.h),
          child: _buildBottomBarSection(context),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildReservasActivasSection(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 23.h,
        vertical: 15.v,
      ),
      decoration: AppDecoration.outlinePrimary1.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder18,
      ),
      child: Row(
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgRectangle1240780x88,
            height: 80.v,
            width: 88.h,
            radius: BorderRadius.circular(
              18.h,
            ),
            margin: EdgeInsets.symmetric(vertical: 4.v),
          ),
          Padding(
            padding: EdgeInsets.only(
              left: 32.h,
              top: 1.v,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "lbl_globo_gourmet".tr,
                  style: CustomTextStyles.titleMediumOnPrimary,
                ),
                SizedBox(height: 1.v),
                Row(
                  children: [
                    CustomImageView(
                      imagePath: ImageConstant.imgEditCalendarErrorcontainer,
                      height: 15.adaptSize,
                      width: 15.adaptSize,
                      margin: EdgeInsets.symmetric(vertical: 1.v),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 8.h),
                      child: Text(
                        "msg_viernes_14_ago_2023".tr,
                        style: CustomTextStyles.bodySmallOnPrimary_1,
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 5.v),
                _buildFrame(
                  context,
                  clockImage: ImageConstant.imgClockErrorcontainer,
                  timeText: "msg_9_00_p_m_11_30".tr,
                ),
                SizedBox(height: 2.v),
                Row(
                  children: [
                    CustomImageView(
                      imagePath: ImageConstant.imgPeopleAlt,
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
                        "lbl_6_personas".tr,
                        style: CustomTextStyles.bodySmallOnPrimary_1,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildMagicCoffeeReservaActivaSection(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 23.h,
        vertical: 15.v,
      ),
      decoration: AppDecoration.outlinePrimary2.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder18,
      ),
      child: Row(
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgRectangle124072,
            height: 80.v,
            width: 88.h,
            radius: BorderRadius.circular(
              18.h,
            ),
            margin: EdgeInsets.symmetric(vertical: 4.v),
          ),
          Padding(
            padding: EdgeInsets.only(
              left: 32.h,
              top: 1.v,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "lbl_magic_coffee".tr,
                  style: theme.textTheme.titleMedium,
                ),
                SizedBox(height: 1.v),
                Row(
                  children: [
                    CustomImageView(
                      imagePath: ImageConstant.imgEditCalendar,
                      height: 15.adaptSize,
                      width: 15.adaptSize,
                      margin: EdgeInsets.symmetric(vertical: 1.v),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 8.h),
                      child: Text(
                        "msg_domingo_16_ago_2023".tr,
                        style: CustomTextStyles.bodySmall_1,
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 5.v),
                Row(
                  children: [
                    CustomImageView(
                      imagePath: ImageConstant.imgClock,
                      height: 14.adaptSize,
                      width: 14.adaptSize,
                      margin: EdgeInsets.only(bottom: 3.v),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 8.h),
                      child: Text(
                        "msg_8_00_p_m_10_30".tr,
                        style: CustomTextStyles.bodySmall_1,
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 2.v),
                Row(
                  children: [
                    CustomImageView(
                      imagePath: ImageConstant.imgPeopleAltPrimary,
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
                        "lbl_2_personas".tr,
                        style: CustomTextStyles.bodySmall_1,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildMagicCoffeeMisFavoritosSection(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 24.h,
        vertical: 16.v,
      ),
      decoration: AppDecoration.fillPrimaryContainer.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder18,
      ),
      child: Row(
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgRectangle1240772x72,
            height: 72.adaptSize,
            width: 72.adaptSize,
            margin: EdgeInsets.symmetric(vertical: 11.v),
          ),
          Padding(
            padding: EdgeInsets.only(
              left: 32.h,
              top: 1.v,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "lbl_magic_coffee".tr,
                  style: theme.textTheme.titleMedium,
                ),
                SizedBox(
                  width: 191.h,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(
                        padding: EdgeInsets.only(
                          top: 2.v,
                          bottom: 1.v,
                        ),
                        child: CustomRatingBar(
                          initialRating: 5,
                        ),
                      ),
                      Text(
                        "lbl_mi_calificaci_n".tr,
                        style: CustomTextStyles.bodySmall_1,
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 1.v),
                Row(
                  children: [
                    CustomImageView(
                      imagePath: ImageConstant.imgEditCalendar,
                      height: 15.adaptSize,
                      width: 15.adaptSize,
                      margin: EdgeInsets.only(bottom: 2.v),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 8.h),
                      child: Text(
                        "lbl_lunes_domingo".tr,
                        style: CustomTextStyles.bodySmall_1,
                      ),
                    ),
                  ],
                ),
                _buildFrame(
                  context,
                  clockImage: ImageConstant.imgClock,
                  timeText: "msg_8_30_p_m_11_30".tr,
                ),
                _buildFrame1(
                  context,
                  distanceText: "lbl_a_11_2_km_de_ti".tr,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildBarOasisReservaActivaSection(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 24.h,
        vertical: 15.v,
      ),
      decoration: AppDecoration.fillPrimaryContainer.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder18,
      ),
      child: Row(
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgRectangle124073,
            height: 72.adaptSize,
            width: 72.adaptSize,
            margin: EdgeInsets.symmetric(vertical: 12.v),
          ),
          Padding(
            padding: EdgeInsets.only(left: 32.h),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "lbl_bar_oasis".tr,
                  style: theme.textTheme.titleMedium,
                ),
                SizedBox(
                  width: 191.h,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(
                        padding: EdgeInsets.only(
                          top: 2.v,
                          bottom: 1.v,
                        ),
                        child: CustomRatingBar(
                          initialRating: 4,
                        ),
                      ),
                      Text(
                        "lbl_mi_calificaci_n".tr,
                        style: CustomTextStyles.bodySmall_1,
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 1.v),
                _buildFrame2(
                  context,
                  text: "msg_viernes_domingo".tr,
                ),
                _buildFrame(
                  context,
                  clockImage: ImageConstant.imgClock,
                  timeText: "msg_9_00_p_m_11_30".tr,
                ),
                _buildFrame1(
                  context,
                  distanceText: "lbl_a_11_2_km_de_ti".tr,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildKaraokeFortunaReservaActivaSection(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 24.h,
        vertical: 16.v,
      ),
      decoration: AppDecoration.fillPrimaryContainer.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder18,
      ),
      child: Row(
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgRectangle124074,
            height: 72.adaptSize,
            width: 72.adaptSize,
            margin: EdgeInsets.symmetric(vertical: 11.v),
          ),
          Padding(
            padding: EdgeInsets.only(left: 32.h),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "lbl_karaoke_fortuna".tr,
                      style: theme.textTheme.titleMedium,
                    ),
                    SizedBox(
                      width: 191.h,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Padding(
                            padding: EdgeInsets.only(
                              top: 2.v,
                              bottom: 1.v,
                            ),
                            child: CustomRatingBar(
                              initialRating: 4,
                            ),
                          ),
                          Text(
                            "lbl_mi_calificaci_n".tr,
                            style: CustomTextStyles.bodySmall_1,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 1.v),
                _buildFrame2(
                  context,
                  text: "msg_viernes_domingo".tr,
                ),
                Row(
                  children: [
                    CustomImageView(
                      imagePath: ImageConstant.imgClock,
                      height: 14.adaptSize,
                      width: 14.adaptSize,
                      margin: EdgeInsets.only(bottom: 3.v),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 8.h),
                      child: Text(
                        "msg_6_00_p_m_3_00".tr,
                        style: CustomTextStyles.bodySmall_1,
                      ),
                    ),
                  ],
                ),
                _buildFrame1(
                  context,
                  distanceText: "lbl_a_11_2_km_de_ti".tr,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildGloboGourmetReservaActivaSection(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 24.h,
        vertical: 16.v,
      ),
      decoration: AppDecoration.fillPrimaryContainer.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder18,
      ),
      child: Row(
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgRectangle124075,
            height: 72.adaptSize,
            width: 72.adaptSize,
            margin: EdgeInsets.symmetric(vertical: 12.v),
          ),
          Padding(
            padding: EdgeInsets.only(left: 32.h),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "lbl_globo_gourmet".tr,
                  style: theme.textTheme.titleMedium,
                ),
                SizedBox(
                  width: 191.h,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(
                        padding: EdgeInsets.symmetric(vertical: 2.v),
                        child: CustomRatingBar(
                          initialRating: 3,
                        ),
                      ),
                      Text(
                        "lbl_mi_calificaci_n".tr,
                        style: CustomTextStyles.bodySmall_1,
                      ),
                    ],
                  ),
                ),
                _buildFrame2(
                  context,
                  text: "msg_viernes_domingo".tr,
                ),
                _buildFrame(
                  context,
                  clockImage: ImageConstant.imgClock,
                  timeText: "msg_9_00_p_m_11_30".tr,
                ),
                _buildFrame1(
                  context,
                  distanceText: "lbl_a_11_2_km_de_ti".tr,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildBottomBarSection(BuildContext context) {
    return CustomBottomBar(
      onChanged: (BottomBarEnum type) {
        Navigator.pushNamed(
            navigatorKey.currentContext!, getCurrentRoute(type));
      },
    );
  }

  /// Common widget
  Widget _buildFrame(
    BuildContext context, {
    required String clockImage,
    required String timeText,
  }) {
    return Row(
      children: [
        CustomImageView(
          imagePath: clockImage,
          height: 14.adaptSize,
          width: 14.adaptSize,
          margin: EdgeInsets.only(bottom: 3.v),
        ),
        Padding(
          padding: EdgeInsets.only(left: 8.h),
          child: Text(
            timeText,
            style: CustomTextStyles.bodySmall_1.copyWith(
              color: theme.colorScheme.onPrimaryContainer,
            ),
          ),
        ),
      ],
    );
  }

  /// Common widget
  Widget _buildFrame1(
    BuildContext context, {
    required String distanceText,
  }) {
    return Row(
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
            distanceText,
            style: CustomTextStyles.bodySmall_1.copyWith(
              color: theme.colorScheme.onPrimaryContainer,
            ),
          ),
        ),
      ],
    );
  }

  /// Common widget
  Widget _buildFrame2(
    BuildContext context, {
    required String text,
  }) {
    return Row(
      children: [
        CustomImageView(
          imagePath: ImageConstant.imgEditCalendar,
          height: 15.adaptSize,
          width: 15.adaptSize,
          margin: EdgeInsets.only(bottom: 2.v),
        ),
        Padding(
          padding: EdgeInsets.only(left: 8.h),
          child: Text(
            text,
            style: CustomTextStyles.bodySmall_1.copyWith(
              color: theme.colorScheme.onPrimaryContainer,
            ),
          ),
        ),
      ],
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
