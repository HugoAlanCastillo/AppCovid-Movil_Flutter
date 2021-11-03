import 'package:flutter/material.dart';
import 'package:app_qr/src/widgets/menu_widget.dart';
import 'package:app_qr/src/pages/login/provider.dart';

class UsuarioPage extends StatelessWidget {
  static final String routeName = 'usuario';
  @override
  Widget build(BuildContext context) {
    final bloc = Provider.of(context);

    return Scaffold(
      appBar: AppBar(
        title: Text('Usuario'),
        backgroundColor: Colors.deepPurple,
      ),
      drawer: MenuWidget(),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text('Email: ${bloc.email}'),
          Divider(),
          Text('Password: ${bloc.password}')
        ],
      ),
    );
  }
}
