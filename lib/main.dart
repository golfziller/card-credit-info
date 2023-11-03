import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:list_news/app_module.dart';
import 'package:list_news/data/network/api_service.dart';
import 'package:list_news/routes/page_name.dart';
import 'package:list_news/theme/app_theme.dart';

void main() {
  final apiClient = NetworkService();
  Modular.setInitialRoute(PageName.cardInfo);
  runApp(ModularApp(
    module: AppModule(),
    debugMode: false,
    child: MyApp(
      apiClient: apiClient,
    ),
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key, required this.apiClient});
  final NetworkService apiClient;
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: 'Card Credit Information',
      theme: AppTheme.themeData(),
      routerConfig: Modular.routerConfig,
    );
  }
}
