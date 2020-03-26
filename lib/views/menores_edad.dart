import 'package:flutter/material.dart';

const RojoObscuro = const Color.fromARGB(255, 162, 34, 67);

class InfoPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
        title: Text('Preevención'),
      ),
      body: Container(

        decoration: BoxDecoration(
          image: DecorationImage(
            image:NetworkImage('https://www.ecestaticos.com/image/clipping/de51324714e8a3f4bdf86ffcac013008/coronavirus-covid-19-sintomas-como-prevenir-su-contagio-y-a-que-telefono-llamar.jpg'),
            fit: BoxFit.cover,
          ),
        ),

      ),
    );
  }

}