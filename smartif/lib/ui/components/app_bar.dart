import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:smartif/config/app_colors.dart';

class MyAppBar extends StatelessWidget implements PreferredSizeWidget {
  final String title;
  const MyAppBar({super.key, required this.title});

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      centerTitle: true,
      backgroundColor: AppColor.midnightBlue,
      leading: TextButton(
          onPressed: () => context.go('/'),
          child: const Icon(Icons.arrow_back)),
      bottom: PreferredSize(preferredSize: preferredSize, child: Container()),
      title: Text(title, style: TextStyle(color: AppColor.white)),
    );
  }
}
