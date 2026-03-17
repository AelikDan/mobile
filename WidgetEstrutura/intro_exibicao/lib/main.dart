// tela para estudo dos widgets de exibicao
// text, image, icon entre outros

import 'package:flutter/material.dart';

void main(){
  runApp(MaterialApp(
    //Configurações iniciais do app
    //router -> Rotas de navegação
    //home -> pagina inicial
    //themeApp -. (Claro/Escuro)
    home: MyApp(),
  )); 
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // Estrutura da tela
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //elemento principal da tela
      //appbar, drawer, bnBar, body, fabutton, snakebar
      appBar: AppBar(title: Text("Exemplos de Widget Exibição"),),

      //adicionar um elemento de scroll
      body: SingleChildScrollView(
      child: Padding(
        padding: EdgeInsets.all(16),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              "Explorando o Flutter",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 28,
                fontWeight: FontWeight.bold,
              ),
            ),
            // Imagem da internet
            Image.network(
              "https://images.unsplash.com/photo-1744296357005-817be7239f36?",
              height: 400,
              fit: BoxFit.contain,
            ),
            // Imagem local
            Image.asset(
              "assets/img/olho.png",
              height: 600,
              fit: BoxFit.cover,
            ),
          ],
        ),
      ),
    ),
    );
  }
}