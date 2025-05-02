import 'package:flutter/material.dart';

//! AnimatedOpacity dentro de Scaffold con AppBar

class PantallaCatorce extends StatefulWidget {
  const PantallaCatorce({Key? key}) : super(key: key);

  @override
  State<PantallaCatorce> createState() => _PantallaCatorceState();
}

class _PantallaCatorceState extends State<PantallaCatorce> {
  double opacityLevel = 1.0;

  void _toggleOpacity() {
    setState(() {
      opacityLevel = opacityLevel == 0 ? 1.0 : 0.0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Pantalla 14',
          style: TextStyle(fontSize: 20, color: Colors.white),
        ),
        backgroundColor: Colors.teal, // Color del AppBar
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            AnimatedOpacity(
              opacity: opacityLevel,
              duration: const Duration(seconds: 2),
              child: const FlutterLogo(
                size: 100,
              ),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: _toggleOpacity,
              child: const Text('Fade Logo'),
            ),
          ],
        ),
      ),
    );
  }
}
