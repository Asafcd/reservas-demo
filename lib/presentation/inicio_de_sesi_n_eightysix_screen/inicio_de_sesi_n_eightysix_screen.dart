import '../inicio_de_sesi_n_eightysix_screen/widgets/horarios4_item_widget.dart';
import 'bloc/inicio_de_sesi_n_eightysix_bloc.dart';
import 'models/horarios4_item_model.dart';
import 'models/inicio_de_sesi_n_eightysix_model.dart';
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

class InicioDeSesiNEightysixScreen extends StatelessWidget {
  InicioDeSesiNEightysixScreen({Key? key})
      : super(
          key: key,
        );

  GlobalKey<NavigatorState> navigatorKey = GlobalKey();

  static Widget builder(BuildContext context) {
    return BlocProvider<InicioDeSesiNEightysixBloc>(
      create: (context) =>
          InicioDeSesiNEightysixBloc(InicioDeSesiNEightysixState(
        inicioDeSesiNEightysixModelObj: InicioDeSesiNEightysixModel(),
      ))
            ..add(InicioDeSesiNEightysixInitialEvent()),
      child: InicioDeSesiNEightysixScreen(),
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
              SizedBox(height: 9.v),
              Container(
                margin: EdgeInsets.symmetric(horizontal: 16.h),
                decoration: AppDecoration.outlineGrayF.copyWith(
                  borderRadius: BorderRadiusStyle.roundedBorder18,
                ),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        "lbl_pick_up".tr,
                        style: theme.textTheme.bodyLarge,
                      ),
                    ),
                    SizedBox(height: 15.v),
                    _buildListaModal(context),
                    SizedBox(height: 15.v),
                    SizedBox(
                      width: 375.h,
                      child: Text(
                        "msg_seleccione_a_continuaci_n4".tr,
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                        style: CustomTextStyles.bodySmallOnPrimary,
                      ),
                    ),
                    SizedBox(height: 16.v),
                    _buildSeleccionDeHorarios(context),
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
  Widget _buildSeleccionDeHorarios(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 16.v),
      decoration: AppDecoration.fillPrimaryContainer.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder18,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          SizedBox(height: 16.v),
          BlocSelector<InicioDeSesiNEightysixBloc, InicioDeSesiNEightysixState,
              InicioDeSesiNEightysixModel?>(
            selector: (state) => state.inicioDeSesiNEightysixModelObj,
            builder: (context, inicioDeSesiNEightysixModelObj) {
              return Wrap(
                runSpacing: 10.v,
                spacing: 10.h,
                children: List<Widget>.generate(
                  inicioDeSesiNEightysixModelObj?.horarios4ItemList.length ?? 0,
                  (index) {
                    Horarios4ItemModel model = inicioDeSesiNEightysixModelObj
                            ?.horarios4ItemList[index] ??
                        Horarios4ItemModel();

                    return Horarios4ItemWidget(
                      model,
                      onSelectedChipView: (value) {
                        context.read<InicioDeSesiNEightysixBloc>().add(
                            UpdateChipViewEvent(
                                index: index, isSelected: value));
                      },
                    );
                  },
                ),
              );
            },
          ),
          SizedBox(height: 32.v),
          Container(
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
