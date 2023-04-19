import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ItemProduto extends StatelessWidget {
  final String nome;
  final String preco;

  const ItemProduto(
      {super.key, required this.nome, required this.preco});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        leading: const Icon(Icons.monetization_on),
        title: Text(nome),
        subtitle: Text('R\$ $preco'),
        tileColor: Colors.white,
      ),
    );
  }

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return ' {nome: $nome, preco: $preco} ';
  }
}