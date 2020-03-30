//import 'package:ssa_covid_19/src/pages/alert_page.dart';
import 'package:ssa_covid_19/providers/infografias_provider.dart';
import 'package:ssa_covid_19/providers/menu_provider.dart';
import 'package:ssa_covid_19/utils/icono_string_util.dart';
import 'package:flutter/material.dart';
import 'package:ssa_covid_19/widget/card_swiper_widget.dart';

class HomePage extends StatelessWidget {

  final infografiasProvider = new InfografiasProvider();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: false,
        title: Text('Guía del Coronavirus (COVID-19)'),
        //backgroundColor: Colors.indigoAccent,
        // actions: <Widget>[
        //   IconButton(
        //     icon: Icon( Icons.search ),
        //     onPressed: () {},
        //     )
        // ],
      ),
      body: Container(
        child: Column(
          children: <Widget>[
            _swiperTarjetas()
          ],
        ),
      ),
    );
  }
  
}

Widget _swiperTarjetas(){

  final infografiasProvider = new InfografiasProvider();

  return FutureBuilder(

    future: infografiasProvider.getInfografias(),
    builder: (BuildContext context, AsyncSnapshot<List> snapshot) {

      if( snapshot.hasData ){
        
        return CardSwiper( infografias: snapshot.data );

      } else {
        return Container(
          height: 400.0,
          child: Center(
            child: CircularProgressIndicator()
          ),
        );
      }
    },

  );
  

  // final infografiasProvider = new InfografiasProvider();
  //   infografiasProvider.getInfografias();

  //   print('==============');
  //   print(infografiasProvider);
  //   print('==============');

  // return CardSwiper(
  //   infografias: [1,2,3,4,5],
  // );

  //return Container();

}

// Widget _lista() {

//     return FutureBuilder(

//       future: menuProvider.cargarData(),
//       initialData: [],
//       builder: ( context, AsyncSnapshot<List<dynamic>> snapshot ) {

//           //print(snapshot.data);

//           return ListView(
//             children: _listaItems( snapshot.data, context ),
//           );

//       },

//     );

// }

// List<Widget> _listaItems( List<dynamic> data, BuildContext context ) {
  
//   final List<Widget> opciones = [];

//       data.forEach( (opt) {

//         final widgetTemp = ListTile(

//           title: Text( opt['texto'] ),
//           leading: getIcon( opt['icon'] ),
//           trailing: Icon( Icons.keyboard_arrow_right),
//           onTap: () {

//             Navigator.pushNamed(context, opt['ruta']);

//           },
//         );

//         opciones..add(widgetTemp)
//                 ..add(Divider());

//       });

//   return opciones;
// }