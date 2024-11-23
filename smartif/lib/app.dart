import 'package:flutter/material.dart';
import 'package:smartif/config/app_string.dart';

import 'config/app_router.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      title: AppString.titleApp,
      theme: ThemeData.dark(),
      routerConfig: RouterApp.router,
    );
  }
}
