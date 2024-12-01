import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../../config/app_colors.dart';

class ConfigPage extends StatefulWidget {
  const ConfigPage({super.key});

  @override
  State<ConfigPage> createState() => _ConfigPageState();
}

class _ConfigPageState extends State<ConfigPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: TextButton(
            onPressed: () => context.go('/'),
            child: const Icon(Icons.arrow_back)),
        centerTitle: true,
        title: Text(
          'Configuração',
          style: TextStyle(color: AppColor.white),
        ),
      ),
    );
  }
}
