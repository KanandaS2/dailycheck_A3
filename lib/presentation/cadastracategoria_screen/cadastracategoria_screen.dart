import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import '../../core/app_export.dart';
import '../../widgets/app_bar/appbar_leading_image.dart';
import '../../widgets/app_bar/appbar_title.dart';
import '../../widgets/app_bar/custom_app_bar.dart';
import '../../widgets/custom_buttom_bar.dart';
import 'widgets/categorylist_item_widget.dart';

// ignore_for_file: must_be_immutable
class CadastraCategoriaScreen extends StatelessWidget {
  CadastraCategoriaScreen({Key? key}) : super(key: key);

  GlobalKey<NavigatorState> navigatorKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: _buildAppBar(context),
        body: Container(
          width: double.maxFinite,
          padding: EdgeInsets.only(
            left: 10.h,
            top: 38.h,
            right: 10.h,
          ),
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              _buildCategoryList(context),
              SizedBox(height: 20.h),
              _buildCreateCategoryRow(context),
            ],
          ),
        ),
        bottomNavigationBar: SizedBox(
          width: double.maxFinite,
          child: _buildBottomBar(context),
        ),
      ),
    );
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
      leadingWidth: 34.h,
      leading: AppBarLeadingImage(
        imagePath: ImageConstant.imgArrowLeft,
        margin: EdgeInsets.only(left: 7.h),
        onTap: () {},
      ),
      title: AppBarTitle(
        text: "Gerenciar suas Categorias",
        margin: EdgeInsets.only(left: 8.h),
      ),
    );
  }

  /// Section Widget
  Widget _buildCategoryList(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 4.h),
      child: ListView.separated(
        padding: EdgeInsets.zero,
        physics: NeverScrollableScrollPhysics(),
        shrinkWrap: true,
        separatorBuilder: (context, index) {
          return SizedBox(
            height: 10.h,
          );
        },
        itemCount: 3,
        itemBuilder: (context, index) {
          return CategoryListItemWidget();
        },
      ),
    );
  }

  /// Section Widget
  Widget _buildCreateCategoryRow(BuildContext context) {
    return SizedBox(
      width: double.maxFinite,
      child: Row(
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgPlus,
            height: 24.h,
            width: 24.h,
          ),
          Padding(
            padding: EdgeInsets.only(left: 10.h),
            child: Text(
              "Criar nova categoria",
              style: CustomTextStyles.titleMediumDeeppurple600,
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildBottomBar(BuildContext context) {
    return SizedBox(
      width: double.maxFinite,
      child: CustomBottomBar(
        onChanged: (BottomBarEnum type) {
          Navigator.pushNamed(
            navigatorKey.currentContext!,
            getCurrentRoute(type),
          );
        },
      ),
    );
  }

  /// Handling route based on bottom click actions
  String getCurrentRoute(BottomBarEnum type) {
    switch (type) {
      case BottomBarEnum.Tarefas:
        return AppRoutes.tarefasexibicaoInitialPage;
      case BottomBarEnum.Categoria:
        return "/";
      case BottomBarEnum.Lembrete:
        return "/";
      case BottomBarEnum.Ajustes:
        return "/";
      default:
        return "/";
    }
  }

  /// Navigates back to the previous screen.
  onTapArrowLeftOne(BuildContext context) {
    Navigator.pop(context);
  }
}
