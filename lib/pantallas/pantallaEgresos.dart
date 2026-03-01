import 'package:flutter/material.dart';

class PantallaEgresos extends StatelessWidget {
  const PantallaEgresos({required this.nameButton, super.key});

  final String nameButton;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("$nameButton")),
      body: const Center(child: Text("Pantalla Ingresos")),
    );
  }
}
