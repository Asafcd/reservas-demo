import 'bloc/inicio_de_sesi_n_twentyfive_bloc.dart';
import 'models/inicio_de_sesi_n_twentyfive_model.dart';
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
import 'package:asaf_s_application2/widgets/custom_drop_down.dart';
import 'package:asaf_s_application2/widgets/custom_outlined_button.dart';
import 'package:flutter/material.dart';
import 'package:table_calendar/table_calendar.dart';

class InicioDeSesiNTwentyfiveScreen extends StatelessWidget {
  InicioDeSesiNTwentyfiveScreen({Key? key})
      : super(
          key: key,
        );

  GlobalKey<NavigatorState> navigatorKey = GlobalKey();

  static Widget builder(BuildContext context) {
    return BlocProvider<InicioDeSesiNTwentyfiveBloc>(
      create: (context) =>
          InicioDeSesiNTwentyfiveBloc(InicioDeSesiNTwentyfiveState(
        inicioDeSesiNTwentyfiveModelObj: InicioDeSesiNTwentyfiveModel(),
      ))
            ..add(InicioDeSesiNTwentyfiveInitialEvent()),
      child: InicioDeSesiNTwentyfiveScreen(),
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
                    Text(
                      "msg_seleccione_a_continuaci_n".tr,
                      style: CustomTextStyles.bodySmallOnPrimary,
                    ),
                    SizedBox(height: 16.v),
                    Container(
                      padding: EdgeInsets.symmetric(horizontal: 10.h),
                      decoration: AppDecoration.fillPrimaryContainer.copyWith(
                        borderRadius: BorderRadiusStyle.roundedBorder18,
                      ),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          _buildHeader(context),
                          _buildLocalCalendarGrid(context),
                          _buildLocalActions(context),
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
  Widget _buildHeader(BuildContext context) {
    return Container(
      padding: EdgeInsets.fromLTRB(24.h, 3.v, 24.h, 2.v),
      decoration: AppDecoration.outlineOnPrimaryContainer,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Padding(
            padding: EdgeInsets.only(top: 11.v),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "msg_selecciona_fecha".tr,
                  style: CustomTextStyles.titleSmallGray90001,
                ),
                SizedBox(height: 31.v),
                Text(
                  "lbl_jue_aug_17".tr,
                  style: theme.textTheme.headlineLarge,
                ),
              ],
            ),
          ),
          CustomImageView(
            imagePath: ImageConstant.imgEditCalendar,
            height: 24.adaptSize,
            width: 24.adaptSize,
            margin: EdgeInsets.only(
              top: 68.v,
              bottom: 20.v,
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildLocalCalendarGrid(BuildContext context) {
    return Container(
      decoration: AppDecoration.fillPrimaryContainer,
      child: Column(
        children: [
          Container(
            padding: EdgeInsets.symmetric(
              horizontal: 23.h,
              vertical: 6.v,
            ),
            decoration: AppDecoration.fillPrimaryContainer,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CustomOutlinedButton(
                  height: 36.v,
                  width: 65.h,
                  text: "lbl_mes".tr,
                  buttonStyle: CustomButtonStyles.outlinePrimaryTL8,
                  buttonTextStyle: CustomTextStyles.bodyLargePrimary,
                ),
                CustomOutlinedButton(
                  height: 36.v,
                  width: 64.h,
                  text: "lbl_a_o".tr,
                  buttonStyle: CustomButtonStyles.outlineOnPrimaryContainer,
                  buttonTextStyle: CustomTextStyles.bodyLargeOnPrimaryContainer,
                ),
                Padding(
                  padding: EdgeInsets.only(left: 16.h),
                  child: BlocSelector<
                      InicioDeSesiNTwentyfiveBloc,
                      InicioDeSesiNTwentyfiveState,
                      InicioDeSesiNTwentyfiveModel?>(
                    selector: (state) => state.inicioDeSesiNTwentyfiveModelObj,
                    builder: (context, inicioDeSesiNTwentyfiveModelObj) {
                      return CustomDropDown(
                        width: 76.h,
                        icon: Container(
                          margin: EdgeInsets.only(left: 11.h),
                          child: CustomImageView(
                            imagePath: ImageConstant
                                .imgFlechaSeleccionarOnprimarycontainer,
                            height: 28.adaptSize,
                            width: 28.adaptSize,
                          ),
                        ),
                        hintText: "lbl_mes".tr,
                        items:
                            inicioDeSesiNTwentyfiveModelObj?.dropdownItemList ??
                                [],
                        onChanged: (value) {
                          context
                              .read<InicioDeSesiNTwentyfiveBloc>()
                              .add(ChangeDropDownEvent(value: value));
                        },
                      );
                    },
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 16.h),
                  child: BlocSelector<
                      InicioDeSesiNTwentyfiveBloc,
                      InicioDeSesiNTwentyfiveState,
                      InicioDeSesiNTwentyfiveModel?>(
                    selector: (state) => state.inicioDeSesiNTwentyfiveModelObj,
                    builder: (context, inicioDeSesiNTwentyfiveModelObj) {
                      return CustomDropDown(
                        width: 76.h,
                        icon: Container(
                          margin: EdgeInsets.only(left: 12.h),
                          child: CustomImageView(
                            imagePath: ImageConstant
                                .imgFlechaSeleccionarOnprimarycontainer,
                            height: 28.adaptSize,
                            width: 28.adaptSize,
                          ),
                        ),
                        hintText: "lbl_a_o".tr,
                        items: inicioDeSesiNTwentyfiveModelObj
                                ?.dropdownItemList1 ??
                            [],
                        onChanged: (value) {
                          context
                              .read<InicioDeSesiNTwentyfiveBloc>()
                              .add(ChangeDropDown1Event(value: value));
                        },
                      );
                    },
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 15.v),
          BlocBuilder<InicioDeSesiNTwentyfiveBloc,
              InicioDeSesiNTwentyfiveState>(
            builder: (context, state) {
              return SizedBox(
                height: 263.v,
                width: 308.h,
                child: TableCalendar(
                  locale: 'en_US',
                  firstDay: DateTime(DateTime.now().year - 5),
                  lastDay: DateTime(DateTime.now().year + 5),
                  calendarFormat: CalendarFormat.month,
                  rangeSelectionMode: state.rangeSelectionMode,
                  startingDayOfWeek: StartingDayOfWeek.sunday,
                  headerStyle: HeaderStyle(
                    formatButtonVisible: false,
                    titleCentered: true,
                  ),
                  calendarStyle: CalendarStyle(
                    outsideDaysVisible: false,
                    isTodayHighlighted: true,
                    todayTextStyle: TextStyle(
                      color: theme.colorScheme.primaryContainer,
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w500,
                    ),
                    todayDecoration: BoxDecoration(
                      color: theme.colorScheme.primary,
                      borderRadius: BorderRadius.circular(
                        20.h,
                      ),
                    ),
                  ),
                  daysOfWeekStyle: DaysOfWeekStyle(),
                  headerVisible: false,
                  rowHeight: 40.adaptSize,
                  focusedDay: state.focusedDay ?? DateTime.now(),
                  rangeStartDay: state.rangeStart,
                  rangeEndDay: state.rangeEnd,
                  onDaySelected: (selectedDay, focusedDay) {
                    if (!isSameDay(state.selectedDay, selectedDay)) {
                      state.focusedDay = focusedDay;
                      state.selectedDay = selectedDay;
                      state.rangeSelectionMode = RangeSelectionMode.toggledOn;
                    }
                  },
                  onRangeSelected: (start, end, focusedDay) {
                    state.focusedDay = focusedDay;
                    state.rangeEnd = end;
                    state.rangeStart = start;
                    state.rangeSelectionMode = RangeSelectionMode.toggledOn;
                  },
                  onPageChanged: (focusedDay) {
                    state.focusedDay = focusedDay;
                  },
                ),
              );
            },
          ),
          SizedBox(height: 11.v),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildLocalActions(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 24.h,
        vertical: 17.v,
      ),
      decoration: AppDecoration.fillPrimaryContainer.copyWith(
        borderRadius: BorderRadiusStyle.customBorderBL28,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Padding(
            padding: EdgeInsets.only(bottom: 4.v),
            child: Text(
              "lbl_cancelar".tr,
              style: theme.textTheme.titleSmall,
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              left: 32.h,
              top: 2.v,
              bottom: 2.v,
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
