import 'dart:math' as math;
import 'package:flutter/material.dart';

//! AnimatedWidget dentro de Scaffold con AppBar

class PantallaVeintiUno extends StatefulWidget {
  const PantallaVeintiUno({Key? key}) : super(key: key);

  @override
  State<PantallaVeintiUno> createState() => _PantallaVeintiUnoState();
}

class _PantallaVeintiUnoState extends State<PantallaVeintiUno>
    with TickerProviderStateMixin {
  late final AnimationController _controller = AnimationController(
    duration: const Duration(seconds: 10),
    vsync: this,
  )..repeat(); // Hace que la animación se repita infinitamente

  @override
  void dispose() {
    _controller.dispose(); // Asegura la correcta liberación de recursos
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Pantalla 21',
          style: TextStyle(fontSize: 20, color: Colors.white),
        ),
        backgroundColor: Colors.deepPurple, // Color del AppBar
        centerTitle: true,
      ),
      body: Center(
        child: TheWidget(controller: _controller),
      ),
    );
  }
}

class TheWidget extends AnimatedWidget {
  const TheWidget({
    Key? key,
    required AnimationController controller,
  }) : super(key: key, listenable: controller);

  Animation<double> get _progress => listenable as Animation<double>;

  @override
  Widget build(BuildContext context) {
    return Transform.rotate(
      angle: _progress.value *
          2.0 *
          math.pi, // Gira el widget basado en el valor de la animación
      child: Container(
          width: 200.0, height: 200.0, color: Colors.green), // Widget que rota
    );
  }
}
