import 'package:flutter/material.dart';

import 'package:app_qr/src/widgets/menu_widget.dart';

class Modo_de_usoPage extends StatelessWidget {
  static final String routeName = 'uso';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Contacto'),
          backgroundColor: Colors.deepPurple,
        ),
        drawer: MenuWidget(),
        body: Column(
          children: [
            // Imagen

            Image(image: AssetImage('assets/covid-home.png')),

            Text('MODO DE USO'),
          ],
        ));
  }
}
