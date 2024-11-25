import 'package:flutter/material.dart';
import 'package:smartif/config/app_img.dart';
import 'package:smartif/ui/page/menu/menu.dart';

class HomeWeb extends StatefulWidget {
  const HomeWeb({super.key});

  @override
  State<HomeWeb> createState() => _HomeWebState();
}

class _HomeWebState extends State<HomeWeb> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Row(
      children: [
        Expanded(
          flex: 1,
          child: Container(
            decoration: const BoxDecoration(color: Colors.blue),
            child: const Menu(),
          ),
        ),
        Expanded(
            flex: 4,
            child: Container(
              child: CircleAvatar(
                child: Image.asset(AppImg.getIconLogo),
              ),
            )),
      ],
    ));
  }
}
