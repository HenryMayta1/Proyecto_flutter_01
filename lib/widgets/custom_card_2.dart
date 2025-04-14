import 'package:flutter/material.dart';

class CustomCardType2 extends StatelessWidget {
  final String imageUrl;
  final String title;
  final String subtitle;
  final VoidCallback? onTap;

  const CustomCardType2({
    super.key,
    required this.imageUrl,
    required this.title,
    required this.subtitle,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      clipBehavior: Clip.antiAlias,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      elevation: 3,
      child: Column(
        children: [
          FadeInImage(
            placeholder: const AssetImage('assets/loading.gif'),
            image: NetworkImage(imageUrl),
            fadeInDuration: const Duration(milliseconds: 300),
            height: 180,
            width: double.infinity,
            fit: BoxFit.cover,
          ),
          ListTile(title: Text(title), subtitle: Text(subtitle)),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                TextButton(onPressed: onTap, child: const Text('Ver más')),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
