import 'package:flutter/material.dart';
import 'package:unifranz_app_01/screens/screens.dart';

class CustomCardType1 extends StatelessWidget {
  final String title;
  final String subtitle;

  const CustomCardType1({
    super.key,
    required this.title,
    required this.subtitle,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        children: [
          ListTile(
            leading: Icon(Icons.photo_album_outlined, color: AppTheme.primary),
            title: Text(title),
            subtitle: Text(subtitle),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                TextButton(onPressed: () {}, child: const Text('Ingresar')),
                TextButton(onPressed: () {}, child: const Text('Eliminar')),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
