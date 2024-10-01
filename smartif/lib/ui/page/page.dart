import 'package:flutter/material.dart';
import 'package:smartif/ui/page/moblile/home_moblile.dart';
import 'package:smartif/ui/page/wep/home_wep.dart';

class PageHome extends StatelessWidget {
  const PageHome({super.key});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      final bool isWep = constraints.maxWidth > 600;
      return isWep ? const HomeWeb() : const HomeMobile();
    });
  }
}
