import 'package:flutter/material.dart';
import 'package:smartif/ui/page/menu/menu.dart';

import '../../../data/controllers/dispositivo_controller.dart';
import '../../components/card_dispositivo.dart';

class HomeWeb extends StatefulWidget {
  const HomeWeb({super.key});

  @override
  State<HomeWeb> createState() => _HomeWebState();
}

class _HomeWebState extends State<HomeWeb> {
  final DispositivoController dispositivoController = DispositivoController();

  @override
  void initState() {
    super.initState();

    Future.delayed(const Duration(seconds: 3), () {
      carregar();
    });
  }

  void carregar() async {
    await dispositivoController.fetchAll();
  }

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
            child: ListenableBuilder(
                listenable: dispositivoController,
                builder: (context, _) {
                  return ListView.builder(
                      itemCount:
                          dispositivoController.dispositivosModels.length,
                      itemBuilder: (context, index) {
                        return CardDispositivo(
                          models:
                              dispositivoController.dispositivosModels[index],
                        );
                      });
                })),
      ],
    ));
  }
}
