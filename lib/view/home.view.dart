import 'package:flutter/material.dart';

import '../components/lista-produto.comp.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Lista de Produtos'),
      ),
      body: ListaProduto()
    );
  }

}
