import 'package:cash_why/pantallas/app_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class PantallaIngresos extends StatelessWidget {
  const PantallaIngresos({required this.nameButton, super.key});

  final String nameButton;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: Cabeza(title: nameButton),
      body: Center(
        child: TextField(
          decoration: InputDecoration(
            border: OutlineInputBorder(),
            labelText: 'Ingrese su ingreso',
          ),
        ),
      ),
    );
  }
}
