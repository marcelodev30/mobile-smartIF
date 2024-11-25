import 'package:flutter/material.dart';

class Menu extends StatelessWidget {
  const Menu({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const UserAccountsDrawerHeader(
          accountName: Text('Marcelo Alves'),
          accountEmail: Text('Marcelo.dev.alves@gmail.com'),
          decoration: BoxDecoration(color: Colors.blueAccent),
        ),
        const SizedBox(height: 20),
        ListTile(
          title: const Text('Configuração'),
          trailing: const Icon(Icons.keyboard_arrow_right),
          onTap: () {},
        ),
        ListTile(
          title: const Text('Sair'),
          trailing: const Icon(Icons.exit_to_app),
          onTap: () {},
        )
      ],
    );
  }
}
