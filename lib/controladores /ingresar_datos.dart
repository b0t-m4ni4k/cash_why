import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

// "funcion" para ingreso de datos
class Ingreso extends StatelessWidget {
  Ingreso({super.key, required this.name});

  final String name;
  //esto es para guardar los datos inresados en el textField
  final TextEditingController _controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: _controller,
      inputFormatters: [PuntosTres()],
      keyboardType: TextInputType.number,
      decoration: InputDecoration(
        border: UnderlineInputBorder(),
        labelText: 'Ingrese su $name',
      ),
    );
  }
}

class PuntosTres extends TextInputFormatter {
  @override
  TextEditingValue formatEditUpdate(
    TextEditingValue oldValue,
    TextEditingValue newValue,
  ) {
    String text = newValue.text.replaceAll(".", "");

    if (newValue.text.isEmpty) {
      return newValue;
    }
    // lo que pasa aqui es que se crea un contador desde cero
    int contador = 0;
    //se entra en un ciclo for que recorre el texto desde el final hasta el principio
    for (int i = text.length - 1; i >= 0; i--) {
      //"salta" a la izquierda hasta que el contador lleuge a 3
      contador++;
      //luego de que llegue a 3 se verifica si es la i no es cero, tiene que ser diferente de cero para evitar que se agregue un punto al principio del texto
      if (contador == 3 && i != 0) {
        text = text.substring(0, i) + "." + text.substring(i);
        //y se reinicia el contador para que vuelva a contar hasta 3
        contador = 0;
      }
    }
    return TextEditingValue(
      text: text,
      selection: TextSelection.collapsed(offset: text.length),
    );
  }
}
