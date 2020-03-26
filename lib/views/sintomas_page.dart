import 'package:flutter/material.dart';

class SintomasPage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
        title: Text('Síntomas'),
      ),
      body: Container(

        decoration: BoxDecoration(  
          image: DecorationImage(
            image:NetworkImage('http://contingencia.saludchiapas.gob.mx/images/infografias/infografia5.png'),
            //image: AssetImage('assets/sintomas 1200 x 1920_A-03.png'),
            fit: BoxFit.cover,
          ),
        ),

      ),
    );
  }

}