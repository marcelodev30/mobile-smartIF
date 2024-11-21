import 'package:flutter/material.dart';
import '../../config/app_colors.dart';
import '../../config/app_size.dart';

class AppInputDecoration {
  static get defaultApplogin => InputDecoration(
      labelStyle: const TextStyle(color: Colors.black),
      hintText: 'Digite sua Matricula..',
      prefixIcon: Icon(
        Icons.person,
        color: AppColor.gray,
      ),
      border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(AppSize.borderRadiusInput)));

  static get senha => InputDecoration(
      hintText: 'Digite sua Senha..',
      suffixIcon: Icon(
        Icons.visibility,
        color: AppColor.gray,
      ),
      prefixIcon: Icon(
        Icons.password,
        color: AppColor.gray,
      ),
      border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(AppSize.borderRadiusInput)));
}
