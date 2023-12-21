import 'bloc/inicio_de_sesi_n_fiftyone_tab_container_bloc.dart';
import 'models/inicio_de_sesi_n_fiftyone_tab_container_model.dart';
import 'package:asaf_s_application2/core/app_export.dart';
import 'package:asaf_s_application2/presentation/inicio_de_sesi_n_fiftyone_page/inicio_de_sesi_n_fiftyone_page.dart';
import 'package:asaf_s_application2/widgets/app_bar/appbar_leading_image.dart';
import 'package:asaf_s_application2/widgets/app_bar/appbar_title.dart';
import 'package:asaf_s_application2/widgets/app_bar/appbar_trailing_image.dart';
import 'package:asaf_s_application2/widgets/app_bar/custom_app_bar.dart';
import 'package:flutter/material.dart';

class InicioDeSesiNFiftyoneTabContainerScreen extends StatefulWidget {
  const InicioDeSesiNFiftyoneTabContainerScreen({Key? key})
      : super(
          key: key,
        );

  @override
  InicioDeSesiNFiftyoneTabContainerScreenState createState() =>
      InicioDeSesiNFiftyoneTabContainerScreenState();
  static Widget builder(BuildContext context) {
    return BlocProvider<InicioDeSesiNFiftyoneTabContainerBloc>(
      create: (context) => InicioDeSesiNFiftyoneTabContainerBloc(
          InicioDeSesiNFiftyoneTabContainerState(
        inicioDeSesiNFiftyoneTabContainerModelObj:
            InicioDeSesiNFiftyoneTabContainerModel(),
      ))
        ..add(InicioDeSesiNFiftyoneTabContainerInitialEvent()),
      child: InicioDeSesiNFiftyoneTabContainerScreen(),
    );
  }
}

class InicioDeSesiNFiftyoneTabContainerScreenState
    extends State<InicioDeSesiNFiftyoneTabContainerScreen>
    with TickerProviderStateMixin {
  late TabController tabviewController;

  @override
  void initState() {
    super.initState();
    tabviewController = TabController(length: 5, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return BlocBuilder<InicioDeSesiNFiftyoneTabContainerBloc,
        InicioDeSesiNFiftyoneTabContainerState>(
      builder: (context, state) {
        return SafeArea(
          child: Scaffold(
            appBar: _buildAppBar(context),
            body: SizedBox(
              width: mediaQueryData.size.width,
              child: SingleChildScrollView(
                child: SizedBox(
                  height: 860.v,
                  width: double.maxFinite,
                  child: Stack(
                    alignment: Alignment.bottomCenter,
                    children: [
                      _buildFrame(context),
                      Container(
                        margin: EdgeInsets.only(top: 180.v),
                        height: 680.v,
                        child: TabBarView(
                          controller: tabviewController,
                          children: [
                            InicioDeSesiNFiftyonePage(),
                            InicioDeSesiNFiftyonePage(),
                            InicioDeSesiNFiftyonePage(),
                            InicioDeSesiNFiftyonePage(),
                            InicioDeSesiNFiftyonePage(),
                          ],
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
              ),
            ),
          ),
        );
      },
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
  Widget _buildFrame(BuildContext context) {
    return Align(
      alignment: Alignment.topRight,
      child: Padding(
        padding: EdgeInsets.only(top: 89.v),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "msg_aparta_tu_consumo".tr,
              style: theme.textTheme.bodyLarge,
            ),
            SizedBox(height: 23.v),
            Container(
              height: 40.v,
              width: 404.h,
              child: TabBar(
                controller: tabviewController,
                isScrollable: true,
                labelColor: theme.colorScheme.primaryContainer,
                labelStyle: TextStyle(
                  fontSize: 12.fSize,
                  fontFamily: 'Poppins',
                  fontWeight: FontWeight.w600,
                ),
                unselectedLabelColor: theme.colorScheme.onPrimary,
                unselectedLabelStyle: TextStyle(
                  fontSize: 12.fSize,
                  fontFamily: 'Poppins',
                  fontWeight: FontWeight.w600,
                ),
                indicator: BoxDecoration(
                  color: theme.colorScheme.primary,
                  borderRadius: BorderRadius.circular(
                    20.h,
                  ),
                ),
                tabs: [
                  Tab(
                    child: Container(
                      padding: EdgeInsets.symmetric(
                        horizontal: 16.h,
                        vertical: 10.v,
                      ),
                      decoration: AppDecoration.fillPrimary.copyWith(
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
                              imagePath: ImageConstant.imgRestaurante,
                              height: 18.adaptSize,
                              width: 18.adaptSize,
                            ),
                            Padding(
                              padding: EdgeInsets.only(left: 8.h),
                              child: Text(
                                "lbl_todo".tr,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  Tab(
                    child: Container(
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
                              imagePath: ImageConstant.imgContrast,
                              height: 18.adaptSize,
                              width: 18.adaptSize,
                            ),
                            Padding(
                              padding: EdgeInsets.only(left: 8.h),
                              child: Text(
                                "lbl_entradas".tr,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  Tab(
                    child: Container(
                      padding: EdgeInsets.symmetric(
                        horizontal: 15.h,
                        vertical: 9.v,
                      ),
                      decoration: AppDecoration.outlinePrimary.copyWith(
                        borderRadius: BorderRadiusStyle.roundedBorder18,
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          CustomImageView(
                            imagePath: ImageConstant.imgLunchDining,
                            height: 18.adaptSize,
                            width: 18.adaptSize,
                          ),
                          Padding(
                            padding: EdgeInsets.only(left: 8.h),
                            child: Text(
                              "lbl_plato_fuerte".tr,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Tab(
                    child: Container(
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
                              imagePath: ImageConstant.imgPostre,
                              height: 18.adaptSize,
                              width: 18.adaptSize,
                              margin: EdgeInsets.symmetric(vertical: 1.v),
                            ),
                            Padding(
                              padding: EdgeInsets.only(left: 8.h),
                              child: Text(
                                "lbl_postres".tr,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  Tab(
                    child: Container(
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
                              imagePath: ImageConstant.imgBebidas,
                              height: 18.adaptSize,
                              width: 18.adaptSize,
                              margin: EdgeInsets.symmetric(vertical: 1.v),
                            ),
                            Padding(
                              padding: EdgeInsets.only(left: 8.h),
                              child: Text(
                                "lbl_bebidas".tr,
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
          ],
        ),
      ),
    );
  }
}
