import 'package:flutter/material.dart';
import 'package:smartif/config/app_img.dart';

class CardDispositivo extends StatelessWidget {
  const CardDispositivo({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(40),
      child: Card(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
          child: ListTile(
            leading: Image.asset(AppImg.getIconLogo, height: 40, width: 44),
            title: const Text('Ar Condicionado Lab 1'),
            subtitle: const Text('Desativado'),
            trailing: const Column(
              children: [
                Icon(
                  Icons.add,
                  size: 20,
                ),
                Text('18.0'),
                Icon(
                  Icons.remove,
                  size: 20,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
/**
 


Column(
          children: [
            const Text('Ar Condicionado Lab 1'),
            Image.asset(AppImg.getIconLogo, height: 44, width: 44),
            const Text('Desativado')
          ],
        )

 */