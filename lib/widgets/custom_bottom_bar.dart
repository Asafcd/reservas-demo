import 'package:asaf_s_application2/core/app_export.dart';
import 'package:flutter/material.dart';

class CustomBottomBar extends StatefulWidget {
  CustomBottomBar({this.onChanged});

  Function(BottomBarEnum)? onChanged;

  @override
  CustomBottomBarState createState() => CustomBottomBarState();
}

class CustomBottomBarState extends State<CustomBottomBar> {
  int selectedIndex = 0;

  List<BottomMenuModel> bottomMenuList = [
    BottomMenuModel(
      icon: ImageConstant.imgNavPromociones,
      activeIcon: ImageConstant.imgNavPromociones,
      title: "lbl_promociones".tr,
      type: BottomBarEnum.Promociones,
    ),
    BottomMenuModel(
      icon: ImageConstant.imgNavFavoritos,
      activeIcon: ImageConstant.imgNavFavoritos,
      title: "lbl_favoritos".tr,
      type: BottomBarEnum.Favoritos,
    ),
    BottomMenuModel(
      icon: ImageConstant.imgNavCercaDeM,
      activeIcon: ImageConstant.imgNavCercaDeM,
      title: "lbl_cerca_de_m".tr,
      type: BottomBarEnum.Cercadem,
    ),
    BottomMenuModel(
      icon: ImageConstant.imgNavPickUp,
      activeIcon: ImageConstant.imgNavPickUp,
      title: "lbl_pick_up".tr,
      type: BottomBarEnum.Pickup,
    )
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 64.v,
      decoration: BoxDecoration(
        color: theme.colorScheme.primaryContainer,
        borderRadius: BorderRadius.vertical(
          bottom: Radius.circular(18.h),
        ),
      ),
      child: BottomNavigationBar(
        backgroundColor: Colors.transparent,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        selectedFontSize: 0,
        elevation: 0,
        currentIndex: selectedIndex,
        type: BottomNavigationBarType.fixed,
        items: List.generate(bottomMenuList.length, (index) {
          return BottomNavigationBarItem(
            icon: Container(
              decoration: AppDecoration.fillPrimaryContainer,
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CustomImageView(
                    imagePath: bottomMenuList[index].icon,
                    height: 24.adaptSize,
                    width: 24.adaptSize,
                    color: appTheme.gray800,
                    margin: EdgeInsets.only(top: 10.v),
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                      top: 1.v,
                      bottom: 13.v,
                    ),
                    child: Text(
                      bottomMenuList[index].title ?? "",
                      style: theme.textTheme.labelMedium!.copyWith(
                        color: appTheme.gray800,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            activeIcon: Container(
              decoration: AppDecoration.fillPrimaryContainer.copyWith(
                borderRadius: BorderRadiusStyle.customBorderBL18,
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  CustomImageView(
                    imagePath: bottomMenuList[index].activeIcon,
                    height: 24.adaptSize,
                    width: 24.adaptSize,
                    color: theme.colorScheme.primary,
                    margin: EdgeInsets.only(top: 10.v),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 1.v),
                    child: Text(
                      bottomMenuList[index].title ?? "",
                      style: CustomTextStyles.labelMediumPrimary.copyWith(
                        color: theme.colorScheme.primary,
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 10.v),
                    child: SizedBox(
                      width: 64.h,
                      child: Divider(),
                    ),
                  ),
                ],
              ),
            ),
            label: '',
          );
        }),
        onTap: (index) {
          selectedIndex = index;
          widget.onChanged?.call(bottomMenuList[index].type);
          setState(() {});
        },
      ),
    );
  }
}

enum BottomBarEnum {
  Promociones,
  Favoritos,
  Cercadem,
  Pickup,
}

class BottomMenuModel {
  BottomMenuModel({
    required this.icon,
    required this.activeIcon,
    this.title,
    required this.type,
  });

  String icon;

  String activeIcon;

  String? title;

  BottomBarEnum type;
}

class DefaultWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      padding: EdgeInsets.all(10),
      child: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Please replace the respective Widget here',
              style: TextStyle(
                fontSize: 18,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
