//Aplicativo
import 'package:flutter/material.dart';

void main(){
  runApp(MaterialApp(
    home: MainApp(),
    ));
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Aplicativo de celular: Jogo da velha"),),
      body:Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Stack(
                  alignment: AlignmentGeometry.center,
                  children: [
                    Container(
                      color: Colors.lightBlue,
                      width: 70,
                      height: 70,
                      margin: EdgeInsets.all(5),
                      padding: EdgeInsets.all(5),
                    ),
                    Icon(Icons.star),
                  ],
                ),
                Stack(
                  alignment: AlignmentGeometry.center,
                  children: [
                    Container(
                      color:Colors.yellow,
                      width: 70,
                      height: 70,
                      margin: EdgeInsets.all(5),
                      padding: EdgeInsets.all(5),
                    ),
                    Icon(Icons.circle)
                  ],
                ),
                Stack(
                  alignment: AlignmentGeometry.center,
                  children: [
                    Container(
                      color: Colors.green,
                      width: 70,
                      height: 70,
                      margin: EdgeInsets.all(5),
                      padding: EdgeInsets.all(5),
                    ),
                    Icon(Icons.star)
                  ],
                )
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Stack(
                  alignment: AlignmentGeometry.center,
                  children: [
                    Container(
                      color: Colors.lightBlue,
                      width: 70,
                      height: 70,
                      margin: EdgeInsets.all(5),
                      padding: EdgeInsets.all(5),
                    ),
                    Icon(Icons.star),
                  ],
                ),
                Stack(
                  alignment: AlignmentGeometry.center,
                  children: [
                    Container(
                      color:Colors.yellow,
                      width: 70,
                      height: 70,
                      margin: EdgeInsets.all(5),
                      padding: EdgeInsets.all(5),
                    ),
                    Icon(Icons.circle)
                  ],
                ),
                Stack(
                  alignment: AlignmentGeometry.center,
                  children: [
                    Container(
                      color: Colors.green,
                      width: 70,
                      height: 70,
                      margin: EdgeInsets.all(5),
                      padding: EdgeInsets.all(5),
                    ),
                    Icon(Icons.star)
                  ],
                )
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Stack(
                  alignment: AlignmentGeometry.center,
                  children: [
                    Container(
                      color: Colors.lightBlue,
                      width: 70,
                      height: 70,
                      margin: EdgeInsets.all(5),
                      padding: EdgeInsets.all(5),
                    ),
                    Icon(Icons.star),
                  ],
                ),
                Stack(
                  alignment: AlignmentGeometry.center,
                  children: [
                    Container(
                      color:Colors.yellow,
                      width: 70,
                      height: 70,
                      margin: EdgeInsets.all(5),
                      padding: EdgeInsets.all(5),
                    ),
                    Icon(Icons.circle)
                  ],
                ),
                Stack(
                  alignment: AlignmentGeometry.center,
                  children: [
                    Container(
                      color: Colors.green,
                      width: 70,
                      height: 70,
                      margin: EdgeInsets.all(5),
                      padding: EdgeInsets.all(5),
                    ),
                    Icon(Icons.star)
                  ],
                )
              ],
            ),
            
          ],
        ),
      ),
    );
  }
}