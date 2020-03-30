import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:ssa_covid_19/providers/infografias_provider.dart';

import 'package:ssa_covid_19/views/home_page.dart';
import 'package:ssa_covid_19/views/menores_edad.dart';
import 'package:ssa_covid_19/routes/routes.dart';

const RojoObscuro = const Color.fromARGB(255, 162, 34, 67);
const DoradoOcre  = const Color.fromARGB(255, 188, 149,91);

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'COVID-19 App',
      debugShowCheckedModeBanner: false,
      
      //configuración Calendario en Español
      localizationsDelegates: [
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],

      supportedLocales: [
        const Locale('en', 'US'), // English
        const Locale('es', 'ES'), // Español
      ],

      theme: ThemeData(
        primaryColor: RojoObscuro,
      ),
      home: MyHomePage(title: 'Guía del Coronavirus (COVID-19)'),
      initialRoute: '/',
      routes: getApplicationRoutes(),

      onGenerateRoute: (RouteSettings settings ) {

        print( 'Ruta llamada: ${ settings.name }' );

        return MaterialPageRoute(
          builder: ( BuildContext context ) => HomePage()
        );

      },
      

    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  String _fechaNacimiento;
  DateTime fechaSeleccionada;
  bool fechaBandera = false;
  int edad = 0;

  // void _incrementCounter() {
  //   setState(() {
  //     // This call to setState tells the Flutter framework that something has
  //     // changed in this State, which causes it to rerun the build method below
  //     // so that the display can reflect the updated values. If we changed
  //     // _counter without calling setState(), then the build method would not be
  //     // called again, and so nothing would appear to happen.
  //     _counter++;
  //   });
  // }

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      floatingActionButton: Theme(
        data: Theme.of(context).copyWith(
          primaryColor: RojoObscuro,
        ),
        child:  Builder(
          builder: (context) => FloatingActionButton(
              backgroundColor: RojoObscuro,
              child:  Icon(Icons.date_range),
              onPressed: () => _obtenerFechaNacimiento(context)),
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              _fechaNacimiento == null ? 'Seleccione su'+ '\n' +'Fecha de Nacimiento' :  '$_fechaNacimiento'.toString()+ '\n' +'Usted tiene '+'$edad '+'Años' ,
              style: Theme.of(context).textTheme.display1,
              textAlign: TextAlign.center,
            ),

          ],
          
        ),
      ),
      // floatingActionButton: FloatingActionButton(
      //   //onPressed: _incrementCounter,
      //   onPressed: _handleDatePicker,
      //   tooltip: 'Increment',
      //   child: Icon(Icons.date_range),
      //   backgroundColor: RojoObscuro,
      // ),
    );
  }

    Future<Null> _obtenerFechaNacimiento(BuildContext context) async {


      final resultadoFecha = await showDatePicker(
      
          context: context,
          //locale : const Locale('es'),
          initialDate: new DateTime.now(),
          firstDate: new DateTime(1900),
          lastDate: new DateTime(2100),
          locale: Locale('es', 'ES')
      
      );

      if(resultadoFecha != null && resultadoFecha != fechaSeleccionada){
        setState(() {

           fechaSeleccionada = resultadoFecha; 
           fechaBandera = true;
          _fechaNacimiento = "${fechaSeleccionada.day}/${fechaSeleccionada.month}/${fechaSeleccionada.year}";

            Duration diferenciaEnDias =  DateTime.now().difference(fechaSeleccionada);
            String diferenciaEnAnios = (diferenciaEnDias.inDays/365).floor().toString();
            edad = int.parse(diferenciaEnAnios);


            if( edad > 0 && edad < 14  ){


              Navigator.push( context, MaterialPageRoute( builder: (context) => HomePage()));

            }else if( edad > 14){

              Navigator.push( context, MaterialPageRoute( builder: (context) => InfoPage()));

            }
            else{

                showDialog(
                  context: context,
                  barrierDismissible: true,
                  builder: (context) {

                    return AlertDialog(
                      shape: RoundedRectangleBorder( borderRadius: BorderRadius.circular(05.0) ),
                      title: Text('Error'),
                      content: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: <Widget>[
                          Text('Fecha de nacimiento errónea'),
                          Image.asset('assets/error.png'),
                          //FlutterLogo( size: 100.0)
                        ],
                      ),
                      actions: <Widget>[

                        FlatButton(
                          child: Text('Aceptar'),
                          //textColor: RojoObscuro,
                          //color: RojoObscuro,
                          onPressed: (){
                            Navigator.of(context).pop();
                          },
                        ),
                      ],
                    );

                  }
                );
            }

            

        });

     }
 
  }



}
