import '../inicio_de_sesi_n_ninetyfour_screen/widgets/iniciodesesinninetyfour_item_widget.dart';
import 'bloc/inicio_de_sesi_n_ninetyfour_bloc.dart';
import 'models/inicio_de_sesi_n_ninetyfour_model.dart';
import 'models/iniciodesesinninetyfour_item_model.dart';
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
import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';

class InicioDeSesiNNinetyfourScreen extends StatelessWidget {
  InicioDeSesiNNinetyfourScreen({Key? key})
      : super(
          key: key,
        );

  GlobalKey<NavigatorState> navigatorKey = GlobalKey();

  static Widget builder(BuildContext context) {
    return BlocProvider<InicioDeSesiNNinetyfourBloc>(
      create: (context) =>
          InicioDeSesiNNinetyfourBloc(InicioDeSesiNNinetyfourState(
        inicioDeSesiNNinetyfourModelObj: InicioDeSesiNNinetyfourModel(),
      ))
            ..add(InicioDeSesiNNinetyfourInitialEvent()),
      child: InicioDeSesiNNinetyfourScreen(),
    );
  }

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        backgroundColor: theme.colorScheme.primaryContainer,
        appBar: _buildAppBar(context),
        body: SizedBox(
          width: double.maxFinite,
          child: Column(
            children: [
              SizedBox(height: 8.v),
              Container(
                margin: EdgeInsets.symmetric(horizontal: 16.h),
                decoration: AppDecoration.outlineGrayF.copyWith(
                  borderRadius: BorderRadiusStyle.roundedBorder18,
                ),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    _buildEspecialidades(context),
                    SizedBox(height: 15.v),
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        "lbl_comentario".tr,
                        style: theme.textTheme.bodyLarge,
                      ),
                    ),
                    SizedBox(height: 9.v),
                    _buildTextField(context),
                    SizedBox(height: 17.v),
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        "msg_a_adir_im_genes".tr,
                        style: theme.textTheme.bodyLarge,
                      ),
                    ),
                    SizedBox(height: 15.v),
                    _buildCamera(context),
                    SizedBox(height: 16.v),
                    _buildActions(context),
                  ],
                ),
              ),
              Spacer(),
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
        text: "lbl_product".tr,
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
  Widget _buildEspecialidades(BuildContext context) {
    return Container(
      width: 380.h,
      padding: EdgeInsets.symmetric(
        horizontal: 16.h,
        vertical: 14.v,
      ),
      decoration: AppDecoration.fillBlue.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder18,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(height: 2.v),
          Text(
            "msg_comparta_su_experiencia2".tr,
            style: CustomTextStyles.titleSmallOnPrimaryMedium,
          ),
          SizedBox(height: 7.v),
          Container(
            width: 330.h,
            margin: EdgeInsets.only(right: 17.h),
            child: Text(
              "msg_comparta_con_amigos".tr,
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
              style: CustomTextStyles.labelMediumOnPrimary,
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildTextField(BuildContext context) {
    return SizedBox(
      height: 72.v,
      width: 380.h,
      child: Stack(
        alignment: Alignment.center,
        children: [
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              height: 64.v,
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
              height: 72.v,
              width: 380.h,
              child: Stack(
                alignment: Alignment.topLeft,
                children: [
                  Align(
                    alignment: Alignment.bottomCenter,
                    child: Container(
                      height: 64.v,
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
                        children: [
                          Text(
                            "lbl_descripci_n".tr,
                            style: CustomTextStyles.bodySmallGray800,
                          ),
                          Text(
                            "lbl_ingresar".tr,
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
  Widget _buildAadirImGenMediano(BuildContext context) {
    return DottedBorder(
      color: theme.colorScheme.primary,
      padding: EdgeInsets.only(
        left: 2.h,
        top: 2.v,
        right: 2.h,
        bottom: 2.v,
      ),
      strokeWidth: 2.h,
      radius: Radius.circular(15),
      borderType: BorderType.RRect,
      dashPattern: [
        12,
        12,
      ],
      child: Container(
        padding: EdgeInsets.symmetric(
          horizontal: 20.h,
          vertical: 25.v,
        ),
        decoration: AppDecoration.outlinePrimary3.copyWith(
          borderRadius: BorderRadiusStyle.roundedBorder15,
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CustomImageView(
              imagePath: ImageConstant.imgCamera,
              height: 45.v,
              width: 50.h,
            ),
            SizedBox(height: 24.v),
            SizedBox(
              width: 134.h,
              child: Text(
                "msg_seleccione_una_fotograf_a".tr,
                maxLines: 3,
                overflow: TextOverflow.ellipsis,
                textAlign: TextAlign.center,
                style: CustomTextStyles.bodySmallPrimary,
              ),
            ),
          ],
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildCamera(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        _buildAadirImGenMediano(context),
        BlocSelector<InicioDeSesiNNinetyfourBloc, InicioDeSesiNNinetyfourState,
            InicioDeSesiNNinetyfourModel?>(
          selector: (state) => state.inicioDeSesiNNinetyfourModelObj,
          builder: (context, inicioDeSesiNNinetyfourModelObj) {
            return GridView.builder(
              shrinkWrap: true,
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                mainAxisExtent: 81.v,
                crossAxisCount: 2,
                mainAxisSpacing: 20.h,
                crossAxisSpacing: 20.h,
              ),
              physics: NeverScrollableScrollPhysics(),
              itemCount: inicioDeSesiNNinetyfourModelObj
                      ?.iniciodesesinninetyfourItemList.length ??
                  0,
              itemBuilder: (context, index) {
                IniciodesesinninetyfourItemModel model =
                    inicioDeSesiNNinetyfourModelObj
                            ?.iniciodesesinninetyfourItemList[index] ??
                        IniciodesesinninetyfourItemModel();
                return IniciodesesinninetyfourItemWidget(
                  model,
                );
              },
            );
          },
        ),
      ],
    );
  }

  /// Section Widget
  Widget _buildActions(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 36.h,
        vertical: 31.v,
      ),
      decoration: AppDecoration.fillPrimaryContainer.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder28,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Padding(
            padding: EdgeInsets.only(
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
