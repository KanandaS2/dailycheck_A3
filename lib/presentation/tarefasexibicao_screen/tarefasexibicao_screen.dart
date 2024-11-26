import 'package:flutter/material.dart';
import '../../core/app_export.dart';
import '../../widgets/custom_buttom_bar.dart';
import 'tarefasexibicao_initial_page.dart';

// ignore_for_file: must_be_immutable
class TarefasExibicaoScreen extends StatelessWidget {
  TarefasExibicaoScreen({Key? key})
      : super(key: key);

  GlobalKey<NavigatorState> navigatorKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Navigator(
          key: navigatorKey,
          initialRoute: AppRoutes.tarefasexibicaoInitialPage,
          onGenerateRoute: (routeSettings) => PageRouteBuilder(
            pageBuilder: (ctx, ani, ani1) => getCurrentPage(routeSettings.name!),
            transitionDuration: Duration(seconds: 0),
          ),
        ),
        bottomNavigationBar: SizedBox(
          width: double.maxFinite,
          child: _buildBottomNavigationBar(context),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildBottomNavigationBar(BuildContext context) {
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

  /// Handling page based on route
  Widget getCurrentPage(String currentRoute) {
    switch (currentRoute) {
      case AppRoutes.tarefasexibicaoInitialPage:
        return TarefasExibicaoInitialPage();
      default:
        return DefaultWidget();
    }
  }
}
