import 'package:app_qr/src/pages/home_temp2.dart';
import 'package:app_qr/src/widgets/menu_widget.dart';
import 'package:flutter/material.dart';
import 'package:app_qr/src/pages/pestanas/sintomas.dart';

void main() => runApp(CarreraPage());

class CarreraPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'QR',
      routes: {
        '/': (BuildContext context) => HomePageTemp2(),
        'sintomas': (BuildContext context) => SintomasPage(),
      },
    );
  }
}

@override
Widget build(BuildContext context) {
  return Scaffold(
    appBar: AppBar(
      title: Text(''),
      backgroundColor: Colors.deepPurple,
    ),
    drawer: MenuWidget(),
  );
}
