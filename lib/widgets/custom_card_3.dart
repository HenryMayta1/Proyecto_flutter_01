import 'package:flutter/material.dart';

class CustomCardType3 extends StatelessWidget {
  final double height;
  final String loadingText;

  const CustomCardType3({
    super.key,
    this.height = 120,
    this.loadingText = 'Cargando...',
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      child: SizedBox(
        height: height,
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const CircularProgressIndicator(),
              const SizedBox(height: 16),
              Text(loadingText),
            ],
          ),
        ),
      ),
    );
  }
}
