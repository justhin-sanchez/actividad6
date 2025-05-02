import 'package:flutter/material.dart';

//! AnimatedRotation dentro de Scaffold con AppBar

class PantallaDieciocho extends StatefulWidget {
  const PantallaDieciocho({Key? key}) : super(key: key);

  @override
  State<PantallaDieciocho> createState() => _PantallaDieciochoState();
}

class _PantallaDieciochoState extends State<PantallaDieciocho> {
  double turns = 0.0;

  void _rotateLogo() {
    setState(() => turns += 0.25); // 90 grados por click
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Pantalla 18',
          style: TextStyle(fontSize: 20, color: Colors.white),
        ),
        backgroundColor: Colors.indigo,
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(50),
              child: AnimatedRotation(
                turns: turns,
                duration: const Duration(seconds: 1),
                child: const FlutterLogo(size: 100),
              ),
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.orangeAccent,
              ),
              onPressed: _rotateLogo,
              child: const Text('Rotate Logo'),
            ),
          ],
        ),
      ),
    );
  }
}
