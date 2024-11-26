import 'package:daily_check/widgets/custom_buttom_bar.dart';
import 'package:flutter/material.dart';
import '../../core/app_export.dart';
import '../../widgets/app_bar/appbar_leading_image.dart';
import '../../widgets/app_bar/appbar_title.dart';
import '../../widgets/app_bar/custom_app_bar.dart';
import '../../widgets/custom_buttom_bar.dart';

class ConfigScreen extends StatelessWidget {
  ConfigScreen({Key? key}) : super(key: key);

  final GlobalKey<NavigatorState> navigatorKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: _buildAppBar(context),
        body: Container(
          width: double.maxFinite,
          padding: EdgeInsets.only(
            left: 14.h,
            top: 6.h,
            right: 14.h,
          ),
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [_buildSettingsSection(context)],
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
      leading: AppBarLeadingImage(
        imagePath: ImageConstant.imgArrowLeft,
        margin: EdgeInsets.only(left: 12.h),
        onTap: () => onTapArrowLeftOne(context),
      ),
      centerTitle: true,
      title: AppBarTitle(
        text: "Configurações",
      ),
    );
  }

  /// Section: Settings Section
  Widget _buildSettingsSection(BuildContext context) {
    return Container(
      width: double.maxFinite,
      padding: EdgeInsets.symmetric(horizontal: 46.h),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Tema",
            style: CustomTextStyles.titleMediumGray800,
          ),
          SizedBox(height: 4.h),
          Row(
            children: [
              Text(
                "Tema Claro",
                style: theme.textTheme.labelLarge,
              ),
              SizedBox(width: 8.h),
              Container(
                height: 24.h,
                width: 24.h,
                child: Stack(
                  alignment: Alignment.center,
                  children: [
                    Container(
                      height: 18.h,
                      width: 18.h,
                      decoration: BoxDecoration(
                        color: appTheme.blueGray600,
                        borderRadius: BorderRadius.circular(2.h),
                      ),
                    ),
                    CustomImageView(
                      imagePath: ImageConstant.imgCheckmark,
                      height: 16.h,
                      width: 16.h,
                    ),
                  ],
                ),
              ),
            ],
          ),
          SizedBox(height: 4.h),
          Text(
            "Tema Escuro",
            style: theme.textTheme.labelLarge,
          ),
          SizedBox(height: 24.h),
          Text(
            "Notificações",
            style: CustomTextStyles.titleMediumGray800,
          ),
          SizedBox(height: 6.h),
          Text(
            "Permitir que o aplicativo notifique você quanto a seus lembretes.",
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
            style: theme.textTheme.labelLarge!.copyWith(height: 1.69),
          ),
          SizedBox(height: 32.h),
          Text(
            "Perfil",
            style: CustomTextStyles.titleMediumGray800,
          ),
          SizedBox(height: 8.h),
          Text(
            "Editar dados do Perfil",
            style: theme.textTheme.labelLarge,
          ),
          SizedBox(height: 8.h),
          Text(
            "Alterar endereço de e-mail",
            style: theme.textTheme.labelLarge,
          ),
          SizedBox(height: 10.h),
          Text(
            "Alterar Senha",
            style: theme.textTheme.labelLarge,
          ),
          SizedBox(height: 8.h),
          Text(
            "Fazer Logout",
            style: theme.textTheme.labelLarge,
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

  /// Back Navigation Handler
  void onTapArrowLeftOne(BuildContext context) {
    Navigator.pop(context);
  }
}
