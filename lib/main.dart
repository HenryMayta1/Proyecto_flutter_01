import 'package:flutter/material.dart';
import 'package:unifranz_app_01/screens/screens.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      //home: HomeScreem(),
      initialRoute: AppRoutes.initialRoute,
      routes: AppRoutes.routes,
      onGenerateRoute: AppRoutes.onGenerateRoute,
      theme: AppTheme.lightTheme,
      /* theme: ThemeData.light().copyWith(
        primaryColor: const Color.fromRGBO(219, 122, 12, 1),
        appBarTheme: AppBarTheme(color: Colors.deepOrange),
       ),*/
      // initialRoute: 'Home',
      /* initialRoute: AppRoutes.initialRoute,
      routes: {
        'home': (BuildContext context) => HomeScreenP(),
        'biblioteca': (BuildContext context) => BibliotecaScreen(),
        'foros': (BuildContext context) => ForosScreen(),
        'card': (BuildContext context) => CardScreen(),
        'informacion': (BuildContext context) => InformacionScreen(),
        'repositorios': (BuildContext context) => RepositoriosScreen(),
        'noticias': (BuildContext context) => NoticiasScreen(),
        'pensun': (BuildContext context) => PensunScreen(),
      },
      onGenerateRoute: (setting) {
        return MaterialPageRoute(builder: (context) => AlertScreen());
      },*/
    );
  }
}
