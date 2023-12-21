import 'bloc/app_navigation_bloc.dart';
import 'models/app_navigation_model.dart';
import 'package:asaf_s_application2/core/app_export.dart';
import 'package:flutter/material.dart';

class AppNavigationScreen extends StatelessWidget {
  const AppNavigationScreen({Key? key})
      : super(
          key: key,
        );

  static Widget builder(BuildContext context) {
    return BlocProvider<AppNavigationBloc>(
      create: (context) => AppNavigationBloc(AppNavigationState(
        appNavigationModelObj: AppNavigationModel(),
      ))
        ..add(AppNavigationInitialEvent()),
      child: AppNavigationScreen(),
    );
  }

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return BlocBuilder<AppNavigationBloc, AppNavigationState>(
      builder: (context, state) {
        return SafeArea(
          child: Scaffold(
            backgroundColor: Color(0XFFFFFFFF),
            body: SizedBox(
              width: 375.h,
              child: Column(
                children: [
                  _buildAppNavigation(context),
                  Expanded(
                    child: SingleChildScrollView(
                      child: Container(
                        decoration: BoxDecoration(
                          color: Color(0XFFFFFFFF),
                        ),
                        child: Column(
                          children: [
                            _buildScreenTitle(
                              context,
                              screenTitle: "Inicio de sesión One".tr,
                              onTapScreenTitle: () => onTapScreenTitle(
                                  AppRoutes.inicioDeSesiNOneScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "Inicio de sesión Two".tr,
                              onTapScreenTitle: () => onTapScreenTitle(
                                  AppRoutes.inicioDeSesiNTwoScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "Inicio de sesión Three".tr,
                              onTapScreenTitle: () => onTapScreenTitle(
                                  AppRoutes.inicioDeSesiNThreeScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "Inicio de sesión Four".tr,
                              onTapScreenTitle: () => onTapScreenTitle(
                                  AppRoutes.inicioDeSesiNFourScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "Inicio de sesión Five".tr,
                              onTapScreenTitle: () => onTapScreenTitle(
                                  AppRoutes.inicioDeSesiNFiveScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "Inicio de sesión Six".tr,
                              onTapScreenTitle: () => onTapScreenTitle(
                                  AppRoutes.inicioDeSesiNSixScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "Inicio de sesión Seven".tr,
                              onTapScreenTitle: () => onTapScreenTitle(
                                  AppRoutes.inicioDeSesiNSevenScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "Inicio de sesión Eight".tr,
                              onTapScreenTitle: () => onTapScreenTitle(
                                  AppRoutes.inicioDeSesiNEightScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "Inicio de sesión Nine".tr,
                              onTapScreenTitle: () => onTapScreenTitle(
                                  AppRoutes.inicioDeSesiNNineScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "Inicio de sesión Ten".tr,
                              onTapScreenTitle: () => onTapScreenTitle(
                                  AppRoutes.inicioDeSesiNTenScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "Inicio de sesión Eleven".tr,
                              onTapScreenTitle: () => onTapScreenTitle(
                                  AppRoutes.inicioDeSesiNElevenScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "Inicio de sesión Twelve".tr,
                              onTapScreenTitle: () => onTapScreenTitle(
                                  AppRoutes.inicioDeSesiNTwelveScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "Inicio de sesión Thirteen".tr,
                              onTapScreenTitle: () => onTapScreenTitle(
                                  AppRoutes.inicioDeSesiNThirteenScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "Inicio de sesión Fourteen".tr,
                              onTapScreenTitle: () => onTapScreenTitle(
                                  AppRoutes.inicioDeSesiNFourteenScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "Inicio de sesión Fifteen".tr,
                              onTapScreenTitle: () => onTapScreenTitle(
                                  AppRoutes.inicioDeSesiNFifteenScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "Inicio de sesión Sixteen".tr,
                              onTapScreenTitle: () => onTapScreenTitle(
                                  AppRoutes.inicioDeSesiNSixteenScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "Inicio de sesión Seventeen".tr,
                              onTapScreenTitle: () => onTapScreenTitle(
                                  AppRoutes.inicioDeSesiNSeventeenScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle:
                                  "Inicio de sesión Nineteen - Tab Container"
                                      .tr,
                              onTapScreenTitle: () => onTapScreenTitle(AppRoutes
                                  .inicioDeSesiNNineteenTabContainerScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle:
                                  "Inicio de sesión TwentyOne - Container".tr,
                              onTapScreenTitle: () => onTapScreenTitle(AppRoutes
                                  .inicioDeSesiNTwentyoneContainerScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "Inicio de sesión TwentyTwo".tr,
                              onTapScreenTitle: () => onTapScreenTitle(
                                  AppRoutes.inicioDeSesiNTwentytwoScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "Inicio de sesión TwentyFour".tr,
                              onTapScreenTitle: () => onTapScreenTitle(
                                  AppRoutes.inicioDeSesiNTwentyfourScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "Inicio de sesión TwentyFive".tr,
                              onTapScreenTitle: () => onTapScreenTitle(
                                  AppRoutes.inicioDeSesiNTwentyfiveScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "Inicio de sesión TwentySix".tr,
                              onTapScreenTitle: () => onTapScreenTitle(
                                  AppRoutes.inicioDeSesiNTwentysixScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "Inicio de sesión TwentySeven".tr,
                              onTapScreenTitle: () => onTapScreenTitle(
                                  AppRoutes.inicioDeSesiNTwentysevenScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle:
                                  "Inicio de sesión TwentyEight - Tab Container"
                                      .tr,
                              onTapScreenTitle: () => onTapScreenTitle(AppRoutes
                                  .inicioDeSesiNTwentyeightTabContainerScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "Inicio de sesión TwentyNine".tr,
                              onTapScreenTitle: () => onTapScreenTitle(
                                  AppRoutes.inicioDeSesiNTwentynineScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "Reservas restaurantes Nine".tr,
                              onTapScreenTitle: () => onTapScreenTitle(
                                  AppRoutes.reservasRestaurantesNineScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "Inicio de sesión Thirty".tr,
                              onTapScreenTitle: () => onTapScreenTitle(
                                  AppRoutes.inicioDeSesiNThirtyScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "Inicio de sesión ThirtyTwo".tr,
                              onTapScreenTitle: () => onTapScreenTitle(
                                  AppRoutes.inicioDeSesiNThirtytwoScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "Inicio de sesión ThirtyThree".tr,
                              onTapScreenTitle: () => onTapScreenTitle(
                                  AppRoutes.inicioDeSesiNThirtythreeScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "Inicio de sesión ThirtyFour".tr,
                              onTapScreenTitle: () => onTapScreenTitle(
                                  AppRoutes.inicioDeSesiNThirtyfourScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "Inicio de sesión ThirtyFive".tr,
                              onTapScreenTitle: () => onTapScreenTitle(
                                  AppRoutes.inicioDeSesiNThirtyfiveScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "Inicio de sesión ThirtySix".tr,
                              onTapScreenTitle: () => onTapScreenTitle(
                                  AppRoutes.inicioDeSesiNThirtysixScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "Inicio de sesión ThirtySeven".tr,
                              onTapScreenTitle: () => onTapScreenTitle(
                                  AppRoutes.inicioDeSesiNThirtysevenScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "Inicio de sesión ThirtyEight".tr,
                              onTapScreenTitle: () => onTapScreenTitle(
                                  AppRoutes.inicioDeSesiNThirtyeightScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle:
                                  "Inicio de sesión FiftyOne - Tab Container"
                                      .tr,
                              onTapScreenTitle: () => onTapScreenTitle(AppRoutes
                                  .inicioDeSesiNFiftyoneTabContainerScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "Inicio de sesión FiftyTwo".tr,
                              onTapScreenTitle: () => onTapScreenTitle(
                                  AppRoutes.inicioDeSesiNFiftytwoScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "Inicio de sesión FiftyThree".tr,
                              onTapScreenTitle: () => onTapScreenTitle(
                                  AppRoutes.inicioDeSesiNFiftythreeScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "Inicio de sesión FiftyFour".tr,
                              onTapScreenTitle: () => onTapScreenTitle(
                                  AppRoutes.inicioDeSesiNFiftyfourScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "Inicio de sesión FiftyFive".tr,
                              onTapScreenTitle: () => onTapScreenTitle(
                                  AppRoutes.inicioDeSesiNFiftyfiveScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "Inicio de sesión FiftySix".tr,
                              onTapScreenTitle: () => onTapScreenTitle(
                                  AppRoutes.inicioDeSesiNFiftysixScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "Inicio de sesión FiftySeven".tr,
                              onTapScreenTitle: () => onTapScreenTitle(
                                  AppRoutes.inicioDeSesiNFiftysevenScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "Inicio de sesión SixtyOne".tr,
                              onTapScreenTitle: () => onTapScreenTitle(
                                  AppRoutes.inicioDeSesiNSixtyoneScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "Reservas restaurantes Ten".tr,
                              onTapScreenTitle: () => onTapScreenTitle(
                                  AppRoutes.reservasRestaurantesTenScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "Inicio de sesión SixtyTwo".tr,
                              onTapScreenTitle: () => onTapScreenTitle(
                                  AppRoutes.inicioDeSesiNSixtytwoScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "Inicio de sesión Sixty".tr,
                              onTapScreenTitle: () => onTapScreenTitle(
                                  AppRoutes.inicioDeSesiNSixtyScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "Inicio de sesión SixtyThree".tr,
                              onTapScreenTitle: () => onTapScreenTitle(
                                  AppRoutes.inicioDeSesiNSixtythreeScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "Inicio de sesión SixtyFour".tr,
                              onTapScreenTitle: () => onTapScreenTitle(
                                  AppRoutes.inicioDeSesiNSixtyfourScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "Inicio de sesión SixtyFive".tr,
                              onTapScreenTitle: () => onTapScreenTitle(
                                  AppRoutes.inicioDeSesiNSixtyfiveScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "Inicio de sesión SixtySix".tr,
                              onTapScreenTitle: () => onTapScreenTitle(
                                  AppRoutes.inicioDeSesiNSixtysixScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "Inicio de sesión SixtySeven".tr,
                              onTapScreenTitle: () => onTapScreenTitle(
                                  AppRoutes.inicioDeSesiNSixtysevenScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "Inicio de sesión FiftyEight".tr,
                              onTapScreenTitle: () => onTapScreenTitle(
                                  AppRoutes.inicioDeSesiNFiftyeightScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "Inicio de sesión FortyOne".tr,
                              onTapScreenTitle: () => onTapScreenTitle(
                                  AppRoutes.inicioDeSesiNFortyoneScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "Inicio de sesión FortyTwo".tr,
                              onTapScreenTitle: () => onTapScreenTitle(
                                  AppRoutes.inicioDeSesiNFortytwoScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "Inicio de sesión FortyThree".tr,
                              onTapScreenTitle: () => onTapScreenTitle(
                                  AppRoutes.inicioDeSesiNFortythreeScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "Inicio de sesión FortyFour".tr,
                              onTapScreenTitle: () => onTapScreenTitle(
                                  AppRoutes.inicioDeSesiNFortyfourScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "Inicio de sesión NinetyFour".tr,
                              onTapScreenTitle: () => onTapScreenTitle(
                                  AppRoutes.inicioDeSesiNNinetyfourScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "Inicio de sesión NinetyFive".tr,
                              onTapScreenTitle: () => onTapScreenTitle(
                                  AppRoutes.inicioDeSesiNNinetyfiveScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "Inicio de sesión NinetyEight".tr,
                              onTapScreenTitle: () => onTapScreenTitle(
                                  AppRoutes.inicioDeSesiNNinetyeightScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "Inicio de sesión FortySix".tr,
                              onTapScreenTitle: () => onTapScreenTitle(
                                  AppRoutes.inicioDeSesiNFortysixScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "Inicio de sesión FortySeven".tr,
                              onTapScreenTitle: () => onTapScreenTitle(
                                  AppRoutes.inicioDeSesiNFortysevenScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "Inicio de sesión FortyEight".tr,
                              onTapScreenTitle: () => onTapScreenTitle(
                                  AppRoutes.inicioDeSesiNFortyeightScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "Inicio de sesión SixtyEight".tr,
                              onTapScreenTitle: () => onTapScreenTitle(
                                  AppRoutes.inicioDeSesiNSixtyeightScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle:
                                  "Inicio de sesión SixtyNine - Tab Container"
                                      .tr,
                              onTapScreenTitle: () => onTapScreenTitle(AppRoutes
                                  .inicioDeSesiNSixtynineTabContainerScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle:
                                  "Inicio de sesión Seventy - Tab Container".tr,
                              onTapScreenTitle: () => onTapScreenTitle(AppRoutes
                                  .inicioDeSesiNSeventyTabContainerScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "Inicio de sesión SeventyOne".tr,
                              onTapScreenTitle: () => onTapScreenTitle(
                                  AppRoutes.inicioDeSesiNSeventyoneScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "Inicio de sesión SeventyTwo".tr,
                              onTapScreenTitle: () => onTapScreenTitle(
                                  AppRoutes.inicioDeSesiNSeventytwoScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "Inicio de sesión SeventyThree".tr,
                              onTapScreenTitle: () => onTapScreenTitle(
                                  AppRoutes.inicioDeSesiNSeventythreeScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "Reservas restaurantes Sixteen".tr,
                              onTapScreenTitle: () => onTapScreenTitle(
                                  AppRoutes.reservasRestaurantesSixteenScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "Reservas restaurantes Seventeen".tr,
                              onTapScreenTitle: () => onTapScreenTitle(AppRoutes
                                  .reservasRestaurantesSeventeenScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "Inicio de sesión SeventyFour".tr,
                              onTapScreenTitle: () => onTapScreenTitle(
                                  AppRoutes.inicioDeSesiNSeventyfourScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "Inicio de sesión SeventySix".tr,
                              onTapScreenTitle: () => onTapScreenTitle(
                                  AppRoutes.inicioDeSesiNSeventysixScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle:
                                  "Inicio de sesión SeventySeven - Tab Container"
                                      .tr,
                              onTapScreenTitle: () => onTapScreenTitle(AppRoutes
                                  .inicioDeSesiNSeventysevenTabContainerScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle:
                                  "Inicio de sesión SeventyEight - Tab Container"
                                      .tr,
                              onTapScreenTitle: () => onTapScreenTitle(AppRoutes
                                  .inicioDeSesiNSeventyeightTabContainerScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "Inicio de sesión SeventyNine".tr,
                              onTapScreenTitle: () => onTapScreenTitle(
                                  AppRoutes.inicioDeSesiNSeventynineScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "Inicio de sesión EightyOne".tr,
                              onTapScreenTitle: () => onTapScreenTitle(
                                  AppRoutes.inicioDeSesiNEightyoneScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "Inicio de sesión EightyTwo".tr,
                              onTapScreenTitle: () => onTapScreenTitle(
                                  AppRoutes.inicioDeSesiNEightytwoScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "Inicio de sesión EightyThree".tr,
                              onTapScreenTitle: () => onTapScreenTitle(
                                  AppRoutes.inicioDeSesiNEightythreeScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "Inicio de sesión EightyFour".tr,
                              onTapScreenTitle: () => onTapScreenTitle(
                                  AppRoutes.inicioDeSesiNEightyfourScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "Inicio de sesión Eighty".tr,
                              onTapScreenTitle: () => onTapScreenTitle(
                                  AppRoutes.inicioDeSesiNEightyScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "Inicio de sesión EightyFive".tr,
                              onTapScreenTitle: () => onTapScreenTitle(
                                  AppRoutes.inicioDeSesiNEightyfiveScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "Inicio de sesión EightySix".tr,
                              onTapScreenTitle: () => onTapScreenTitle(
                                  AppRoutes.inicioDeSesiNEightysixScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "Inicio de sesión EightySeven".tr,
                              onTapScreenTitle: () => onTapScreenTitle(
                                  AppRoutes.inicioDeSesiNEightysevenScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "Inicio de sesión EightyEight".tr,
                              onTapScreenTitle: () => onTapScreenTitle(
                                  AppRoutes.inicioDeSesiNEightyeightScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "Inicio de sesión EightyNine".tr,
                              onTapScreenTitle: () => onTapScreenTitle(
                                  AppRoutes.inicioDeSesiNEightynineScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "Inicio de sesión Fifty".tr,
                              onTapScreenTitle: () => onTapScreenTitle(
                                  AppRoutes.inicioDeSesiNFiftyScreen),
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
      },
    );
  }

  /// Section Widget
  Widget _buildAppNavigation(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Color(0XFFFFFFFF),
      ),
      child: Column(
        children: [
          SizedBox(height: 10.v),
          Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.h),
              child: Text(
                "App Navigation".tr,
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Color(0XFF000000),
                  fontSize: 20.fSize,
                  fontFamily: 'Roboto',
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
          ),
          SizedBox(height: 10.v),
          Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: EdgeInsets.only(left: 20.h),
              child: Text(
                "Check your app's UI from the below demo screens of your app."
                    .tr,
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Color(0XFF888888),
                  fontSize: 16.fSize,
                  fontFamily: 'Roboto',
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
          ),
          SizedBox(height: 5.v),
          Divider(
            height: 1.v,
            thickness: 1.v,
            color: Color(0XFF000000),
          ),
        ],
      ),
    );
  }

  /// Common widget
  Widget _buildScreenTitle(
    BuildContext context, {
    required String screenTitle,
    Function? onTapScreenTitle,
  }) {
    return GestureDetector(
      onTap: () {
        onTapScreenTitle!.call();
      },
      child: Container(
        decoration: BoxDecoration(
          color: Color(0XFFFFFFFF),
        ),
        child: Column(
          children: [
            SizedBox(height: 10.v),
            Align(
              alignment: Alignment.centerLeft,
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 20.h),
                child: Text(
                  screenTitle,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Color(0XFF000000),
                    fontSize: 20.fSize,
                    fontFamily: 'Roboto',
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
            ),
            SizedBox(height: 10.v),
            SizedBox(height: 5.v),
            Divider(
              height: 1.v,
              thickness: 1.v,
              color: Color(0XFF888888),
            ),
          ],
        ),
      ),
    );
  }

  /// Common click event
  void onTapScreenTitle(String routeName) {
    NavigatorService.pushNamed(routeName);
  }
}
