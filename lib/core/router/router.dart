import 'package:bank_mas/core/argument/webview_arg.dart';
import 'package:bank_mas/injector/injector.dart';
import 'package:bank_mas/presentation/home/bloc/menu_and_article_bloc.dart';
import 'package:bank_mas/presentation/webview/webview_page.dart';
import 'package:flutter/material.dart';
import 'package:bank_mas/core/router/router_constant.dart';
import 'package:bank_mas/presentation/home/page/home_page.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class Router {
  Route generateRouter(Widget page, RouteSettings settings) {
    return MaterialPageRoute(
      settings: settings,
      builder: (context) => getPageRoute(settings),
    );
  }

  Widget getPageRoute(RouteSettings settings) {
    switch (settings.name) {
      case RouterConstant.homePage:
        return const HomePage();
      case RouterConstant.webview:
        return WebviewPage(arg: settings.arguments as WebViewArg);
      default:
        return BlocProvider(
          create: (context) => sl<MenuAndArticleBloc>(),
          child: const HomePage(),
        );
    }
  }

  Route? generateAppRoutes(RouteSettings settings) {
    Widget getRoutedWidget = getPageRoute(settings);
    return generateRouter(getRoutedWidget, settings);
  }
}
