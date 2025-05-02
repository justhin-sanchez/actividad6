import 'package:flutter/material.dart';

//! AnimatedSwitcher dentro de Scaffold con AppBar

class PantallaVeinte extends StatefulWidget {
  const PantallaVeinte({Key? key}) : super(key: key);

  @override
  State<PantallaVeinte> createState() => _PantallaVeinteState();
}

class _PantallaVeinteState extends State<PantallaVeinte> {
  int _count = 0;

  void _incrementCount() {
    setState(() {
      _count += 1; // Incrementa el contador
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Pantalla 20',
          style: TextStyle(fontSize: 20, color: Colors.white),
        ),
        backgroundColor: Colors.teal, // Color del AppBar
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            AnimatedSwitcher(
              duration: const Duration(milliseconds: 500),
              child: Text(
                '$_count',
                style: const TextStyle(fontSize: 40),
                key: ValueKey(_count), // Clave única para el widget
              ),
              transitionBuilder: (Widget child, Animation<double> animation) {
                return ScaleTransition(
                    scale: animation, child: child); // Animación de escala
              },
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.orangeAccent, // Color de fondo
              ),
              onPressed: _incrementCount,
              child: const Text('Add'), // Botón que incrementa el contador
            ),
          ],
        ),
      ),
    );
  }
}
