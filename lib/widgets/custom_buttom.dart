import 'package:flutter/material.dart';
import '../core/app_export.dart';

enum BottomBarEnum { Tarefas, Categoria, Lembrete, Ajustes }

// ignore_for_file: must_be_immutable
class CustomBottomBar extends StatefulWidget {
  CustomBottomBar({this.onChanged});

  Function(BottomBarEnum)? onChanged;

  @override
  CustomBottomBarState createState() => CustomBottomBarState();
}

// ignore_for_file: must_be_immutable
class CustomBottomBarState extends State<CustomBottomBar> {
  int selectedIndex = 0;

  List<BottomMenuModel> bottomMenuList = [
    BottomMenuModel(
      icon: ImageConstant.imgListaDeAfazeres40x40,
      activeIcon: ImageConstant.imgListaDeAfazeres40x40,
      title: "Tarefas",
      type: BottomBarEnum.Tarefas,
    ),
    BottomMenuModel(
      icon: ImageConstant.imgCategoria1,
      activeIcon: ImageConstant.imgCategoria1,
      title: "Categoria",
      type: BottomBarEnum.Categoria,
    ),
    BottomMenuModel(
      icon: ImageConstant.imgRelogio11,
      activeIcon: ImageConstant.imgRelogio11,
      title: "Lembrete",
      type: BottomBarEnum.Lembrete,
    ),
    BottomMenuModel(
      icon: ImageConstant.imgBotaoDeRodaD,
      activeIcon: ImageConstant.imgBotaoDeRodaD,
      title: "Ajustes",
      type: BottomBarEnum.Ajustes,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Divider(
          height: 1.h,
          thickness: 1.h,
          color: Color(0xFFB3B3B3),
        ),
        SizedBox(
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
                icon: SizedBox(
                  width: double.maxFinite,
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      CustomImageView(
                        imagePath: bottomMenuList[index].icon,
                        height: 40.h,
                        width: 42.h,
                      ),
                      Text(
                        bottomMenuList[index].title ?? "",
                        style: theme.textTheme.titleMedium!.copyWith(
                          color: appTheme.gray900,
                        ),
                      ),
                    ],
                  ),
                ),
                activeIcon: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    CustomImageView(
                      imagePath: bottomMenuList[index].activeIcon,
                      height: 40.h,
                      width: 40.h,
                    ),
                    Text(
                      bottomMenuList[index].title ?? "",
                      style: theme.textTheme.titleMedium!.copyWith(
                        color: appTheme.gray900,
                      ),
                    ),
                  ],
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
        ),
      ],
    );
  }
}

// ignore_for_file: must_be_immutable
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
      color: Color(0xFFFFFFFF),
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
