import 'package:flutter/material.dart';
import 'package:smartif/ui/components/card_dispositivo.dart';

class HomeMobile extends StatefulWidget {
  const HomeMobile({super.key});

  @override
  State<HomeMobile> createState() => _HomeMobileState();
}

class _HomeMobileState extends State<HomeMobile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const Drawer(),
      appBar: AppBar(
        title: const Text('Smart IF'),
      ),
      body: const Center(
        child: Column(
          children: [
            CardDispositivo(),
          ],
        ),
      ),
    );
  }
}
