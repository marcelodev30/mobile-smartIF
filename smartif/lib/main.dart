import 'package:flutter/material.dart';
import 'package:smartif/app.dart';
import 'package:smartif/ui/page/login/login_page.dart';

import 'config/app_injector.dart';

void main() {
  injector();
  runApp(const MyWidget());
}

class MyWidget extends StatelessWidget {
  const MyWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: LoginPage(),
    );
  }
}
