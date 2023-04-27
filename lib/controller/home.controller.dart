import 'dart:async';
import 'dart:convert';

import 'package:get/get.dart';
import 'package:http/http.dart' as http;

import '../components/item-produto.comp.dart';
import '../main.dart';

class HomeController extends GetxController {
  final RxList lista = List.empty().obs;

  Future<void> getProdutos() async {
    final response = await http.get(Uri.parse('http://localhost:3000/api/v1/product'));

    if (response.statusCode == 200) {
      final array = List.from(jsonDecode(response.body));

      for (var item in array) {
        final p = ItemProduto(ID: item.id, name: item.name, price: item.price);
        print(p);
        lista.add(p);
      }
    } else {
      throw Exception('Failed to load album');
    }
  }

}