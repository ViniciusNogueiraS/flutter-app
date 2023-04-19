import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../controller/home.controller.dart';
import '../view/formulario.view.dart';
import 'item-produto.comp.dart';

class ListaProduto extends StatelessWidget {

  HomeController controller = Get.put(HomeController());

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body: Obx(() => 
        ListView.builder(

          itemCount: controller.lista.value.length,
          itemBuilder: (context, index) {
            final p = controller.lista.value[index];
            return ItemProduto(nome: p.nome, preco: p.preco);
          }

        )
      ),
      floatingActionButton: FloatingActionButton(

        child: const Icon(Icons.add),
        onPressed: () {
          final Future future = Navigator.push(context, MaterialPageRoute(builder: (context) {
            return Formulario();
          }));

          future.then((produto) {
            controller.lista.value = [...controller.lista.value, produto];
          });
        },

      ),
    );
  }
}