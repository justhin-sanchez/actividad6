import 'package:flutter/material.dart';

//! AnimatedPhysicalModel dentro de Scaffold con AppBar

class PantallaDieciseis extends StatefulWidget {
  const PantallaDieciseis({Key? key}) : super(key: key);

  @override
  State<PantallaDieciseis> createState() => _PantallaDieciseisState();
}

class _PantallaDieciseisState extends State<PantallaDieciseis> {
  bool _isFlat = true;

  void _toggleElevation() {
    setState(() {
      _isFlat = !_isFlat;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Pantalla 16',
          style: TextStyle(fontSize: 20, color: Colors.white),
        ),
        backgroundColor: Colors.brown, // Color del AppBar
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            AnimatedPhysicalModel(
              duration: const Duration(milliseconds: 500),
              curve: Curves.fastOutSlowIn,
              elevation: _isFlat ? 0 : 6.0,
              shape: BoxShape.rectangle,
              shadowColor: Colors.black,
              color: Colors.white,
              child: const SizedBox(
                height: 120.0,
                width: 120.0,
                child: Icon(Icons.android_outlined),
              ),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: _toggleElevation,
              child: const Text('Click'),
            ),
          ],
        ),
      ),
    );
  }
}
