import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ItemProduto extends StatelessWidget {
  final int? ID;
  final String name;
  final double price;

  const ItemProduto(
      {super.key, this.ID, required this.name, required this.price});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        leading: const Icon(Icons.monetization_on),
        title: Text(name),
        subtitle: Text('R\$ $price'),
        tileColor: Colors.white,
      ),
    );
  }

  factory ItemProduto.fromJson(dynamic json) {
    return ItemProduto(name: json['name'] as String, price: json['price'] as double);
  }

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return ' {name: $name, price: $price} ';
  }
}