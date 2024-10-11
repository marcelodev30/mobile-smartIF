import 'package:flutter/material.dart';
import 'package:smartif/app/config/app_img.dart';


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
          child: Container(decoration: const BoxDecoration(color: Colors.blue)),
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
