import 'package:flutter/material.dart';
import '../screens/screens.dart';

class AppRoutes {
  static const initialRoute = 'Home';
  static final menuOptions = <MenuOptions>[
    MenuOptions(
      route: 'Home',
      name: 'Home Screen',
      screen: HomeScreenP(),
      icon: Icons.add_ic_call_outlined,
    ),
    MenuOptions(
      route: 'HomeP',
      name: 'Home Screen Prueba',
      screen: HomeScreenP(),
      icon: Icons.add_ic_call_outlined,
    ),
    MenuOptions(
      route: 'Biblioteca',
      name: 'Biblioteca',
      screen: BibliotecaScreen(),
      icon: Icons.add_ic_call_outlined,
    ),
    MenuOptions(
      route: 'Alertas',
      name: 'Alertas',
      screen: AlertScreen(),
      icon: Icons.add_ic_call_outlined,
    ),
    MenuOptions(
      route: 'Informacion',
      name: 'Informaciones',
      screen: InformacionScreen(),
      icon: Icons.add_ic_call_outlined,
    ),
    MenuOptions(
      route: 'Card',
      name: 'Card',
      screen: CardScreen(),
      icon: Icons.add_ic_call_outlined,
    ),
    MenuOptions(
      route: 'Noticias',
      name: 'Noticias',
      screen: NoticiasScreen(),
      icon: Icons.add_ic_call_outlined,
    ),
    MenuOptions(
      route: 'Repositorios',
      name: 'Repositorios',
      screen: RepositoriosScreen(),
      icon: Icons.add_ic_call_outlined,
    ),
  ];

  static var routes;
  static Map<String, Widget Function(BuildContext)> getAppRoutes() {
    Map<String, Widget Function(BuildContext)> appRoutes = {};
    for (final option in menuOptions) {
      appRoutes.addAll({option.route: (BuildContext context) => option.screen});
    }
    return appRoutes;
  }

  /*static Map<String, Widget Function(BuildContext)> routes = {
    'Home': (BuildContext context) => HomeScreem(),
    'HomeP': (BuildContext context) => HomeScreenP(),
    'Biblioteca': (BuildContext context) => BibliotecaScreen(),
    'Alert': (BuildContext context) => AlertScreen(),
    'Card': (BuildContext context) => CardScreen(),
    'Informacion': (BuildContext context) => InformacionScreen(),
  };
  */
  static Route<dynamic> onGenerateRoute(RouteSettings settings) {
    return MaterialPageRoute(builder: (context) => AlertScreen());
  }
}
