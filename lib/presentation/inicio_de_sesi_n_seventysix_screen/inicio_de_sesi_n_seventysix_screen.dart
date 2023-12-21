import '../inicio_de_sesi_n_seventysix_screen/widgets/baroasis6_item_widget.dart';
import '../inicio_de_sesi_n_seventysix_screen/widgets/widget12_item_widget.dart';
import 'bloc/inicio_de_sesi_n_seventysix_bloc.dart';
import 'models/baroasis6_item_model.dart';
import 'models/inicio_de_sesi_n_seventysix_model.dart';
import 'models/widget12_item_model.dart';
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
import 'package:asaf_s_application2/widgets/custom_rating_bar.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class InicioDeSesiNSeventysixScreen extends StatelessWidget {
  InicioDeSesiNSeventysixScreen({Key? key})
      : super(
          key: key,
        );

  GlobalKey<NavigatorState> navigatorKey = GlobalKey();

  static Widget builder(BuildContext context) {
    return BlocProvider<InicioDeSesiNSeventysixBloc>(
      create: (context) =>
          InicioDeSesiNSeventysixBloc(InicioDeSesiNSeventysixState(
        inicioDeSesiNSeventysixModelObj: InicioDeSesiNSeventysixModel(),
      ))
            ..add(InicioDeSesiNSeventysixInitialEvent()),
      child: InicioDeSesiNSeventysixScreen(),
    );
  }

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        appBar: _buildAppBar(context),
        body: SizedBox(
          width: mediaQueryData.size.width,
          child: SingleChildScrollView(
            child: Container(
              height: 1200.v,
              width: 412.h,
              margin: EdgeInsets.symmetric(horizontal: 8.h),
              child: Stack(
                alignment: Alignment.topCenter,
                children: [
                  Align(
                    alignment: Alignment.bottomCenter,
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadiusStyle.roundedBorder18,
                      ),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          _buildBarOasis(context),
                          SizedBox(height: 7.v),
                          Padding(
                            padding: EdgeInsets.only(left: 16.h),
                            child: Text(
                              "lbl_calificar".tr,
                              style: theme.textTheme.bodyLarge,
                            ),
                          ),
                          SizedBox(height: 9.v),
                          Padding(
                            padding: EdgeInsets.only(left: 16.h),
                            child: CustomRatingBar(
                              initialRating: 5,
                              itemSize: 24,
                            ),
                          ),
                          SizedBox(height: 7.v),
                          Padding(
                            padding: EdgeInsets.only(left: 16.h),
                            child: Text(
                              "lbl_informaci_n".tr,
                              style: theme.textTheme.bodyLarge,
                            ),
                          ),
                          SizedBox(height: 9.v),
                          Container(
                            width: 359.h,
                            margin: EdgeInsets.only(
                              left: 16.h,
                              right: 36.h,
                            ),
                            child: Text(
                              "msg_lorem_ipsum_dolor".tr,
                              maxLines: 5,
                              overflow: TextOverflow.ellipsis,
                              style: CustomTextStyles.bodySmallOnPrimary,
                            ),
                          ),
                          SizedBox(height: 6.v),
                          Padding(
                            padding: EdgeInsets.only(left: 16.h),
                            child: Text(
                              "lbl_servicios".tr,
                              style: theme.textTheme.bodyLarge,
                            ),
                          ),
                          SizedBox(height: 9.v),
                          _buildWidget(context),
                          SizedBox(height: 7.v),
                          Padding(
                            padding: EdgeInsets.only(left: 16.h),
                            child: Text(
                              "lbl_ubicaci_n".tr,
                              style: theme.textTheme.bodyLarge,
                            ),
                          ),
                          SizedBox(height: 9.v),
                          Padding(
                            padding: EdgeInsets.only(left: 16.h),
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
                                  padding: EdgeInsets.only(left: 4.h),
                                  child: Text(
                                    "lbl_a_11_2_km_de_ti".tr,
                                    style: theme.textTheme.bodySmall,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(height: 3.v),
                          _buildVerMenu(context),
                          SizedBox(height: 6.v),
                          CustomImageView(
                            imagePath: ImageConstant.imgIntersect300x264,
                            height: 400.v,
                            width: 380.h,
                            radius: BorderRadius.circular(
                              28.h,
                            ),
                            alignment: Alignment.center,
                          ),
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
  Widget _buildBarOasis(BuildContext context) {
    return BlocBuilder<InicioDeSesiNSeventysixBloc,
        InicioDeSesiNSeventysixState>(
      builder: (context, state) {
        return CarouselSlider.builder(
          options: CarouselOptions(
            height: 252.v,
            initialPage: 0,
            autoPlay: true,
            viewportFraction: 1.0,
            enableInfiniteScroll: false,
            scrollDirection: Axis.horizontal,
            onPageChanged: (
              index,
              reason,
            ) {
              state.sliderIndex = index;
            },
          ),
          itemCount:
              state.inicioDeSesiNSeventysixModelObj?.baroasis6ItemList.length ??
                  0,
          itemBuilder: (context, index, realIndex) {
            Baroasis6ItemModel model = state.inicioDeSesiNSeventysixModelObj
                    ?.baroasis6ItemList[index] ??
                Baroasis6ItemModel();
            return Baroasis6ItemWidget(
              model,
            );
          },
        );
      },
    );
  }

  /// Section Widget
  Widget _buildWidget(BuildContext context) {
    return Align(
      alignment: Alignment.center,
      child: BlocSelector<InicioDeSesiNSeventysixBloc,
          InicioDeSesiNSeventysixState, InicioDeSesiNSeventysixModel?>(
        selector: (state) => state.inicioDeSesiNSeventysixModelObj,
        builder: (context, inicioDeSesiNSeventysixModelObj) {
          return Wrap(
            runSpacing: 16.v,
            spacing: 16.h,
            children: List<Widget>.generate(
              inicioDeSesiNSeventysixModelObj?.widget12ItemList.length ?? 0,
              (index) {
                Widget12ItemModel model =
                    inicioDeSesiNSeventysixModelObj?.widget12ItemList[index] ??
                        Widget12ItemModel();

                return Widget12ItemWidget(
                  model,
                  onSelectedChipView: (value) {
                    context.read<InicioDeSesiNSeventysixBloc>().add(
                        UpdateChipViewEvent(index: index, isSelected: value));
                  },
                );
              },
            ),
          );
        },
      ),
    );
  }

  /// Section Widget
  Widget _buildVerMenu(BuildContext context) {
    return Align(
      alignment: Alignment.center,
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 16.h),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              width: 164.h,
              margin: EdgeInsets.only(top: 5.v),
              child: Text(
                "msg_calle_mariposas".tr,
                maxLines: 4,
                overflow: TextOverflow.ellipsis,
                style: CustomTextStyles.bodySmallOnPrimary,
              ),
            ),
            CustomElevatedButton(
              width: 143.h,
              text: "lbl_ver_men".tr,
              margin: EdgeInsets.only(
                left: 72.h,
                bottom: 22.v,
              ),
              leftIcon: Container(
                margin: EdgeInsets.only(right: 12.h),
                child: CustomImageView(
                  imagePath: ImageConstant.imgMenubook,
                  height: 24.adaptSize,
                  width: 24.adaptSize,
                ),
              ),
            ),
          ],
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
