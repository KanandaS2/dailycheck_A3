import 'package:flutter/material.dart';
import '../../../../core/app_export.dart';

class AppNavigationScreen extends StatelessWidget {
  const AppNavigationScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: const Color(0xFFFFFFFF),
        body: SizedBox(
          width: 375.h,
          child: Column(
            children: [
              Container(
                decoration: const BoxDecoration(color: Color(0xFFFFFFFF)),
                child: Column(
                  children: [
                    SizedBox(height: 10.h),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 20.h),
                      child: const Text(
                        "App Navigation",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Color(0xFF000000),
                          fontSize: 20,
                          fontFamily: 'Roboto',
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ),
                    SizedBox(height: 10.h),
                    Padding(
                      padding: EdgeInsets.only(left: 20.h),
                      child: const Text(
                        "Check your app's UI from the below demo screens of your app.",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Color(0xFF888888),
                          fontSize: 16,
                          fontFamily: 'Roboto',
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ),
                    SizedBox(height: 5.h),
                    Divider(
                      height: 1.h,
                      thickness: 1.h,
                      color: const Color(0xFF000000),
                    ),
                  ],
                ),
              ),
              Expanded(
                child: SingleChildScrollView(
                  child: Container(
                    decoration: const BoxDecoration(color: Color(0xFFFFFFFF)),
                    child: Column(
                      children: [
                        _buildScreenTitle(
                          context,
                          screenTitle: "inicio",
                          onTapScreenTitle: () =>
                              onTapScreenTitle(context, AppRoutes.inicioScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "conhecer",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.conhecerScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "acesso",
                          onTapScreenTitle: () =>
                              onTapScreenTitle(context, AppRoutes.acessoScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "cadastro",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.cadastroScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "login",
                          onTapScreenTitle: () =>
                              onTapScreenTitle(context, AppRoutes.loginScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "telaInicial",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.telainicialScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "tarefasExibicao",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.tarefasexibicaoScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "cadastraTarefa",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.cadastratarefa),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "cadastraCategoria",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.cadastracategoria,
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "config",
                          onTapScreenTitle: () =>
                              onTapScreenTitle(context, AppRoutes.configScreen),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  /// Common click event
  void onTapScreenTitle(BuildContext context, String routeName) {
    Navigator.pushNamed(context, routeName);
  }

  /// Helper to build screen title buttons
  Widget _buildScreenTitle({
    required BuildContext context,
    required String screenTitle,
    required VoidCallback onTapScreenTitle,
  }) {
    return GestureDetector(
      onTap: onTapScreenTitle,
      child: Padding(
        padding: EdgeInsets.symmetric(vertical: 10.h),
        child: Text(
          screenTitle,
          style: const TextStyle(
            color: Color(0xFF000000),
            fontSize: 18,
            fontFamily: 'Roboto',
            fontWeight: FontWeight.w400,
          ),
        ),
      ),
    );
  }
}
