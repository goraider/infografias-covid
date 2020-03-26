//import 'package:ssa_covid_19/src/pages/alert_page.dart';
import 'package:ssa_covid_19/providers/menu_provider.dart';
import 'package:ssa_covid_19/utils/icono_string_util.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Guía del Coronavirus (COVID-19)'),
      ),
      body: _lista(),
      
    );
  }
  
}

Widget _lista() {

    return FutureBuilder(

      future: menuProvider.cargarData(),
      initialData: [],
      builder: ( context, AsyncSnapshot<List<dynamic>> snapshot ) {

          //print(snapshot.data);

          return ListView(
            children: _listaItems( snapshot.data, context ),
          );

      },

    );

}

List<Widget> _listaItems( List<dynamic> data, BuildContext context ) {
  
  final List<Widget> opciones = [];

      data.forEach( (opt) {

        final widgetTemp = ListTile(

          title: Text( opt['texto'] ),
          leading: getIcon( opt['icon'] ),
          trailing: Icon( Icons.keyboard_arrow_right),
          onTap: () {

            Navigator.pushNamed(context, opt['ruta']);

          },
        );

        opciones..add(widgetTemp)
                ..add(Divider());

      });

  return opciones;
}