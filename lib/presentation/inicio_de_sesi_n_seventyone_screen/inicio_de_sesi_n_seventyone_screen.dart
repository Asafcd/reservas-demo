import '../inicio_de_sesi_n_seventyone_screen/widgets/activereservations_item_widget.dart';
import 'bloc/inicio_de_sesi_n_seventyone_bloc.dart';
import 'models/activereservations_item_model.dart';
import 'models/inicio_de_sesi_n_seventyone_model.dart';
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
import 'package:asaf_s_application2/widgets/custom_outlined_button.dart';
import 'package:flutter/material.dart';

class InicioDeSesiNSeventyoneScreen extends StatelessWidget {
  InicioDeSesiNSeventyoneScreen({Key? key})
      : super(
          key: key,
        );

  GlobalKey<NavigatorState> navigatorKey = GlobalKey();

  static Widget builder(BuildContext context) {
    return BlocProvider<InicioDeSesiNSeventyoneBloc>(
      create: (context) =>
          InicioDeSesiNSeventyoneBloc(InicioDeSesiNSeventyoneState(
        inicioDeSesiNSeventyoneModelObj: InicioDeSesiNSeventyoneModel(),
      ))
            ..add(InicioDeSesiNSeventyoneInitialEvent()),
      child: InicioDeSesiNSeventyoneScreen(),
    );
  }

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        appBar: _buildAppBar(context),
        body: SizedBox(
          height: 724.v,
          width: double.maxFinite,
          child: Stack(
            alignment: Alignment.center,
            children: [
              Align(
                alignment: Alignment.topLeft,
                child: Padding(
                  padding: EdgeInsets.only(top: 25.v),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
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
                      _buildCategories(context),
                      SizedBox(height: 16.v),
                      _buildActiveReservations(context),
                    ],
                  ),
                ),
              ),
              Align(
                alignment: Alignment.center,
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
  Widget _buildCategories(BuildContext context) {
    return Row(
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
            horizontal: 16.h,
            vertical: 10.v,
          ),
          decoration: AppDecoration.outlinePrimary4.copyWith(
            borderRadius: BorderRadiusStyle.roundedBorder18,
          ),
          child: Text(
            "msg_porcentaje_de_descuento".tr,
            textAlign: TextAlign.center,
            style: CustomTextStyles.labelLargePrimaryContainer,
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
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                padding: EdgeInsets.only(right: 16.h),
                child: IntrinsicWidth(
                  child: Container(
                    width: 101.h,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadiusStyle.circleBorder10,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        CustomImageView(
                          imagePath: ImageConstant.imgIcon3,
                          height: 18.adaptSize,
                          width: 18.adaptSize,
                          margin: EdgeInsets.only(bottom: 1.v),
                        ),
                        Spacer(),
                        CustomImageView(
                          imagePath: ImageConstant.imgIcon18x18,
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
                ),
              ),
            ],
          ),
        ),
        CustomOutlinedButton(
          width: 111.h,
          text: "lbl_externos".tr,
          margin: EdgeInsets.only(left: 16.h),
          leftIcon: Container(
            margin: EdgeInsets.only(right: 8.h),
            child: CustomImageView(
              imagePath: ImageConstant.imgIcon1,
              height: 18.adaptSize,
              width: 18.adaptSize,
            ),
          ),
        ),
      ],
    );
  }

  /// Section Widget
  Widget _buildActiveReservations(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        left: 234.h,
        right: 24.h,
      ),
      child: BlocSelector<InicioDeSesiNSeventyoneBloc,
          InicioDeSesiNSeventyoneState, InicioDeSesiNSeventyoneModel?>(
        selector: (state) => state.inicioDeSesiNSeventyoneModelObj,
        builder: (context, inicioDeSesiNSeventyoneModelObj) {
          return ListView.separated(
            physics: NeverScrollableScrollPhysics(),
            shrinkWrap: true,
            separatorBuilder: (
              context,
              index,
            ) {
              return SizedBox(
                height: 16.v,
              );
            },
            itemCount: inicioDeSesiNSeventyoneModelObj
                    ?.activereservationsItemList.length ??
                0,
            itemBuilder: (context, index) {
              ActivereservationsItemModel model =
                  inicioDeSesiNSeventyoneModelObj
                          ?.activereservationsItemList[index] ??
                      ActivereservationsItemModel();
              return ActivereservationsItemWidget(
                model,
              );
            },
          );
        },
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
