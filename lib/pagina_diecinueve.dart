import 'package:flutter/material.dart';

//! AnimatedSize dentro de Scaffold con AppBar

class PantallaDiecinueve extends StatefulWidget {
  const PantallaDiecinueve({Key? key}) : super(key: key);

  @override
  State<PantallaDiecinueve> createState() => _PantallaDiecinueveState();
}

class _PantallaDiecinueveState extends State<PantallaDiecinueve> {
  double _size = 300;

  void _toggleSize() {
    setState(() {
      _size = _size == 300 ? 100 : 300; // Cambia entre dos tamaños
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Pantalla 19',
          style: TextStyle(fontSize: 20, color: Colors.white),
        ),
        backgroundColor: Colors.deepOrange, // Color del AppBar
        centerTitle: true,
      ),
      body: Center(
        child: GestureDetector(
          onTap: _toggleSize, // Cambia tamaño al hacer tap
          child: Container(
            color: Colors.white,
            child: AnimatedSize(
              curve: Curves.easeIn,
              duration: const Duration(seconds: 1),
              child: FlutterLogo(size: _size),
            ),
          ),
        ),
      ),
    );
  }
}
