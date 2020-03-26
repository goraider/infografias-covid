import 'package:flutter/material.dart';

import 'package:ssa_covid_19/views/home_page.dart';
//import 'package:ssa_covid_19/main.dart';
import 'package:ssa_covid_19/views/covid_page.dart';
import 'package:ssa_covid_19/views/sintomas_page.dart';
import 'package:ssa_covid_19/views/prevencion_page.dart';
import 'package:ssa_covid_19/views/recomendaciones_page.dart';
import 'package:ssa_covid_19/views/bocas_page.dart';
import 'package:ssa_covid_19/views/gel_page.dart';


Map<String, WidgetBuilder> getApplicationRoutes() {

    return <String, WidgetBuilder>{
      //'/'                  :  ( BuildContext context ) => MyApp(),
      'home'               :  ( BuildContext context ) => HomePage(),
      'que_es_coronavirus' :  ( BuildContext context ) => CovidPage(),
      'sintomas'           :  ( BuildContext context ) => SintomasPage(),
      'prevencion'         :  ( BuildContext context ) => PrevencionPage(),
      'recomendaciones'    :  ( BuildContext context ) => RecomendacionesPage(),
      'cubre_bocas'        :  ( BuildContext context ) => BocasPage(),
      'gel_antibacterial'  :  ( BuildContext context ) => GelAntibacterialPage(),
      
    };

}
