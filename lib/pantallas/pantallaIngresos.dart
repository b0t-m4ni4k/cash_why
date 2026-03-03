import 'package:cash_why/controladores%20/ingresar_datos.dart';
import 'package:cash_why/pantallas/app_bar.dart';
import 'package:flutter/material.dart';

class PantallaIngresos extends StatelessWidget {
  PantallaIngresos({required this.nameButton, super.key});

  final String nameButton;
  final TextEditingController _controllerName = TextEditingController();
  final TextEditingController _controllerData = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: Cabeza(title: nameButton),
      body: Column(
        children: [
          NombreOperacion(controller: _controllerName),
          Ingreso(name: nameButton, controller: _controllerData),
          Center(
            child: TextButton(
              onPressed: () {
                print("Nombre: ${_controllerName.text}");
                print("Valor: ${_controllerData.text.toString()}");
              },
              child: Text("data"),
            ),
          ),
        ],
      ),
    );
  }
}
