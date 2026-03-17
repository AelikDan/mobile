//Situação de aprendizagem 01 - carrossel de imagens no Flutter
//Usar uma lista de imagens para montar um carrossel no flutter
// flutter pub add carousel_slider (Biblioteca do flutter pub get)

import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main(List<String> args){
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false, //Remove a flag do debug
    home: MyApp()
  )
  );
}

class MyApp extends StatelessWidget {
  MyApp({super.key});

  //Lista de imagens(Array)
  List<String> imagens = [
      "https://images.unsplash.com/photo-1506748686214-e9df14d4d9d0",
    "https://images.unsplash.com/photo-1521747116042-5a810fda9664",
    "https://images.unsplash.com/photo-1504384308090-c894fdcc538d",
    "https://images.unsplash.com/photo-1518837695005-2083093ee35b",
    "https://images.unsplash.com/photo-1501594907352-04cda38ebc29",
    "https://images.unsplash.com/photo-1519681393784-d120267933ba",
    "https://images.unsplash.com/photo-1531259683007-016a7b628fc3",
    "https://images.unsplash.com/photo-1506619216599-9d16d0903dfd",
    "https://images.unsplash.com/photo-1494172961521-33799ddd43a5",
    "https://images.unsplash.com/photo-1517245386807-bb43f82c33c4",
  ];


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Galeria de Imagens"),centerTitle: true,),
      body: Padding(
        padding: const EdgeInsets.all(8),
        child: Column(
          children: [
            //Carrosel de imagens da galeria na tela
            CarouselSlider(
            options: CarouselOptions(
              height: 300, //Altura maxima do carrossel
              autoPlay: true //Começa já a tocar
            ),
            items: imagens.map( //Percorrer meu vetor(array/list)
              ((url)=>Container(
                margin: EdgeInsets.all(8),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child: Image.network(url,fit:BoxFit.cover, width: 1000,),
                ),
              ))
            ).toList()),
            //Galeria de imagens
            Expanded(
              child: GridView.builder(
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 3, //Numero de colunas
                crossAxisSpacing: 8, //Espaçamento entre colunas
                mainAxisSpacing: 8 //Espaçamento entre linhas
                ),
                itemCount: imagens.length, //Quantidade de elementos da lista é a quantidade de elementos do grid
                //Construtor do grid
              itemBuilder: (context,index)=>
                GestureDetector(
                  onTap: () => _mostrarImagem(context,imagens[index]),
                  child: ClipRRect(borderRadius: BorderRadius.circular(8),//Arredondar os cantos da imagem
                  child: Image.network(imagens[index],fit: BoxFit.cover,),), 
                )))
          ],
        ),
      )
    );
  }
  
  void _mostrarImagem(BuildContext context, String imagen) {
    //Mostrar imagens com mais detalhes ao ser clicada,
    //Precisa do index da imagem para buscar no array
    //showDialog => Mostrar a imagem
    showDialog(
      context: context,
      builder: (context)=>Dialog(
        child: Image.network(imagen),
      ));
  }
}