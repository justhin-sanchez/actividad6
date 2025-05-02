import 'package:flutter/material.dart';

//! AnimatedPositioned dentro de Scaffold con AppBar

class PantallaDiecisiete extends StatefulWidget {
  const PantallaDiecisiete({Key? key}) : super(key: key);

  @override
  State<PantallaDiecisiete> createState() => _PantallaDiecisieteState();
}

class _PantallaDiecisieteState extends State<PantallaDiecisiete> {
  bool selected = false;

  void _togglePosition() {
    setState(() {
      selected = !selected;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Pantalla 17',
          style: TextStyle(fontSize: 20, color: Colors.white),
        ),
        backgroundColor: Colors.deepPurple, // Color del AppBar
        centerTitle: true,
      ),
      body: Center(
        child: SizedBox(
          width: 200,
          height: 350,
          child: Stack(
            children: <Widget>[
              AnimatedPositioned(
                width: selected ? 200.0 : 50.0,
                height: selected ? 50.0 : 200.0,
                top: selected ? 50.0 : 150.0,
                duration: const Duration(seconds: 2),
                curve: Curves.fastOutSlowIn,
                child: GestureDetector(
                  onTap: _togglePosition,
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.orangeAccent,
                      borderRadius: BorderRadius.circular(25),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
