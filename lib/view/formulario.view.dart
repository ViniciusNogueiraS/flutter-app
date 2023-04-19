import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../components/campo-texto.comp.dart';
import '../components/item-produto.comp.dart';

class Formulario extends StatelessWidget {
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
  final TextEditingController _nome = TextEditingController();
  final TextEditingController _preco = TextEditingController();

  @override
  void dispose() {
    _nome.dispose();
    _preco.dispose();
  }

  handleClick_Submit(context) {
    final ItemProduto transferencia = ItemProduto(nome: _nome.text, preco: _preco.text);

    Navigator.pop(context, transferencia);
  }

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      CampoTexto(controller: _nome, label: 'Nome'),
      CampoTexto(controller: _preco, label: 'Preço', placeholder: '0,00', icon: Icon(Icons.monetization_on)),
      ElevatedButton(
          onPressed: () => handleClick_Submit(context),
          child: Text(
            'Confirmar',
            textDirection: TextDirection.ltr,
            style: TextStyle(fontSize: 20.0)
          ))
    ]);
  }
}