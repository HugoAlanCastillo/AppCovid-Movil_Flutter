import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class SintomasPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Síntomas'),
        backgroundColor: Colors.deepPurple,
      ),
      body: Column(children: <Widget>[Text('HOLA'), Text('Richardo is gay')]),
    );
  }
}
