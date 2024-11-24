import 'package:flutter/material.dart';
import '../presentation/acesso_screen/acesso_screen.dart';
import '../presentation/app_navigation_screen/app_navigation_screen.dart';
import '../presentation/cadastracategoria_screen/cadastracategoria_screen.dart';
import '../presentation/cadastratarefa_screen/cadastratarefa_screen.dart';
import '../presentation/cadastro_screen/cadastro_screen.dart';
import '../presentation/config_screen/config_screen.dart';
import '../presentation/conhecer_screen/conhecer_screen.dart';
import '../presentation/inicio_screen/inicio_screen.dart';
import '../presentation/login_screen/login_screen.dart';
import '../presentation/tarefasexibicao_screen/tarefasexibicao_screen.dart';
import '../presentation/telainicial_screen/telainicial_screen.dart';

// ignore_for_file: must_be_immutable
class AppRoutes {
  static const String inicioScreen = '/inicio_screen';
  static const String conhecerScreen = '/conhecer_screen';
  static const String acessoScreen = '/acesso_screen';
  static const String cadastroScreen = '/cadastro_screen';
  static const String loginScreen = '/login_screen';
  static const String telainicialScreen = '/telainicial_screen';
  static const String tarefasexibicaoScreen = '/tarefasexibicao_screen';
  static const String tarefasexibicaoInitialPage = '/tarefasexibicao_initial_page';
  static const String cadastratarefaScreen = '/cadastratarefa_screen';
  static const String cadastracategoriaScreen = '/cadastracategoria_screen';
  static const String configScreen = '/config_screen';
  static const String appNavigationScreen = '/app_navigation_screen';
  static const String initialRoute = '/initialRoute';

  static Map<String, WidgetBuilder> routes = {
    inicioScreen: (context) => InicioScreen(),
    conhecerScreen: (context) => ConhecerScreen(),
    acessoScreen: (context) => AcessoScreen(),
    cadastroScreen: (context) => CadastroScreen(),
    loginScreen: (context) => LoginScreen(),
    telainicialScreen: (context) => InicioScreen(),
    tarefasexibicaoScreen: (context) => TarefasexibicaoScreen(),
    cadastratarefaScreen: (context) => CadastratarefasScreen(),
    cadastracategoriaScreen: (context) => CadastracategoriaScreen(),
    configScreen: (context) => ConfigScreen(),
    appNavigationScreen: (context) => AppNavigationScreen(),
    initialRoute: (context) => InicioScreen(),
  };
}
