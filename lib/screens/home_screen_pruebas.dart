import 'package:flutter/material.dart';
import 'package:unifranz_app_01/screens/screens.dart';

class HomeScreenP extends StatelessWidget {
  const HomeScreenP({super.key});

  get menuOptions => null;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Portal Ingenieria de Sistemas'),
        elevation: 0,
        backgroundColor: Colors.deepOrangeAccent[300],
      ),
      body: ListView.separated(
        itemBuilder:
            (context, index) => ListTile(
              leading: Icon(Icons.border_all_rounded),
              title: Text('nombre de ruta'),
              onTap: () {
                //  final route = MaterialPageRoute(
                //   builder: (context) => CardScreen(),
                //);
                // Navigator.push(context, route);

                Navigator.pushNamed(
                  context,
                  menuOptions[index].route /*'Card'*/,
                );
              },
            ),
        separatorBuilder: (_, __) => Divider(),
        itemCount: AppRoutes.menuOptions.length,
      ),
    );
  }
}
