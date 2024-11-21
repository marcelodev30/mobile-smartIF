import 'package:flutter/material.dart';
import 'package:smartif/config/app_img.dart';
import 'package:smartif/data/models/dispositivos.dart';

class CardDispositivo extends StatelessWidget {
  final DispositivosModels models;
  final void Function()? onPressed;
  const CardDispositivo({super.key, required this.models, this.onPressed});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(40),
      child: Card(
          child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
        child: ListTile(
            leading: Image.asset(AppImg.getIconLogo, height: 40, width: 44),
            title: Text('${models.nome} ${models.nomeSala}'),
            subtitle: Text(models.status ? 'Ligador' : 'Desativado'),
            trailing: TextButton(
                onPressed: onPressed,
                child: const Icon(Icons.power_settings_new))),
      )),
    );
  }
}
