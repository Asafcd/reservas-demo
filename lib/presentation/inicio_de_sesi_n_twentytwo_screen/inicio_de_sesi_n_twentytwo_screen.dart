import '../inicio_de_sesi_n_twentytwo_screen/widgets/userprofile1_item_widget.dart';
import 'bloc/inicio_de_sesi_n_twentytwo_bloc.dart';
import 'dart:async';
import 'models/inicio_de_sesi_n_twentytwo_model.dart';
import 'models/userprofile1_item_model.dart';
import 'package:asaf_s_application2/core/app_export.dart';
import 'package:asaf_s_application2/presentation/inicio_de_sesi_n_forty_page/inicio_de_sesi_n_forty_page.dart';
import 'package:asaf_s_application2/presentation/inicio_de_sesi_n_fortynine_page/inicio_de_sesi_n_fortynine_page.dart';
import 'package:asaf_s_application2/presentation/inicio_de_sesi_n_ninetytwo_page/inicio_de_sesi_n_ninetytwo_page.dart';
import 'package:asaf_s_application2/presentation/inicio_de_sesi_n_twentyone_page/inicio_de_sesi_n_twentyone_page.dart';
import 'package:asaf_s_application2/widgets/custom_bottom_bar.dart';
import 'package:asaf_s_application2/widgets/custom_floating_text_field.dart';
import 'package:asaf_s_application2/widgets/custom_text_form_field.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class InicioDeSesiNTwentytwoScreen extends StatelessWidget {
  InicioDeSesiNTwentytwoScreen({Key? key})
      : super(
          key: key,
        );

  Completer<GoogleMapController> googleMapController = Completer();

  GlobalKey<NavigatorState> navigatorKey = GlobalKey();

  static Widget builder(BuildContext context) {
    return BlocProvider<InicioDeSesiNTwentytwoBloc>(
      create: (context) =>
          InicioDeSesiNTwentytwoBloc(InicioDeSesiNTwentytwoState(
        inicioDeSesiNTwentytwoModelObj: InicioDeSesiNTwentytwoModel(),
      ))
            ..add(InicioDeSesiNTwentytwoInitialEvent()),
      child: InicioDeSesiNTwentytwoScreen(),
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
            alignment: Alignment.bottomRight,
            children: [
              BlocSelector<InicioDeSesiNTwentytwoBloc,
                  InicioDeSesiNTwentytwoState, TextEditingController?>(
                selector: (state) => state.topAppBarController,
                builder: (context, topAppBarController) {
                  return CustomTextFormField(
                    width: 412.h,
                    controller: topAppBarController,
                    hintText: "lbl_product".tr,
                    hintStyle: theme.textTheme.titleLarge!,
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
                      _buildTopAppBarEditText(context),
                      SizedBox(height: 32.v),
                      _buildBarOasisStack(context),
                      SizedBox(height: 30.v),
                      _buildHeadlineColumn(context),
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
                    vertical: 94.v,
                  ),
                  decoration: AppDecoration.fillOnError.copyWith(
                    borderRadius: BorderRadiusStyle.roundedBorder18,
                  ),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Container(
                        padding: EdgeInsets.symmetric(horizontal: 24.h),
                        decoration: AppDecoration.fillPrimaryContainer.copyWith(
                          borderRadius: BorderRadiusStyle.customBorderTL28,
                        ),
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            SizedBox(height: 20.v),
                            Align(
                              alignment: Alignment.centerLeft,
                              child: Text(
                                "msg_ubicaci_n_actual".tr,
                                style: theme.textTheme.headlineSmall,
                              ),
                            ),
                            SizedBox(height: 15.v),
                            SizedBox(
                              width: 264.h,
                              child: Text(
                                "msg_ingrese_su_direcci_n".tr,
                                maxLines: 2,
                                overflow: TextOverflow.ellipsis,
                                style:
                                    CustomTextStyles.bodyMediumGray800.copyWith(
                                  height: 1.43,
                                ),
                              ),
                            ),
                            SizedBox(height: 6.v),
                            Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadiusStyle.customBorderTL4,
                              ),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  BlocSelector<
                                      InicioDeSesiNTwentytwoBloc,
                                      InicioDeSesiNTwentytwoState,
                                      TextEditingController?>(
                                    selector: (state) =>
                                        state.ubicacinactualvalueController,
                                    builder: (context,
                                        ubicacinactualvalueController) {
                                      return CustomFloatingTextField(
                                        controller:
                                            ubicacinactualvalueController,
                                        labelText: "msg_direcci_n_actual".tr,
                                        labelStyle: CustomTextStyles
                                            .bodyLargeGray9000116,
                                        hintText: "msg_direcci_n_actual".tr,
                                        textInputAction: TextInputAction.done,
                                        contentPadding: EdgeInsets.fromLTRB(
                                            16.h, 9.v, 16.h, 6.v),
                                      );
                                    },
                                  ),
                                  SizedBox(height: 2.v),
                                  Container(
                                    width: 185.h,
                                    margin: EdgeInsets.only(
                                      left: 16.h,
                                      right: 62.h,
                                    ),
                                    child: Text(
                                      "msg_verifique_que_la".tr,
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
                            _buildIntersectMap(context),
                          ],
                        ),
                      ),
                      SizedBox(height: 40.v),
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
  Widget _buildTopAppBarEditText(BuildContext context) {
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
                width: 55.h,
                decoration: BoxDecoration(
                  borderRadius: BorderRadiusStyle.circleBorder10,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    CustomImageView(
                      imagePath: ImageConstant.imgGlobe,
                      height: 18.adaptSize,
                      width: 18.adaptSize,
                      margin: EdgeInsets.symmetric(vertical: 1.v),
                    ),
                    Text(
                      "lbl_club".tr,
                      textAlign: TextAlign.center,
                      style: theme.textTheme.labelLarge,
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
                width: 72.h,
                decoration: BoxDecoration(
                  borderRadius: BorderRadiusStyle.circleBorder10,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    CustomImageView(
                      imagePath: ImageConstant.imgIcon,
                      height: 18.adaptSize,
                      width: 18.adaptSize,
                      margin: EdgeInsets.symmetric(vertical: 1.v),
                    ),
                    Text(
                      "lbl_boliche".tr,
                      textAlign: TextAlign.center,
                      style: theme.textTheme.labelLarge,
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }

  /// Section Widget
  Widget _buildBarOasisStack(BuildContext context) {
    return Align(
      alignment: Alignment.centerLeft,
      child: SizedBox(
        height: 252.v,
        width: 380.h,
        child: Stack(
          alignment: Alignment.bottomCenter,
          children: [
            BlocBuilder<InicioDeSesiNTwentytwoBloc,
                InicioDeSesiNTwentytwoState>(
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
                  itemCount: state.inicioDeSesiNTwentytwoModelObj
                          ?.userprofile1ItemList.length ??
                      0,
                  itemBuilder: (context, index, realIndex) {
                    Userprofile1ItemModel model = state
                            .inicioDeSesiNTwentytwoModelObj
                            ?.userprofile1ItemList[index] ??
                        Userprofile1ItemModel();
                    return Userprofile1ItemWidget(
                      model,
                    );
                  },
                );
              },
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: BlocBuilder<InicioDeSesiNTwentytwoBloc,
                  InicioDeSesiNTwentytwoState>(
                builder: (context, state) {
                  return SizedBox(
                    height: 32.v,
                    child: AnimatedSmoothIndicator(
                      activeIndex: state.sliderIndex,
                      count: state.inicioDeSesiNTwentytwoModelObj
                              ?.userprofile1ItemList.length ??
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
  Widget _buildHeadlineColumn(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "lbl_promociones".tr,
          style: theme.textTheme.bodyLarge,
        ),
        SizedBox(height: 26.v),
        Row(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CustomImageView(
                  imagePath: ImageConstant.imgRectangle12406,
                  height: 138.v,
                  width: 152.h,
                  radius: BorderRadius.circular(
                    28.h,
                  ),
                ),
                SizedBox(height: 7.v),
                Text(
                  "lbl_bar_oasis".tr,
                  style: theme.textTheme.titleMedium,
                ),
                SizedBox(height: 4.v),
                Row(
                  children: [
                    CustomImageView(
                      imagePath: ImageConstant.imgStar215,
                      height: 14.adaptSize,
                      width: 14.adaptSize,
                      radius: BorderRadius.circular(
                        1.h,
                      ),
                      margin: EdgeInsets.only(
                        top: 1.v,
                        bottom: 2.v,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 4.h),
                      child: Text(
                        "msg_4_8_1_200_reviews".tr,
                        style: theme.textTheme.bodySmall,
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 4.v),
                _buildFrame(
                  context,
                  viernesDomingo: "msg_viernes_domingo".tr,
                ),
                SizedBox(height: 4.v),
                _buildFrame1(
                  context,
                  timeText: "msg_4_00_p_m_3_00".tr,
                ),
              ],
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              padding: EdgeInsets.only(left: 24.h),
              child: IntrinsicWidth(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Expanded(
                          child: CustomImageView(
                            imagePath: ImageConstant.imgRectangle12407,
                            height: 138.v,
                            width: 152.h,
                            radius: BorderRadius.circular(
                              28.h,
                            ),
                            margin: EdgeInsets.only(right: 12.h),
                          ),
                        ),
                        Expanded(
                          child: CustomImageView(
                            imagePath: ImageConstant.imgRectangle12407138x152,
                            height: 138.v,
                            width: 152.h,
                            radius: BorderRadius.circular(
                              28.h,
                            ),
                            margin: EdgeInsets.only(left: 12.h),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 7.v),
                    Row(
                      children: [
                        Text(
                          "lbl_bar_oasis".tr,
                          style: theme.textTheme.titleMedium,
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: 99.h),
                          child: Text(
                            "lbl_bar_oasis".tr,
                            style: theme.textTheme.titleMedium,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 4.v),
                    Container(
                      width: 204.h,
                      margin: EdgeInsets.only(right: 123.h),
                      child: Row(
                        children: [
                          CustomImageView(
                            imagePath: ImageConstant.imgStar216,
                            height: 14.adaptSize,
                            width: 14.adaptSize,
                            radius: BorderRadius.circular(
                              1.h,
                            ),
                            margin: EdgeInsets.only(bottom: 2.v),
                          ),
                          Padding(
                            padding: EdgeInsets.only(left: 4.h),
                            child: Text(
                              "msg_4_8_1_200_reviews".tr,
                              style: theme.textTheme.bodySmall,
                            ),
                          ),
                          Spacer(),
                          _buildFrame2(
                            context,
                            clockImage: ImageConstant.imgStar217,
                            timeText: "msg_4_8_1_200_reviews".tr,
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 4.v),
                    Container(
                      width: 204.h,
                      margin: EdgeInsets.only(right: 123.h),
                      child: Row(
                        children: [
                          _buildFrame(
                            context,
                            viernesDomingo: "msg_viernes_domingo".tr,
                          ),
                          Spacer(),
                          CustomImageView(
                            imagePath: ImageConstant.imgEditCalendar,
                            height: 15.adaptSize,
                            width: 15.adaptSize,
                            margin: EdgeInsets.only(bottom: 2.v),
                          ),
                          Padding(
                            padding: EdgeInsets.only(left: 4.h),
                            child: Text(
                              "msg_viernes_domingo".tr,
                              style: theme.textTheme.bodySmall,
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 4.v),
                    Row(
                      children: [
                        _buildFrame1(
                          context,
                          timeText: "msg_4_00_p_m_3_00".tr,
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: 37.h),
                          child: _buildFrame2(
                            context,
                            clockImage: ImageConstant.imgClock,
                            timeText: "msg_4_00_p_m_3_00".tr,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              padding: EdgeInsets.only(left: 24.h),
              child: IntrinsicWidth(
                child: Column(
                  children: [
                    CustomImageView(
                      imagePath: ImageConstant.imgRectangle124071,
                      height: 138.v,
                      width: 152.h,
                      radius: BorderRadius.circular(
                        28.h,
                      ),
                    ),
                    SizedBox(height: 8.v),
                    Text(
                      "lbl_bar_oasis".tr,
                      style: theme.textTheme.titleMedium,
                    ),
                    SizedBox(height: 4.v),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        CustomImageView(
                          imagePath: ImageConstant.imgStar218,
                          height: 14.adaptSize,
                          width: 14.adaptSize,
                          radius: BorderRadius.circular(
                            1.h,
                          ),
                          margin: EdgeInsets.symmetric(vertical: 2.v),
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: 4.h),
                          child: Text(
                            "msg_4_8_1_200_reviews".tr,
                            style: theme.textTheme.bodySmall,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 4.v),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        CustomImageView(
                          imagePath: ImageConstant.imgEditCalendar,
                          height: 15.adaptSize,
                          width: 15.adaptSize,
                          margin: EdgeInsets.symmetric(vertical: 1.v),
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: 4.h),
                          child: Text(
                            "msg_viernes_domingo".tr,
                            style: theme.textTheme.bodySmall,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 4.v),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        CustomImageView(
                          imagePath: ImageConstant.imgClock,
                          height: 14.adaptSize,
                          width: 14.adaptSize,
                          margin: EdgeInsets.symmetric(vertical: 2.v),
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: 4.h),
                          child: Text(
                            "msg_4_00_p_m_3_00".tr,
                            style: theme.textTheme.bodySmall,
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
      ],
    );
  }

  /// Section Widget
  Widget _buildIntersectMap(BuildContext context) {
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

  /// Section Widget
  Widget _buildBottomBar(BuildContext context) {
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
    required String viernesDomingo,
  }) {
    return SizedBox(
      width: 131.h,
      child: Row(
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgEditCalendar,
            height: 15.adaptSize,
            width: 15.adaptSize,
            margin: EdgeInsets.only(bottom: 2.v),
          ),
          Padding(
            padding: EdgeInsets.only(left: 4.h),
            child: Text(
              viernesDomingo,
              style: theme.textTheme.bodySmall!.copyWith(
                color: theme.colorScheme.onPrimaryContainer,
              ),
            ),
          ),
        ],
      ),
    );
  }

  /// Common widget
  Widget _buildFrame1(
    BuildContext context, {
    required String timeText,
  }) {
    return SizedBox(
      width: 138.h,
      child: Row(
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgClock,
            height: 14.adaptSize,
            width: 14.adaptSize,
            margin: EdgeInsets.only(bottom: 3.v),
          ),
          Padding(
            padding: EdgeInsets.only(left: 4.h),
            child: Text(
              timeText,
              style: theme.textTheme.bodySmall!.copyWith(
                color: theme.colorScheme.onPrimaryContainer,
              ),
            ),
          ),
        ],
      ),
    );
  }

  /// Common widget
  Widget _buildFrame2(
    BuildContext context, {
    required String clockImage,
    required String timeText,
  }) {
    return SizedBox(
      width: 28.h,
      child: Row(
        children: [
          CustomImageView(
            imagePath: clockImage,
            height: 14.adaptSize,
            width: 14.adaptSize,
            margin: EdgeInsets.only(bottom: 3.v),
          ),
          Padding(
            padding: EdgeInsets.only(left: 4.h),
            child: Text(
              timeText,
              style: theme.textTheme.bodySmall!.copyWith(
                color: theme.colorScheme.onPrimaryContainer,
              ),
            ),
          ),
        ],
      ),
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
