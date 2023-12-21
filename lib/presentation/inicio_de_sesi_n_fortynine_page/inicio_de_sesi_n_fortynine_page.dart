import '../inicio_de_sesi_n_fortynine_page/widgets/reservaactiva_item_widget.dart';
import 'bloc/inicio_de_sesi_n_fortynine_bloc.dart';
import 'models/inicio_de_sesi_n_fortynine_model.dart';
import 'models/reservaactiva_item_model.dart';
import 'package:asaf_s_application2/core/app_export.dart';
import 'package:asaf_s_application2/widgets/app_bar/appbar_leading_image.dart';
import 'package:asaf_s_application2/widgets/app_bar/appbar_title.dart';
import 'package:asaf_s_application2/widgets/app_bar/appbar_trailing_image.dart';
import 'package:asaf_s_application2/widgets/app_bar/custom_app_bar.dart';
import 'package:asaf_s_application2/widgets/custom_search_view.dart';
import 'package:flutter/material.dart';

// ignore_for_file: must_be_immutable
class InicioDeSesiNFortyninePage extends StatelessWidget {
  const InicioDeSesiNFortyninePage({Key? key})
      : super(
          key: key,
        );

  static Widget builder(BuildContext context) {
    return BlocProvider<InicioDeSesiNFortynineBloc>(
      create: (context) =>
          InicioDeSesiNFortynineBloc(InicioDeSesiNFortynineState(
        inicioDeSesiNFortynineModelObj: InicioDeSesiNFortynineModel(),
      ))
            ..add(InicioDeSesiNFortynineInitialEvent()),
      child: InicioDeSesiNFortyninePage(),
    );
  }

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        appBar: _buildAppBar(context),
        body: Container(
          width: 380.h,
          margin: EdgeInsets.only(
            left: 16.h,
            top: 8.v,
            right: 16.h,
          ),
          decoration: AppDecoration.outlineGrayF.copyWith(
            borderRadius: BorderRadiusStyle.roundedBorder18,
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              BlocSelector<InicioDeSesiNFortynineBloc,
                  InicioDeSesiNFortynineState, TextEditingController?>(
                selector: (state) => state.searchController,
                builder: (context, searchController) {
                  return CustomSearchView(
                    controller: searchController,
                    hintText: "lbl_buscar".tr,
                  );
                },
              ),
              SizedBox(height: 23.v),
              Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  "lbl_cerca_de_m".tr,
                  style: theme.textTheme.bodyLarge,
                ),
              ),
              SizedBox(height: 25.v),
              _buildReservaActiva(context),
            ],
          ),
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
        text: "lbl_cerca_de_m".tr,
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
  Widget _buildReservaActiva(BuildContext context) {
    return BlocSelector<InicioDeSesiNFortynineBloc, InicioDeSesiNFortynineState,
        InicioDeSesiNFortynineModel?>(
      selector: (state) => state.inicioDeSesiNFortynineModelObj,
      builder: (context, inicioDeSesiNFortynineModelObj) {
        return ListView.separated(
          physics: NeverScrollableScrollPhysics(),
          shrinkWrap: true,
          separatorBuilder: (
            context,
            index,
          ) {
            return SizedBox(
              height: 24.v,
            );
          },
          itemCount:
              inicioDeSesiNFortynineModelObj?.reservaactivaItemList.length ?? 0,
          itemBuilder: (context, index) {
            ReservaactivaItemModel model =
                inicioDeSesiNFortynineModelObj?.reservaactivaItemList[index] ??
                    ReservaactivaItemModel();
            return ReservaactivaItemWidget(
              model,
            );
          },
        );
      },
    );
  }
}
