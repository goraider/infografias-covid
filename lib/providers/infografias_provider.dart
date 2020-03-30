import 'package:http/http.dart' as http;
import 'package:ssa_covid_19/models/infografia_model.dart';
import 'dart:convert';

class InfografiasProvider {

  String _url     = 'http://contingencia.saludchiapas.gob.mx/';
  String _allJson = 'manualapi/infografias.php?id=1';
  String _imgs    = 'images/infografias/';


  Future<List<Infografia>>getInfografias() async {

    final url = '$_url'+'$_allJson';

    final resp = await http.get( url );
    final decodedData = json.decode( resp.body );


    final infografia = new Infografias.fromJsonList( decodedData );

    //print( infografia.items[0].descripcion ); 

    return infografia.items;




  }



}