import 'package:app_qr/src/pages/home_temp2.dart';
import 'package:flutter/material.dart';
//Home
import 'package:app_qr/src/pages/home_page.dart';
//Login
import 'package:app_qr/src/pages/login/provider.dart';
import 'package:app_qr/src/pages/login_page.dart';
//Pestañas
import 'package:app_qr/src/pages/pestanas/carrera.dart';
import 'package:app_qr/src/pages/pestanas/contacto.dart';
import 'package:app_qr/src/pages/pestanas/modo_de_uso.dart';
import 'package:app_qr/src/pages/pestanas/noti.dart';
import 'package:app_qr/src/pages/pestanas/sintomas.dart';
import 'package:app_qr/src/pages/pestanas/usuario.dart';

void main() async {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Provider(
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'App-Covid',
        initialRoute: 'login',
        routes: {
          //Drawer
          HomePage.routeName: (BuildContext context) => HomePage(),
          ContactoPage.routeName: (BuildContext context) => ContactoPage(),
          UsuarioPage.routeName: (BuildContext context) => UsuarioPage(),
          Modo_de_usoPage.routeName: (BuildContext context) =>
              Modo_de_usoPage(),

          //Inicio
          'carrera': (BuildContext context) => HomePageTemp2(),
          'noti': (BuildContext context) => NotiPage(),
          'sintomas': (BuildContext context) => SintomasPage(),

          //Login
          'login': (BuildContext context) => LoginPage(),
          'usuario': (BuildContext context) => UsuarioPage(),
        },
        theme: ThemeData(
          primaryColor: Colors.deepPurple,
        ),
      ),
    );
  }
}
