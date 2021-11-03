import 'package:flutter/material.dart';
import 'package:app_qr/src/widgets/menu_widget.dart';

class ContactoPage extends StatelessWidget {
  static final String routeName = 'contacto';
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

            // Title
            Title(),

            // Button Section
            ButtonSection(),

            // Description
            Container(
                margin: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                child: Text(
                    'Esta aplicación fue diseñada por alumnos de la institución TESE de la carrera ingeniería informática  octavo semestre por el profesor Leonardo Miguel Moreno Villalba. El proyecto consiste en crear una app que alerté a la institución de un posible alumno con COVID 19 y este envié una alerta entre los salones con la misma aplicación que esta en desarrollo, de esta forma evitar que otros alumnos y docentes se contagien siendo una forma más fácil de prevenir contagios y así no afectar a la comunidad estudiantil.'))
          ],
        ));
  }
}

class Title extends StatelessWidget {
  const Title({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      child: Row(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Tecnológico de Estudios Superiores de Ecatepec ',
                style:
                    TextStyle(fontWeight: FontWeight.bold, color: Colors.black),
              ),
              Text(
                'Contacto: ',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              Text('appmovil.covid@gmail.com',
                  style: TextStyle(color: Colors.black45)),
            ],
          ),
          Expanded(child: Container()),
          Icon(Icons.contact_page, color: Colors.deepPurple),
          Text(''),
        ],
      ),
    );
  }
}

class ButtonSection extends StatelessWidget {
  const ButtonSection({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          CustomButton(icon: Icons.call, text: 'Call'),
          CustomButton(icon: Icons.share, text: 'Share'),
        ],
      ),
    );
  }
}

class CustomButton extends StatelessWidget {
  final IconData icon;
  final String text;

  const CustomButton({
    Key? key,
    required this.icon,
    required this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Icon(
          this.icon,
          color: Colors.blue,
          size: 30,
        ),
        Text(this.text, style: TextStyle(color: Colors.blue))
      ],
    );
  }
}
