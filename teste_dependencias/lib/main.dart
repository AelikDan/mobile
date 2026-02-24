import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

void main() {
  runApp(MaterialApp(
    home: 
      Scaffold(
        appBar: AppBar(title: Text("Meu primeiro App"),),
        body: Center(
          child: ElevatedButton(onPressed: (){
            Fluttertoast.showToast(msg: "Olá! Mundo",
            toastLength: Toast.LENGTH_LONG,
            gravity: ToastGravity.CENTER);
          }, child: Text("Não entre em pânico!")),
        ),
      ),
  ));
}
