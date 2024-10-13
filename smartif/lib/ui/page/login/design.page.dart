import 'package:flutter/material.dart';
import 'package:smartif/config/app_colors.dart';
import 'package:smartif/config/app_img.dart';
import 'package:smartif/config/app_string.dart';

// ignore: must_be_immutable
class DesignInUpPage extends StatelessWidget {
  Widget dados;
  DesignInUpPage({super.key, required this.dados});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.bokaraGrey,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: SizedBox(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Expanded(child: Container()),
              Image.asset(AppImg.logoApp, height: 200),
              Text(
                AppString.titleApp,
                style: const TextStyle(
                    color: Colors.green,
                    fontSize: 30,
                    fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 20),
              Container(
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(34.5)),
                child: Column(
                  children: [dados, const SizedBox(height: 30)],
                ),
              ),
              Expanded(flex: 2, child: Container())
            ],
          ),
        ),
      ),
    );
  }
}
