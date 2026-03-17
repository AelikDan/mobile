import 'package:flutter/material.dart';
void main() {
  runApp(const MeuApp());
}

class MeuApp extends StatelessWidget {
  const MeuApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: PerfilPage(),
    );
  }
}

class PerfilPage extends StatelessWidget {
  const PerfilPage({super.key});

  Widget infoBox(String texto) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8),
      child: Container(
        height: 60,
        decoration: BoxDecoration(
          color: const Color(0xFFB6A7E6),
          borderRadius: BorderRadius.circular(18),
        ),
        alignment: Alignment.centerLeft,
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Text(
          texto,
          style: const TextStyle(
            color: Colors.white,
            fontSize: 16,
          ),
        ),
      ),
    );
  }

  Widget badge(String titulo) {
    return Container(
      width: 100,
      height: 70,
      decoration: BoxDecoration(
        color: const Color(0xFFB6A7E6),
        borderRadius: BorderRadius.circular(15),
      ),
      alignment: Alignment.center,
      child: Text(
        titulo,
        style: const TextStyle(
          color: Colors.white,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFEDEDED),

      body: SingleChildScrollView(
        child: Column(
          children: [

            Stack(
              clipBehavior: Clip.none,
              children: [

                Container(
                  height: 160,
                  width: double.infinity,
                  color: const Color(0xFF8E79D6),
                ),

                Positioned(
                  top: 40,
                  left: 20,
                  child: const Icon(Icons.star, color: Colors.white, size: 30),
                ),

                Positioned(
                  top: 40,
                  right: 70,
                  child: const Icon(Icons.notifications, size: 30),
                ),

                Positioned(
                  top: 40,
                  right: 20,
                  child: const Icon(Icons.settings, size: 30),
                ),

                const Positioned(
                  bottom: -40,
                  left: 0,
                  right: 0,
                  child: Center(
                    child: CircleAvatar(
                      radius: 45,
                      backgroundColor: Colors.grey,
                    ),
                  ),
                ),
              ],
            ),

            const SizedBox(height: 60),

            const Text(
              "Daniel Cabral",
              style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.bold,
              ),
            ),

            const SizedBox(height: 5),

            const Text(
              "Sua descrição...",
              style: TextStyle(fontStyle: FontStyle.italic),
            ),

            const SizedBox(height: 20),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                badge("Seguidores"),
                badge("Conexões"),
                badge("Projetos"),
              ],
            ),

            const SizedBox(height: 30),

            /// LISTA
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                children: [
                  infoBox("Empresa"),
                  infoBox("Formação"),
                  infoBox("Localização"),
                  infoBox("Habilidades"),
                  infoBox("Especialização"),
                ],
              ),
            ),

            const SizedBox(height: 20),
          ],
        ),
      ),

      bottomNavigationBar: BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(
              icon: Icon(Icons.person), label: ""),
          BottomNavigationBarItem(
              icon: Icon(Icons.share), label: ""),
          BottomNavigationBarItem(
              icon: Icon(Icons.send), label: ""),
        ],
      ),
    );
  }
}
