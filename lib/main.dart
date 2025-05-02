import 'package:flutter/material.dart';

import 'package:com/pagina_inicial.dart';
import 'package:com/pagina_doce.dart';
import 'package:com/pagina_trece.dart';
import 'package:com/pagina_catorce.dart';
import 'package:com/pagina_quince.dart';
import 'package:com/pagina_dieciseis.dart';
import 'package:com/pagina_diecisiete.dart';
import 'package:com/pagina_dieciocho.dart';
import 'package:com/pagina_diecinueve.dart';
import 'package:com/pagina_veinte.dart';
import 'package:com/pagina_veintiuno.dart';

void main() => runApp(MiRutas());

class MiRutas extends StatelessWidget {
  const MiRutas({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Rutas entre paginas',
      initialRoute: '/',
      routes: {
        // When navigating to the "/" route, build the FirstScreen widget.
        '/': (context) => const PantallaUno(),
        // When navigating to the "/second" route, build the SecondScreen widget.
        '/pantalla12': (context) => const PantallaDoce(),
        '/pantalla13': (context) => const PantallaTrece(),
        '/pantalla14': (context) => const PantallaCatorce(),
        '/pantalla15': (context) => const PantallaQuince(),
        '/pantalla16': (context) => const PantallaDieciseis(),
        '/pantalla17': (context) => const PantallaDiecisiete(),
        '/pantalla18': (context) => const PantallaDieciocho(),
        '/pantalla19': (context) => const PantallaDiecinueve(),
        '/pantalla20': (context) => const PantallaVeinte(),
        '/pantalla21': (context) => const PantallaVeintiUno(),
      },
    );
  }
}
