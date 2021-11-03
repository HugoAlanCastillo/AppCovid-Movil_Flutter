import 'package:app_qr/src/pages/pestanas/contacto.dart';
import 'package:app_qr/src/pages/pestanas/modo_de_uso.dart';
import 'package:app_qr/src/pages/pestanas/usuario.dart';
import 'package:flutter/material.dart';
import 'package:app_qr/src/pages/home_page.dart';

class MenuWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          DrawerHeader(
            child: Container(),
            decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage('assets/menu-img.jpg'), fit: BoxFit.cover),
            ),
          ),
          ListTile(
            leading: Icon(Icons.home, color: Colors.deepPurple),
            title: Text('Inicio'),
            onTap: () =>
                Navigator.pushReplacementNamed(context, HomePage.routeName),
          ),
          ListTile(
            leading: Icon(Icons.accessibility, color: Colors.deepPurple),
            title: Text('Usuario'),
            onTap: () =>
                Navigator.pushReplacementNamed(context, UsuarioPage.routeName),
          ),
          ListTile(
            leading: Icon(Icons.info, color: Colors.deepPurple),
            title: Text('Modo de Uso'),
            onTap: () => Navigator.pushReplacementNamed(
                context, Modo_de_usoPage.routeName),
          ),
          ListTile(
            leading: Icon(Icons.people, color: Colors.deepPurple),
            title: Text('Contacto'),
            onTap: () {
              Navigator.pushReplacementNamed(context, ContactoPage.routeName);
            },
          ),
          /* ListTile(
              leading: Icon(Icons.settings, color: Colors.deepPurple),
              title: Text('Settings'),
              onTap: () {
                Navigator.pop(context);
                //  Navigator.pushReplacementNamed(context, SettingsPage.routeName);
              }), */
        ],
      ),
    );
  }
}
