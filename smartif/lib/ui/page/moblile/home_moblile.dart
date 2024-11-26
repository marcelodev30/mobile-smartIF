import 'package:flutter/material.dart';
import 'package:smartif/config/app_string.dart';
import 'package:smartif/data/controllers/dispositivo_controller.dart';
import 'package:smartif/ui/components/card_dispositivo.dart';

import '../menu/menu.dart';

class HomeMobile extends StatefulWidget {
  const HomeMobile({super.key});

  @override
  State<HomeMobile> createState() => _HomeMobileState();
}

class _HomeMobileState extends State<HomeMobile> {
  DispositivoController controllers = DispositivoController();

  @override
  void initState() {
    super.initState();
    Future.delayed(const Duration(seconds: 3), () {
      carregarDados();
    });
  }

  void carregarDados() async {
    await controllers.fetchAll();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const Drawer(child: Menu()),
      appBar: AppBar(
        title: Text(AppString.titleApp),
      ),
      body: ListenableBuilder(
          listenable: controllers,
          builder: (context, _) {
            return controllers.isloading
                ? const Center(child: CircularProgressIndicator())
                : controllers.dispositivosModels.isEmpty
                    ? const Center(child: Text('Sem Dispositivo '))
                    : Column(
                        children: [
                          Expanded(
                            child: ListView.builder(
                                itemCount:
                                    controllers.dispositivosModels.length,
                                itemBuilder: (_, index) {
                                  return CardDispositivo(
                                    models:
                                        controllers.dispositivosModels[index],
                                    onPressed: () {
                                      controllers.sedComando(controllers
                                          .dispositivosModels[index].id);
                                    },
                                  );
                                }),
                          ),
                        ],
                      );
          }),
    );
  }
}
