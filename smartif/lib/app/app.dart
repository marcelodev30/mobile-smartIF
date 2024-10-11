import 'package:flutter/material.dart';

import '../ui/page/page.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Smart IF',
      theme: ThemeData(),
      home: const PageHome(),
    );
  }
}
