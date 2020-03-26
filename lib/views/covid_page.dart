import 'package:flutter/material.dart';

class CovidPage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
        title: Text('¿Qué es el Coronavirus (COVID-19)?'),
      ),   
      body: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
            //image: AssetImage('assets/covid 1200 x 1920_A-02.png'),
            image:NetworkImage('http://contingencia.saludchiapas.gob.mx/images/infografias/infografia2.png'),
            fit: BoxFit.cover

          ),
        ),
      )
    );
  }

}