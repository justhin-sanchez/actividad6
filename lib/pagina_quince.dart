import 'package:flutter/material.dart';

//! AnimatedPadding dentro de Scaffold con AppBar

class PantallaQuince extends StatefulWidget {
  const PantallaQuince({Key? key}) : super(key: key);

  @override
  State<PantallaQuince> createState() => _PantallaQuinceState();
}

class _PantallaQuinceState extends State<PantallaQuince> {
  double padValue = 0.0;

  void _togglePadding() {
    setState(() {
      padValue = padValue == 0.0 ? 100.0 : 0.0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Pantalla 15',
          style: TextStyle(fontSize: 20, color: Colors.white),
        ),
        backgroundColor: Colors.deepOrange, // Color del AppBar
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.orangeAccent,
              ),
              onPressed: _togglePadding,
              child: const Text('Change padding'),
            ),
            const SizedBox(height: 10),
            Text('Padding = ${padValue.toStringAsFixed(0)}'),
            const SizedBox(height: 20),
            AnimatedPadding(
              padding: EdgeInsets.all(padValue),
              duration: const Duration(seconds: 2),
              curve: Curves.easeInOut,
              child: Container(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height / 4,
                color: Colors.orangeAccent,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
