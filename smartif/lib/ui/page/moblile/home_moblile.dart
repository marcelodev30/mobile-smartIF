import 'package:flutter/material.dart';
import 'package:smartif/config/app_string.dart';
import 'package:smartif/data/controllers/dispositivo_controller.dart';
import 'package:smartif/data/models/dispositivos.dart';
import 'package:smartif/ui/components/card_dispositivo.dart';

class HomeMobile extends StatefulWidget {
  const HomeMobile({super.key});

  @override
  State<HomeMobile> createState() => _HomeMobileState();
}

class _HomeMobileState extends State<HomeMobile> {
  final controllers = DispositivoController();
  List<DispositivosModels> dispositivosModels = [];

  @override
  void initState() {
    super.initState();
    controllers.addListener(() {
      setState(() {});
    });
    carregarDados();
  }

  void carregarDados() async {
    await controllers.fetchAll();
    dispositivosModels = controllers.dispositivosModels;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const Drawer(),
      appBar: AppBar(
        title: Text(AppString.titleApp),
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
                itemCount: dispositivosModels.length,
                itemBuilder: (_, index) {
                  return CardDispositivo(
                    models: dispositivosModels[index],
                  );
                }),
          ),
        ],
      ),
    );
  }
}
