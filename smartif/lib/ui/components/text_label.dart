import 'package:flutter/material.dart';

import '../shared/app_text_style.dart';

class TextLebel extends StatelessWidget {
  final String title;
  const TextLebel({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(5),
      child: Text(
        title,
        style: AppTextStyle.textSize18W600,
      ),
    );
  }
}
