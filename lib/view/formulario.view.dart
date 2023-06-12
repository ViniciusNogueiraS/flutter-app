import 'package:flutter/material.dart';

import '../components/campo-texto.comp.dart';
import '../components/item-produto.comp.dart';

class Formulario extends StatelessWidget {
  const Formulario({super.key});

  @override
  Widget build(BuildContext context) {
    return 
    Scaffold(
      appBar: AppBar(
        title: const Text('Novo Produto'),
      ),
      body: FormularioProduto(),
    );
  }
}

class FormularioProduto extends StatelessWidget {
  final TextEditingController _name = TextEditingController();
  final TextEditingController _price = TextEditingController();

  FormularioProduto({super.key});

  void dispose() {
    _name.dispose();
    _price.dispose();
  }

  // ignore: non_constant_identifier_names
  handleClick_Submit(context) {
    final ItemProduto produto = ItemProduto(name: _name.text, price: double.parse(_price.text));

    Navigator.pop(context, produto);
  }

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      CampoTexto(controller: _name, label: 'Nome'),
      CampoTexto(controller: _price, label: 'Preço', placeholder: '0,00', icon: const Icon(Icons.monetization_on)),
      ElevatedButton(
          onPressed: () => handleClick_Submit(context),
          child: const Text(
            'Confirmar',
            textDirection: TextDirection.ltr,
            style: TextStyle(fontSize: 20.0)
          ))
    ]);
  }
}