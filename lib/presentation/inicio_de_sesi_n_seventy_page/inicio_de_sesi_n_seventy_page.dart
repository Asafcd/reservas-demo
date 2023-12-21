import 'bloc/inicio_de_sesi_n_seventy_bloc.dart';
import 'models/inicio_de_sesi_n_seventy_model.dart';
import 'package:asaf_s_application2/core/app_export.dart';
import 'package:flutter/material.dart';

// ignore_for_file: must_be_immutable
class InicioDeSesiNSeventyPage extends StatefulWidget {
  const InicioDeSesiNSeventyPage({Key? key})
      : super(
          key: key,
        );

  @override
  InicioDeSesiNSeventyPageState createState() =>
      InicioDeSesiNSeventyPageState();
  static Widget builder(BuildContext context) {
    return BlocProvider<InicioDeSesiNSeventyBloc>(
      create: (context) => InicioDeSesiNSeventyBloc(InicioDeSesiNSeventyState(
        inicioDeSesiNSeventyModelObj: InicioDeSesiNSeventyModel(),
      ))
        ..add(InicioDeSesiNSeventyInitialEvent()),
      child: InicioDeSesiNSeventyPage(),
    );
  }
}

class InicioDeSesiNSeventyPageState extends State<InicioDeSesiNSeventyPage>
    with AutomaticKeepAliveClientMixin<InicioDeSesiNSeventyPage> {
  @override
  bool get wantKeepAlive => true;
  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return BlocBuilder<InicioDeSesiNSeventyBloc, InicioDeSesiNSeventyState>(
      builder: (context, state) {
        return SafeArea(
          child: Scaffold(
            body: Container(
              width: double.maxFinite,
              decoration: AppDecoration.fillGray,
              child: Column(
                children: [
                  SizedBox(height: 16.v),
                  _buildReservaActiva(context),
                ],
              ),
            ),
          ),
        );
      },
    );
  }

  /// Section Widget
  Widget _buildReservaActiva(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 24.h),
      padding: EdgeInsets.symmetric(
        horizontal: 23.h,
        vertical: 14.v,
      ),
      decoration: AppDecoration.outlineRed.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder18,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgRectangle124076,
            height: 80.v,
            width: 88.h,
            margin: EdgeInsets.symmetric(vertical: 29.v),
          ),
          Padding(
            padding: EdgeInsets.only(
              left: 32.h,
              top: 2.v,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "msg_gracias_por_compartirnos".tr,
                  style: theme.textTheme.titleMedium,
                ),
                Row(
                  children: [
                    CustomImageView(
                      imagePath: ImageConstant.imgEditCalendar,
                      height: 15.adaptSize,
                      width: 15.adaptSize,
                      margin: EdgeInsets.symmetric(vertical: 1.v),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 8.h),
                      child: Text(
                        "msg_todas_las_noches".tr,
                        style: theme.textTheme.bodySmall,
                      ),
                    ),
                  ],
                ),
                Row(
                  children: [
                    CustomImageView(
                      imagePath: ImageConstant.imgClock,
                      height: 14.adaptSize,
                      width: 14.adaptSize,
                      margin: EdgeInsets.only(
                        top: 2.v,
                        bottom: 1.v,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 8.h),
                      child: Text(
                        "msg_9_00_a_m_3_00".tr,
                        style: theme.textTheme.bodySmall,
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 1.v),
                Row(
                  children: [
                    CustomImageView(
                      imagePath: ImageConstant.imgTimer,
                      height: 15.adaptSize,
                      width: 15.adaptSize,
                      margin: EdgeInsets.symmetric(vertical: 1.v),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 8.h),
                      child: Text(
                        "msg_01_ago_2023_15_ago_2023".tr,
                        style: CustomTextStyles.bodySmallRed900,
                      ),
                    ),
                  ],
                ),
                Row(
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
                      padding: EdgeInsets.only(left: 8.h),
                      child: Text(
                        "msg_bar_oasis_a_11_2".tr,
                        style: theme.textTheme.bodySmall,
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 2.v),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    CustomImageView(
                      imagePath: ImageConstant.imgPercent,
                      height: 15.adaptSize,
                      width: 15.adaptSize,
                      margin: EdgeInsets.only(bottom: 25.v),
                    ),
                    Container(
                      width: 171.h,
                      margin: EdgeInsets.only(left: 8.h),
                      child: Text(
                        "msg_20_de_descuento".tr,
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                        style: CustomTextStyles.bodySmall_2.copyWith(
                          height: 1.67,
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
