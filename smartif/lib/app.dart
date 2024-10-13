import 'package:flutter/material.dart';
import 'package:smartif/config/app_string.dart';
import 'package:smartif/ui/page/login/login_page.dart';
//import 'ui/page/page.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: AppString.titleApp,
      theme: ThemeData(),
      home: Login(),
    );
  }
}
