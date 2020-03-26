import 'package:flutter/material.dart';

class BocasPage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Como usar cubre-bocas'),
        ),
      body: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image:NetworkImage('http://contingencia.saludchiapas.gob.mx/images/infografias/infografia6.png'),
              //image: AssetImage('assets/cubre_bocas 1200 x 1920_B-03.png'),
              fit: BoxFit.fill

          ),
        ),
      )
    );
  }

}