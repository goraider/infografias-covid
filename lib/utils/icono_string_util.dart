import 'package:flutter/material.dart';

const RojoObscuro = const Color.fromARGB(255, 162, 34, 67);
const DoradoOcre  = const Color.fromARGB(255, 188, 149,91);

final _icons = <String, IconData>{


  'info'            : Icons.info,
  'local_pharmacy'  : Icons.local_pharmacy,
  'mood'            : Icons.mood,
  'nature_people'   : Icons.nature_people,
  'group'           : Icons.group,
  'pan_tool'        : Icons.pan_tool,

};

Icon getIcon( String nombreIcono ) {

  return Icon( _icons[nombreIcono], color: DoradoOcre );

}