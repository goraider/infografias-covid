import 'package:flutter/material.dart';

class PrevencionPage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
        title: Text('Prevención'),
      ),
      body: Container(

        decoration: BoxDecoration(
          image: DecorationImage(
            image:NetworkImage('http://contingencia.saludchiapas.gob.mx/images/infografias/infografia4.png'),
            //image: AssetImage('assets/prevencion 1200 x 1920_B-01.png'),
            fit: BoxFit.cover,
          ),
        ),

      ),
    );
  }

}