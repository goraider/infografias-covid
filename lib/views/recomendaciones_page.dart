import 'package:flutter/material.dart';

class RecomendacionesPage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
        title: Text('Recomendaciones'),
      ),
      body: Container(

        decoration: BoxDecoration(
          image: DecorationImage(
            image:NetworkImage('http://contingencia.saludchiapas.gob.mx/images/infografias/infografia1.png'),
            //image: AssetImage('assets/recomendaciones 1200 x 1920_A-01.png'),
            fit: BoxFit.cover,
          ),
        ),

      ),
    );
  }

}