import 'package:flutter/material.dart';
import 'package:unifranz_app_01/widgets/custom_card_1.dart';
import 'package:unifranz_app_01/widgets/custom_card_2.dart';
import 'package:unifranz_app_01/widgets/custom_card_3.dart';

class InformacionScreen extends StatelessWidget {
  const InformacionScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Informaciones Académicas"),
        centerTitle: true,
      ),
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: [
          const CustomCardType1(
            title: "Horarios de Clases",
            subtitle: "Consulta los horarios actualizados para este semestre",
          ),

          const SizedBox(height: 16),

          CustomCardType2(
            imageUrl:
                "https://unifranz.edu.bo/wp-content/uploads/2023/03/campus-la-paz.jpg",
            title: "Nuestras Instalaciones",
            subtitle: "Conoce nuestras modernas instalaciones educativas",
            onTap: () {
              Navigator.pushNamed(context, "instalaciones");
            },
          ),

          const SizedBox(height: 16),

          const CustomCardType3(
            height: 100,
            loadingText: "Cargando próximos eventos...",
          ),

          const SizedBox(height: 16),

          const CustomCardType1(
            title: "Reglamento Estudiantil",
            subtitle: "Conoce tus derechos y deberes como estudiante UNIFRANZ",
          ),

          const SizedBox(height: 16),

          CustomCardType2(
            imageUrl:
                "https://unifranz.edu.bo/wp-content/uploads/2023/03/biblioteca.jpg",
            title: "Biblioteca Virtual",
            subtitle: "Accede a nuestros recursos digitales",
            onTap: () {
              Navigator.pushNamed(context, "biblioteca");
            },
          ),
        ],
      ),
    );
  }
}
