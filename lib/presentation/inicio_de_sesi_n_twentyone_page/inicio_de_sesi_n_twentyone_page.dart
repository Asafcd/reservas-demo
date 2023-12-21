import '../inicio_de_sesi_n_twentyone_page/widgets/baroasiscomponent_item_widget.dart';
import '../inicio_de_sesi_n_twentyone_page/widgets/userprofile_item_widget.dart';
import 'bloc/inicio_de_sesi_n_twentyone_bloc.dart';
import 'dart:async';
import 'models/baroasiscomponent_item_model.dart';
import 'models/inicio_de_sesi_n_twentyone_model.dart';
import 'models/userprofile_item_model.dart';
import 'package:asaf_s_application2/core/app_export.dart';
import 'package:asaf_s_application2/widgets/custom_outlined_button.dart';
import 'package:asaf_s_application2/widgets/custom_text_form_field.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

// ignore_for_file: must_be_immutable
class InicioDeSesiNTwentyonePage extends StatelessWidget {
  InicioDeSesiNTwentyonePage({Key? key})
      : super(
          key: key,
        );

  Completer<GoogleMapController> googleMapController = Completer();

  static Widget builder(BuildContext context) {
    return BlocProvider<InicioDeSesiNTwentyoneBloc>(
      create: (context) =>
          InicioDeSesiNTwentyoneBloc(InicioDeSesiNTwentyoneState(
        inicioDeSesiNTwentyoneModelObj: InicioDeSesiNTwentyoneModel(),
      ))
            ..add(InicioDeSesiNTwentyoneInitialEvent()),
      child: InicioDeSesiNTwentyonePage(),
    );
  }

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        body: Container(
          width: double.maxFinite,
          decoration: AppDecoration.fillGray,
          child: SizedBox(
            height: 788.v,
            width: double.maxFinite,
            child: Stack(
              alignment: Alignment.bottomRight,
              children: [
                BlocSelector<InicioDeSesiNTwentyoneBloc,
                    InicioDeSesiNTwentyoneState, TextEditingController?>(
                  selector: (state) => state.topAppBarController,
                  builder: (context, topAppBarController) {
                    return CustomTextFormField(
                      width: 412.h,
                      controller: topAppBarController,
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
                  alignment: Alignment.bottomRight,
                  child: Padding(
                    padding: EdgeInsets.only(bottom: 18.v),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        _buildClubSection(context),
                        SizedBox(height: 32.v),
                        _buildBarOasisSection(context),
                        SizedBox(height: 30.v),
                        _buildHeadlineSection(context),
                      ],
                    ),
                  ),
                ),
                Align(
                  alignment: Alignment.bottomCenter,
                  child: Container(
                    margin: EdgeInsets.symmetric(horizontal: 8.h),
                    padding: EdgeInsets.symmetric(
                      horizontal: 50.h,
                      vertical: 58.v,
                    ),
                    decoration: AppDecoration.fillOnError.copyWith(
                      borderRadius: BorderRadiusStyle.roundedBorder18,
                    ),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Container(
                          padding: EdgeInsets.symmetric(horizontal: 24.h),
                          decoration:
                              AppDecoration.fillPrimaryContainer.copyWith(
                            borderRadius: BorderRadiusStyle.customBorderTL28,
                          ),
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              SizedBox(height: 20.v),
                              Text(
                                "msg_ubicaci_n_actual".tr,
                                style: theme.textTheme.headlineSmall,
                              ),
                              SizedBox(height: 15.v),
                              Container(
                                width: 246.h,
                                margin: EdgeInsets.only(right: 18.h),
                                child: Text(
                                  "msg_verifique_que_su".tr,
                                  maxLines: 2,
                                  overflow: TextOverflow.ellipsis,
                                  style: CustomTextStyles.bodyMediumGray800
                                      .copyWith(
                                    height: 1.43,
                                  ),
                                ),
                              ),
                              SizedBox(height: 3.v),
                              Container(
                                decoration: BoxDecoration(
                                  borderRadius:
                                      BorderRadiusStyle.customBorderTL4,
                                ),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    SizedBox(
                                      height: 121.v,
                                      width: 264.h,
                                      child: Stack(
                                        alignment: Alignment.topCenter,
                                        children: [
                                          Align(
                                            alignment: Alignment.bottomCenter,
                                            child: Container(
                                              height: 112.v,
                                              width: 264.h,
                                              decoration: BoxDecoration(
                                                borderRadius:
                                                    BorderRadius.circular(
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
                                            alignment: Alignment.topCenter,
                                            child: Padding(
                                              padding: EdgeInsets.only(
                                                left: 12.h,
                                                right: 16.h,
                                              ),
                                              child: Column(
                                                mainAxisSize: MainAxisSize.min,
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: [
                                                  SizedBox(
                                                    height: 18.v,
                                                    width: 106.h,
                                                    child: Stack(
                                                      alignment:
                                                          Alignment.center,
                                                      children: [
                                                        Align(
                                                          alignment: Alignment
                                                              .bottomCenter,
                                                          child: Container(
                                                            height: 16.v,
                                                            width: 106.h,
                                                            decoration:
                                                                BoxDecoration(
                                                              color: theme
                                                                  .colorScheme
                                                                  .primaryContainer,
                                                            ),
                                                          ),
                                                        ),
                                                        Align(
                                                          alignment:
                                                              Alignment.center,
                                                          child: Text(
                                                            "msg_direcci_n_actual"
                                                                .tr,
                                                            style: CustomTextStyles
                                                                .bodySmallGray800,
                                                          ),
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                  Padding(
                                                    padding: EdgeInsets.only(
                                                        left: 4.h),
                                                    child: Text(
                                                      "msg_calle_mariposas".tr,
                                                      style: CustomTextStyles
                                                          .bodyLargeGray9000116,
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    SizedBox(height: 3.v),
                                    Container(
                                      width: 223.h,
                                      margin: EdgeInsets.only(
                                        left: 16.h,
                                        right: 24.h,
                                      ),
                                      child: Text(
                                        "msg_si_existe_alg_n".tr,
                                        maxLines: 3,
                                        overflow: TextOverflow.ellipsis,
                                        style: CustomTextStyles.bodySmallGray800
                                            .copyWith(
                                          height: 1.33,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              SizedBox(height: 13.v),
                              _buildMapSection(context),
                            ],
                          ),
                        ),
                        SizedBox(height: 40.v),
                        Container(
                          padding: EdgeInsets.symmetric(
                            horizontal: 36.h,
                            vertical: 31.v,
                          ),
                          decoration:
                              AppDecoration.fillPrimaryContainer.copyWith(
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
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildClubSection(BuildContext context) {
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
                      style: CustomTextStyles.labelLargePrimaryContainer,
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
                decoration: BoxDecoration(
                  borderRadius: BorderRadiusStyle.circleBorder10,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  mainAxisSize: MainAxisSize.min,
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
                width: 78.h,
                decoration: BoxDecoration(
                  borderRadius: BorderRadiusStyle.circleBorder10,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    CustomImageView(
                      imagePath: ImageConstant.imgMenu,
                      height: 18.adaptSize,
                      width: 18.adaptSize,
                    ),
                    Text(
                      "lbl_karaoke".tr,
                      style: theme.textTheme.labelLarge,
                    ),
                  ],
                ),
              ),
            ),
            CustomOutlinedButton(
              width: 87.h,
              text: "lbl_club".tr,
              margin: EdgeInsets.only(left: 16.h),
              leftIcon: Container(
                margin: EdgeInsets.only(right: 8.h),
                child: CustomImageView(
                  imagePath: ImageConstant.imgGlobe,
                  height: 18.adaptSize,
                  width: 18.adaptSize,
                ),
              ),
            ),
            CustomOutlinedButton(
              width: 104.h,
              text: "lbl_boliche".tr,
              margin: EdgeInsets.only(left: 16.h),
              leftIcon: Container(
                margin: EdgeInsets.only(right: 8.h),
                child: CustomImageView(
                  imagePath: ImageConstant.imgIcon,
                  height: 18.adaptSize,
                  width: 18.adaptSize,
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }

  /// Section Widget
  Widget _buildBarOasisSection(BuildContext context) {
    return Align(
      alignment: Alignment.centerLeft,
      child: SizedBox(
        height: 252.v,
        width: 380.h,
        child: Stack(
          alignment: Alignment.bottomCenter,
          children: [
            BlocBuilder<InicioDeSesiNTwentyoneBloc,
                InicioDeSesiNTwentyoneState>(
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
                  itemCount: state.inicioDeSesiNTwentyoneModelObj
                          ?.userprofileItemList.length ??
                      0,
                  itemBuilder: (context, index, realIndex) {
                    UserprofileItemModel model = state
                            .inicioDeSesiNTwentyoneModelObj
                            ?.userprofileItemList[index] ??
                        UserprofileItemModel();
                    return UserprofileItemWidget(
                      model,
                    );
                  },
                );
              },
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: BlocBuilder<InicioDeSesiNTwentyoneBloc,
                  InicioDeSesiNTwentyoneState>(
                builder: (context, state) {
                  return SizedBox(
                    height: 32.v,
                    child: AnimatedSmoothIndicator(
                      activeIndex: state.sliderIndex,
                      count: state.inicioDeSesiNTwentyoneModelObj
                              ?.userprofileItemList.length ??
                          0,
                      axisDirection: Axis.horizontal,
                      effect: ScrollingDotsEffect(
                        spacing: 9,
                        activeDotColor: theme.colorScheme.primary,
                        dotColor: theme.colorScheme.primary.withOpacity(0.75),
                        activeDotScale: 1.3333333333333333,
                        dotHeight: 12.v,
                        dotWidth: 12.h,
                      ),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildHeadlineSection(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "lbl_promociones".tr,
          style: theme.textTheme.bodyLarge,
        ),
        SizedBox(height: 26.v),
        SizedBox(
          height: 237.v,
          child: BlocSelector<InicioDeSesiNTwentyoneBloc,
              InicioDeSesiNTwentyoneState, InicioDeSesiNTwentyoneModel?>(
            selector: (state) => state.inicioDeSesiNTwentyoneModelObj,
            builder: (context, inicioDeSesiNTwentyoneModelObj) {
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
                itemCount: inicioDeSesiNTwentyoneModelObj
                        ?.baroasiscomponentItemList.length ??
                    0,
                itemBuilder: (context, index) {
                  BaroasiscomponentItemModel model =
                      inicioDeSesiNTwentyoneModelObj
                              ?.baroasiscomponentItemList[index] ??
                          BaroasiscomponentItemModel();
                  return BaroasiscomponentItemWidget(
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

  /// Section Widget
  Widget _buildMapSection(BuildContext context) {
    return SizedBox(
      height: 300.v,
      width: 264.h,
      child: GoogleMap(
        //TODO: Add your Google Maps API key in AndroidManifest.xml and pod file
        mapType: MapType.normal,
        initialCameraPosition: CameraPosition(
          target: LatLng(
            37.43296265331129,
            -122.08832357078792,
          ),
          zoom: 14.4746,
        ),
        onMapCreated: (GoogleMapController controller) {
          googleMapController.complete(controller);
        },
        zoomControlsEnabled: false,
        zoomGesturesEnabled: false,
        myLocationButtonEnabled: false,
        myLocationEnabled: false,
      ),
    );
  }
}
