import '../inicio_de_sesi_n_twentyseven_screen/widgets/horarios2_item_widget.dart';
import '../inicio_de_sesi_n_twentyseven_screen/widgets/segmentedbutton2_item_widget.dart';
import 'bloc/inicio_de_sesi_n_twentyseven_bloc.dart';
import 'models/horarios2_item_model.dart';
import 'models/inicio_de_sesi_n_twentyseven_model.dart';
import 'models/segmentedbutton2_item_model.dart';
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
import 'package:flutter/material.dart';

class InicioDeSesiNTwentysevenScreen extends StatelessWidget {
  InicioDeSesiNTwentysevenScreen({Key? key})
      : super(
          key: key,
        );

  GlobalKey<NavigatorState> navigatorKey = GlobalKey();

  static Widget builder(BuildContext context) {
    return BlocProvider<InicioDeSesiNTwentysevenBloc>(
      create: (context) =>
          InicioDeSesiNTwentysevenBloc(InicioDeSesiNTwentysevenState(
        inicioDeSesiNTwentysevenModelObj: InicioDeSesiNTwentysevenModel(),
      ))
            ..add(InicioDeSesiNTwentysevenInitialEvent()),
      child: InicioDeSesiNTwentysevenScreen(),
    );
  }

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        appBar: _buildAppBar(context),
        body: SizedBox(
          width: double.maxFinite,
          child: Column(
            children: [
              SizedBox(height: 7.v),
              Container(
                margin: EdgeInsets.symmetric(horizontal: 16.h),
                decoration: AppDecoration.outlineGrayF.copyWith(
                  borderRadius: BorderRadiusStyle.roundedBorder18,
                ),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "lbl_reservaci_n".tr,
                      style: theme.textTheme.bodyLarge,
                    ),
                    SizedBox(height: 17.v),
                    _buildListaModal(context),
                    SizedBox(height: 15.v),
                    Container(
                      width: 309.h,
                      margin: EdgeInsets.only(right: 70.h),
                      child: Text(
                        "msg_seleccione_a_continuaci_n2".tr,
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                        style: CustomTextStyles.bodySmallOnPrimary,
                      ),
                    ),
                    SizedBox(height: 16.v),
                    Container(
                      padding: EdgeInsets.symmetric(vertical: 16.v),
                      decoration: AppDecoration.fillPrimaryContainer.copyWith(
                        borderRadius: BorderRadiusStyle.roundedBorder18,
                      ),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          SizedBox(height: 4.v),
                          _buildSegmentedButton(context),
                          SizedBox(height: 36.v),
                          _buildHorarios(context),
                          SizedBox(height: 32.v),
                          _buildInicioDeSesion(context),
                        ],
                      ),
                    ),
                  ],
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
  Widget _buildListaModal(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 8.h,
        vertical: 6.v,
      ),
      decoration: AppDecoration.fillPrimaryContainer.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder18,
      ),
      child: Row(
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgIntersect56x56,
            height: 56.adaptSize,
            width: 56.adaptSize,
            margin: EdgeInsets.symmetric(vertical: 10.v),
          ),
          Expanded(
            child: Container(
              width: 270.h,
              margin: EdgeInsets.only(left: 20.h),
              child: RichText(
                text: TextSpan(
                  children: [
                    TextSpan(
                      text: "lbl_bar_oasis2".tr,
                      style: theme.textTheme.titleMedium,
                    ),
                    TextSpan(
                      text: "msg_calle_mariposas2".tr,
                      style: theme.textTheme.bodySmall,
                    ),
                  ],
                ),
                textAlign: TextAlign.left,
              ),
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildSegmentedButton(BuildContext context) {
    return BlocSelector<InicioDeSesiNTwentysevenBloc,
        InicioDeSesiNTwentysevenState, InicioDeSesiNTwentysevenModel?>(
      selector: (state) => state.inicioDeSesiNTwentysevenModelObj,
      builder: (context, inicioDeSesiNTwentysevenModelObj) {
        return Wrap(
          runSpacing: 8.v,
          spacing: 8.h,
          children: List<Widget>.generate(
            inicioDeSesiNTwentysevenModelObj?.segmentedbutton2ItemList.length ??
                0,
            (index) {
              Segmentedbutton2ItemModel model = inicioDeSesiNTwentysevenModelObj
                      ?.segmentedbutton2ItemList[index] ??
                  Segmentedbutton2ItemModel();

              return Segmentedbutton2ItemWidget(
                model,
                onSelectedChipView: (value) {
                  context.read<InicioDeSesiNTwentysevenBloc>().add(
                      UpdateChipViewEvent(index: index, isSelected: value));
                },
              );
            },
          ),
        );
      },
    );
  }

  /// Section Widget
  Widget _buildHorarios(BuildContext context) {
    return BlocSelector<InicioDeSesiNTwentysevenBloc,
        InicioDeSesiNTwentysevenState, InicioDeSesiNTwentysevenModel?>(
      selector: (state) => state.inicioDeSesiNTwentysevenModelObj,
      builder: (context, inicioDeSesiNTwentysevenModelObj) {
        return Wrap(
          runSpacing: 10.v,
          spacing: 10.h,
          children: List<Widget>.generate(
            inicioDeSesiNTwentysevenModelObj?.horarios2ItemList.length ?? 0,
            (index) {
              Horarios2ItemModel model =
                  inicioDeSesiNTwentysevenModelObj?.horarios2ItemList[index] ??
                      Horarios2ItemModel();

              return Horarios2ItemWidget(
                model,
                onSelectedChipView: (value) {
                  context.read<InicioDeSesiNTwentysevenBloc>().add(
                      UpdateChipView1Event(index: index, isSelected: value));
                },
              );
            },
          ),
        );
      },
    );
  }

  /// Section Widget
  Widget _buildInicioDeSesion(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 36.h,
        vertical: 31.v,
      ),
      decoration: AppDecoration.fillPrimaryContainer.copyWith(
        borderRadius: BorderRadiusStyle.customBorderBL28,
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
