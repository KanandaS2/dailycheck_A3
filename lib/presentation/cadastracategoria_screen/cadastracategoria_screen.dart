import 'package:flutter/material.dart';
import '../../core/app_export.dart';
import '../../widgets/app_bar/appbar_leading_image.dart';
import '../../widgets/app_bar/appbar_title.dart';
import '../../widgets/app_bar/custom_app_bar.dart';
import '../../widgets/custom_buttom_bar.dart';
import 'widgets/categorylist_item_widget.dart';

// ignore_for_file: must_be_immutable
class CadastraCategoriasScreen extends StatelessWidget {
  CadastraCategoriasScreen({Key? key}) : super(key: key);

  final GlobalKey<NavigatorState> navigatorKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: _buildAppBar(context),
        body: Container(
          width: double.maxFinite,
          padding: EdgeInsets.only(
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
        bottomNavigationBar: _buildBottomBar(context),
      ),
    );
  }

  /// Section: AppBar
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
      leadingWidth: 34.h,
      leading: AppbarLeadingImage(
        imagePath: ImageConstant.imgArrowLeft,
        margin: EdgeInsets.only(left: 7.h),
        onTap: () {
          onTapArrowLeftOne(context);
        },
      ),
      title: AppbarTitle(
        text: "Gerenciar suas Categorias",
        margin: EdgeInsets.only(left: 8.h),
      ),
    );
  }

  /// Section: Category List
  Widget _buildCategoryList(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 4.h),
      child: ListView.separated(
        padding: EdgeInsets.zero,
        physics: const NeverScrollableScrollPhysics(),
        shrinkWrap: true,
        separatorBuilder: (context, index) => SizedBox(height: 10.h),
        itemCount: 3,
        itemBuilder: (context, index) {
          return const CategoryListItemWidget();
        },
      ),
    );
  }

  /// Section: Create Category Row
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
              style: CustomTextStyles.titleMediumDeepPurple600,
            ),
          ),
        ],
      ),
    );
  }

  /// Section: Bottom Bar
  Widget _buildBottomBar(BuildContext context) {
    return CustomBottomBar(
      onChanged: (BottomBarEnum type) {
        Navigator.pushNamed(
          navigatorKey.currentContext!,
          getCurrentRoute(type),
        );
      },
    );
  }

  /// Route Handler for Bottom Navigation
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

  /// Back Navigation Handler
  void onTapArrowLeftOne(BuildContext context) {
    Navigator.pop(context);
  }
}
