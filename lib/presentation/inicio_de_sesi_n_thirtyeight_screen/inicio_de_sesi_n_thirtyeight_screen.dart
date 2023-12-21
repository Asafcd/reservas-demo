import 'bloc/inicio_de_sesi_n_thirtyeight_bloc.dart';import 'models/inicio_de_sesi_n_thirtyeight_model.dart';import 'package:asaf_s_application2/core/app_export.dart';import 'package:asaf_s_application2/presentation/inicio_de_sesi_n_forty_page/inicio_de_sesi_n_forty_page.dart';import 'package:asaf_s_application2/presentation/inicio_de_sesi_n_fortynine_page/inicio_de_sesi_n_fortynine_page.dart';import 'package:asaf_s_application2/presentation/inicio_de_sesi_n_ninetytwo_page/inicio_de_sesi_n_ninetytwo_page.dart';import 'package:asaf_s_application2/presentation/inicio_de_sesi_n_twentyone_page/inicio_de_sesi_n_twentyone_page.dart';import 'package:asaf_s_application2/widgets/app_bar/appbar_leading_image.dart';import 'package:asaf_s_application2/widgets/app_bar/appbar_title.dart';import 'package:asaf_s_application2/widgets/app_bar/appbar_trailing_image.dart';import 'package:asaf_s_application2/widgets/app_bar/custom_app_bar.dart';import 'package:asaf_s_application2/widgets/custom_bottom_bar.dart';import 'package:asaf_s_application2/widgets/custom_elevated_button.dart';import 'package:flutter/material.dart';import 'package:qr_flutter/qr_flutter.dart';import 'package:asaf_s_application2/presentation/inicio_de_sesi_n_thirtynine_dialog/inicio_de_sesi_n_thirtynine_dialog.dart';
// ignore_for_file: must_be_immutable
class InicioDeSesiNThirtyeightScreen extends StatelessWidget {InicioDeSesiNThirtyeightScreen({Key? key}) : super(key: key);

GlobalKey<NavigatorState> navigatorKey = GlobalKey();

static Widget builder(BuildContext context) { return BlocProvider<InicioDeSesiNThirtyeightBloc>(create: (context) => InicioDeSesiNThirtyeightBloc(InicioDeSesiNThirtyeightState(inicioDeSesiNThirtyeightModelObj: InicioDeSesiNThirtyeightModel()))..add(InicioDeSesiNThirtyeightInitialEvent()), child: InicioDeSesiNThirtyeightScreen()); } 
@override Widget build(BuildContext context) { mediaQueryData = MediaQuery.of(context); return BlocBuilder<InicioDeSesiNThirtyeightBloc, InicioDeSesiNThirtyeightState>(builder: (context, state) {return SafeArea(child: Scaffold(appBar: _buildAppBar(context), body: SizedBox(width: double.maxFinite, child: Column(children: [SizedBox(height: 8.v), Container(margin: EdgeInsets.symmetric(horizontal: 16.h), decoration: AppDecoration.outlineGrayF.copyWith(borderRadius: BorderRadiusStyle.roundedBorder18), child: Column(mainAxisSize: MainAxisSize.min, children: [Column(children: [Align(alignment: Alignment.centerLeft, child: Text("lbl_acceso".tr, style: theme.textTheme.bodyLarge)), SizedBox(height: 8.v), SizedBox(width: 380.h, child: Text("msg_a_continuaci_n_se".tr, maxLines: 3, overflow: TextOverflow.ellipsis, style: CustomTextStyles.bodySmallOnPrimary)), SizedBox(height: 39.v), QrImageView(data: 'https://www.google.com', size: 245.adaptSize), SizedBox(height: 42.v), Align(alignment: Alignment.centerLeft, child: Text("msg_este_c_digo_tambi_n".tr, style: CustomTextStyles.bodySmallOnPrimary)), SizedBox(height: 23.v), Text("")]), SizedBox(height: 87.v), CustomElevatedButton(width: 147.h, text: "lbl_compartir".tr, leftIcon: Container(margin: EdgeInsets.only(right: 12.h), child: CustomImageView(imagePath: ImageConstant.imgCompartir, height: 24.adaptSize, width: 24.adaptSize)), onPressed: () {onTapCompartir(context);}, alignment: Alignment.centerRight)]))])), bottomNavigationBar: Padding(padding: EdgeInsets.symmetric(horizontal: 8.h), child: _buildBottomBar(context))));}); } 
/// Section Widget
PreferredSizeWidget _buildAppBar(BuildContext context) { return CustomAppBar(leadingWidth: 48.h, leading: AppbarLeadingImage(imagePath: ImageConstant.imgMegaphone, margin: EdgeInsets.only(left: 24.h, top: 20.v, bottom: 20.v)), centerTitle: true, title: AppbarTitle(text: "lbl_product".tr), actions: [AppbarTrailingImage(imagePath: ImageConstant.imgLockGray800, margin: EdgeInsets.symmetric(horizontal: 24.h, vertical: 20.v))], styleType: Style.bgFill); } 
/// Section Widget
Widget _buildBottomBar(BuildContext context) { return CustomBottomBar(onChanged: (BottomBarEnum type) {Navigator.pushNamed(navigatorKey.currentContext!, getCurrentRoute(type));}); } 
///Handling route based on bottom click actions
String getCurrentRoute(BottomBarEnum type) { switch (type) {case BottomBarEnum.Promociones: return AppRoutes.inicioDeSesiNTwentyonePage; case BottomBarEnum.Favoritos: return AppRoutes.inicioDeSesiNFortyPage; case BottomBarEnum.Cercadem: return AppRoutes.inicioDeSesiNFortyninePage; case BottomBarEnum.Pickup: return AppRoutes.inicioDeSesiNNinetytwoPage; default: return "/";} } 
///Handling page based on route
Widget getCurrentPage(BuildContext context, String currentRoute, ) { switch (currentRoute) {case AppRoutes.inicioDeSesiNTwentyonePage: return InicioDeSesiNTwentyonePage(); case AppRoutes.inicioDeSesiNFortyPage: return InicioDeSesiNFortyPage(); case AppRoutes.inicioDeSesiNFortyninePage: return InicioDeSesiNFortyninePage(); case AppRoutes.inicioDeSesiNNinetytwoPage: return InicioDeSesiNNinetytwoPage(); default: return DefaultWidget();} } 

/// Displays a dialog with the [InicioDeSesiNThirtynineDialog] content.
onTapCompartir(BuildContext context) { showDialog(context: context, builder: (_) => AlertDialog(content: InicioDeSesiNThirtynineDialog.builder(context),backgroundColor: Colors.transparent, contentPadding: EdgeInsets.zero, insetPadding: const EdgeInsets.only(left: 0),)); } 
 }
