import 'package:flutter/material.dart';

class PantallaPrincipal extends StatelessWidget {
  const PantallaPrincipal({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(100),
        child: const Cabeza(),
      ),
      body: Align(
        alignment: Alignment(0, -0.5),
        child: Container(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              BotonesPrincipal(nameButton: "Ingresos"),

              BotonesPrincipal(nameButton: "Egresos"),
            ],
          ),
        ),
      ),
    );
  }
}

class Cabeza extends StatelessWidget {
  const Cabeza({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: const Text(
        "Why Cash?",
        style: TextStyle(
          fontSize: 30,
          fontWeight: FontWeight.bold,
          color: Colors.white,
        ),
      ),
      backgroundColor: const Color.fromARGB(255, 37, 150, 243),
      actions: [],
    );
  }
}

//botones
class BotonesPrincipal extends StatelessWidget {
  const BotonesPrincipal({super.key, required this.nameButton});

  final String nameButton;

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () {
        print(nameButton);
      },
      style:
          TextButton.styleFrom(
            backgroundColor: const Color.fromARGB(255, 37, 150, 243),
            padding: EdgeInsets.symmetric(horizontal: 20, vertical: 40),
            shadowColor: Colors.black,
            side: BorderSide(
              color: const Color.fromARGB(255, 37, 150, 243),
              width: 1,
            ),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
            ),
          ).copyWith(
            overlayColor: WidgetStateProperty.all(
              const Color.fromARGB(255, 0, 0, 0).withValues(alpha: 0.1),
            ),
          ),
      child: Text(
        nameButton,
        style: TextStyle(color: Colors.white, fontSize: 20),
      ),
    );
  }
}
