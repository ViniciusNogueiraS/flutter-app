import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CampoTexto extends StatelessWidget {

  final TextEditingController controller;
  final String label;
  final String? placeholder;
  final Icon? icon;

  CampoTexto({required this.controller, required this.label, this.placeholder, this.icon});

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: EdgeInsets.fromLTRB(16, 8, 16, 8),
        child: TextField(
          controller: controller,
          keyboardType: TextInputType.number,
          style: TextStyle(fontSize: 24.0),
          decoration: InputDecoration(
            labelText: label,
            hintText: placeholder,
            icon: icon
          ),
        ),
      );
  }
}