//criar o void main
//responsável por rodar o elemento principal da aplicação

import 'package:flutter/material.dart';

void main(){
  //runApp => chama o elemnto do materialApp
  runApp(MainApp());
}

//Criar a classe MainApp
class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    //Montar a estrutura do MaterialAPP
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text("Tela de login"),),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              //Elementos de input de texto
              Text("Email:"),
              TextField(textAlign: TextAlign.center,),
              Text("Senha:"),
              TextField(textAlign: TextAlign.center,obscureText: true,),
              TextButton(onPressed: (){}, child: Text("Enviar"))
            ],
          ),
        ) ,
        
        bottomNavigationBar: BottomNavigationBar(
          items:[
            BottomNavigationBarItem(icon: Icon(Icons.arrow_back),label:"back"),
            BottomNavigationBarItem(icon: Icon(Icons.home),label:"home"),
            BottomNavigationBarItem(icon: Icon(Icons.arrow_forward),label:"next")
          ]
        ),
      ),
    );
  }
}