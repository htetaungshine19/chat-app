import 'package:chatui/src/navigation/routes.gr.dart';
import 'package:chatui/src/providers/providers.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final r = AppRoute();
    return Consumer(
      builder: (context, watch, child) {
        final theme = watch(settingNotifierProvider);
        return MaterialApp.router(
          themeMode: theme.theme,
          theme: ThemeData.light(),
          darkTheme: ThemeData.dark(),
          routeInformationParser: r.defaultRouteParser(),
          routerDelegate: r.delegate(),
        );
      },
    );
  }
}
