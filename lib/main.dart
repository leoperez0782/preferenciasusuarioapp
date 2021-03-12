import 'package:flutter/material.dart';
import 'package:preferenciasusuarioapp/src/pages/home_page.dart';
import 'package:preferenciasusuarioapp/src/pages/settings_page.dart';
import 'package:preferenciasusuarioapp/src/share_prefs/preferencias_usuario.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized(); //evita errores de inicializacion.
  final prefs = PreferenciasUsuario(); //inicializa las preferencias
  await prefs.initPrefs();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  final prefs = PreferenciasUsuario();
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Preferencias',
      initialRoute: prefs.ultimaPagina,
      routes: {
        HomePage.routeName: (BuildContext context) => HomePage(),
        SettingsPage.routeName: (BuildContext context) => SettingsPage(),
      },
    );
  }
}
