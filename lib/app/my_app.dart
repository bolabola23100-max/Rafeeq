import 'package:rafeeq/core/routes/routes.dart' as app_router;
import 'package:rafeeq/core/theme/app_theme.dart';
import 'package:flutter/material.dart';

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: 'rafeeq',
      debugShowCheckedModeBanner: false,
      theme: AppTheme.lightTheme,
      themeMode: ThemeMode.light,
      routerConfig: app_router.router,
    );
  }
}
