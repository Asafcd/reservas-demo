import 'bloc/reservas_restaurantes_seventeen_bloc.dart';
import 'models/reservas_restaurantes_seventeen_model.dart';
import 'package:asaf_s_application2/core/app_export.dart';
import 'package:asaf_s_application2/presentation/inicio_de_sesi_n_forty_page/inicio_de_sesi_n_forty_page.dart';
import 'package:asaf_s_application2/presentation/inicio_de_sesi_n_fortynine_page/inicio_de_sesi_n_fortynine_page.dart';
import 'package:asaf_s_application2/presentation/inicio_de_sesi_n_ninetytwo_page/inicio_de_sesi_n_ninetytwo_page.dart';
import 'package:asaf_s_application2/presentation/inicio_de_sesi_n_twentyone_page/inicio_de_sesi_n_twentyone_page.dart';
import 'package:asaf_s_application2/widgets/custom_bottom_bar.dart';
import 'package:asaf_s_application2/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';

class ReservasRestaurantesSeventeenScreen extends StatelessWidget {
  ReservasRestaurantesSeventeenScreen({Key? key})
      : super(
          key: key,
        );

  GlobalKey<NavigatorState> navigatorKey = GlobalKey();

  static Widget builder(BuildContext context) {
    return BlocProvider<ReservasRestaurantesSeventeenBloc>(
      create: (context) =>
          ReservasRestaurantesSeventeenBloc(ReservasRestaurantesSeventeenState(
        reservasRestaurantesSeventeenModelObj:
            ReservasRestaurantesSeventeenModel(),
      ))
            ..add(ReservasRestaurantesSeventeenInitialEvent()),
      child: ReservasRestaurantesSeventeenScreen(),
    );
  }

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        body: SizedBox(
          height: 788.v,
          width: double.maxFinite,
          child: Stack(
            alignment: Alignment.topCenter,
            children: [
              Align(
                alignment: Alignment.bottomCenter,
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Container(
                      height: 586.v,
                      width: 409.h,
                      decoration: BoxDecoration(
                        color: appTheme.gray900,
                      ),
                    ),
                    SizedBox(height: 3.v),
                    _buildFacebookColumn(context),
                  ],
                ),
              ),
              BlocSelector<ReservasRestaurantesSeventeenBloc,
                  ReservasRestaurantesSeventeenState, TextEditingController?>(
                selector: (state) => state.couponsController,
                builder: (context, couponsController) {
                  return CustomTextFormField(
                    width: 412.h,
                    controller: couponsController,
                    hintText: "lbl_cupones".tr,
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
                alignment: Alignment.bottomCenter,
                child: Container(
                  margin: EdgeInsets.symmetric(horizontal: 8.h),
                  padding: EdgeInsets.symmetric(
                    horizontal: 50.h,
                    vertical: 252.v,
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
                          vertical: 21.v,
                        ),
                        decoration: AppDecoration.fillPrimaryContainer.copyWith(
                          borderRadius: BorderRadiusStyle.customBorderTL28,
                        ),
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            SizedBox(height: 2.v),
                            Text(
                              "lbl_registrar_cup_n".tr,
                              style: theme.textTheme.headlineSmall,
                            ),
                            SizedBox(height: 12.v),
                            Container(
                              width: 213.h,
                              margin: EdgeInsets.only(right: 50.h),
                              child: Text(
                                "msg_se_ha_encontrado".tr,
                                maxLines: 2,
                                overflow: TextOverflow.ellipsis,
                                style:
                                    CustomTextStyles.bodyMediumGray800.copyWith(
                                  height: 1.43,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.symmetric(
                          horizontal: 16.h,
                          vertical: 5.v,
                        ),
                        decoration: AppDecoration.fillPrimaryContainer,
                        child: Row(
                          children: [
                            CustomImageView(
                              imagePath: ImageConstant.imgThumbnail56x56,
                              height: 56.adaptSize,
                              width: 56.adaptSize,
                              margin: EdgeInsets.symmetric(vertical: 8.v),
                            ),
                            Container(
                              width: 193.h,
                              margin: EdgeInsets.only(
                                left: 20.h,
                                top: 1.v,
                              ),
                              child: Text(
                                "msg_2x1_en_el_paquete".tr,
                                maxLines: 4,
                                overflow: TextOverflow.ellipsis,
                                style: theme.textTheme.bodySmall,
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(height: 40.v),
                      Container(
                        padding: EdgeInsets.symmetric(
                          horizontal: 36.h,
                          vertical: 33.v,
                        ),
                        decoration: AppDecoration.fillPrimaryContainer.copyWith(
                          borderRadius: BorderRadiusStyle.customBorderBL28,
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Text(
                              "lbl_cancelar".tr,
                              style: theme.textTheme.titleSmall,
                            ),
                            Padding(
                              padding: EdgeInsets.only(left: 32.h),
                              child: Text(
                                "lbl_a_adir".tr,
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
        bottomNavigationBar: Padding(
          padding: EdgeInsets.symmetric(horizontal: 8.h),
          child: _buildBottomBar(context),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildFacebookColumn(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 167.h,
        vertical: 17.v,
      ),
      decoration: AppDecoration.fillPrimaryContainer,
      child: CustomImageView(
        imagePath: ImageConstant.imgFacebook,
        height: 93.adaptSize,
        width: 93.adaptSize,
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
