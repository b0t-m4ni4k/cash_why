import 'package:cash_why/pantallas/app_bar.dart';
import 'package:flutter/material.dart';

class PantallaEgresos extends StatelessWidget {
  const PantallaEgresos({required this.nameButton, super.key});

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
