import 'package:flutter/material.dart';

class AppTextStyle {
  static get textSize30W700 =>
      const TextStyle(fontSize: 30, fontWeight: FontWeight.w700);

  static get textSize18W600 => const TextStyle(
      fontSize: 18, fontWeight: FontWeight.w600, color: Colors.black);

  static get textSize18W700Subindo => const TextStyle(
      decoration: TextDecoration.underline,
      fontSize: 18,
      fontWeight: FontWeight.w700,
      color: Colors.black);
}
