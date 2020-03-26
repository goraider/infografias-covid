import 'package:flutter/material.dart';

class GelAntibacterialPage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
        title: Text('Como usar el gel-atibacterial'),
      ),
      body: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image:NetworkImage('http://contingencia.saludchiapas.gob.mx/images/infografias/infografia3.png'),
              //image: AssetImage('assets/gel_antibacterial 1200 x 1920_B-02.png'),
              fit: BoxFit.cover,
            ),
        ),

      ),
    );
  }

}