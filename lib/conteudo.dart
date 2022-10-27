import 'package:app_learning/biologia.dart';
import 'package:app_learning/fisica.dart';
import 'package:app_learning/idioma.dart';
import 'package:app_learning/quimica.dart';
import 'package:flutter/material.dart';

void main() {
  // monta o ambiente (elementos gráficos)
  runApp(
    MaterialApp(
      home: Conteudo(), // é a rota de entrada da aplicação (Start here)
      debugShowCheckedModeBanner: false, // remove o banner de debug do App
    ),
  );
}

class Conteudo extends StatefulWidget {
  @override
  State<Conteudo> createState() => _Conteudo();
}


class _Conteudo extends State<Conteudo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Aprendendo Ciências Exatas',
          style: TextStyle(color: Colors.white),
        ),
        centerTitle: true,
        backgroundColor: Colors.blueGrey[900],
      ),

      //criação do corpo de entrada de dados
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Form(

          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[

              const Text(
                ' ',
                ),

              const Text(
                'O que deseja aprender?',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),

              Padding(
                padding: EdgeInsets.only(top: 0, bottom: 10),
                child: Container(//é o mesmo que uma DIV
                height: 50,
                
                child: RawMaterialButton(
                  onPressed: (){
                    Navigator.push(
                      context, 
                      MaterialPageRoute(
                        builder: (BuildContext context) => Idioma()));
                  },
                  child: const Text(
                    'Matemática',
                    style: TextStyle(color: Colors.black, fontSize: 20),
                  ),
                    fillColor: Colors.white,
                  ),
                ),
              ),

               Padding(
                padding: EdgeInsets.only(top: 0, bottom: 10),
                child: Container(//é o mesmo que uma DIV
                height: 50,
                
                child: RawMaterialButton(
                  onPressed: (){
                    Navigator.push(
                      context, 
                      MaterialPageRoute(
                        builder: (BuildContext context) => Fisica()));
                  },
                  child: const Text(
                    'Física',
                    style: TextStyle(color: Colors.black, fontSize: 20),
                  ),
                    fillColor: Colors.white,
                  ),
                ),
              ),
              
              Padding(
                padding: EdgeInsets.only(top: 0, bottom: 10),
                child: Container(//é o mesmo que uma DIV
                height: 50,
                
                child: RawMaterialButton(
                  onPressed: (){
                    Navigator.push(
                      context, 
                      MaterialPageRoute(
                        builder: (BuildContext context) => Quimica()));
                  },
                  child: const Text(
                    'Quimica',
                    style: TextStyle(color: Colors.black, fontSize: 20),
                  ),
                    fillColor: Colors.white,
                  ),
                ),
              ),

              Padding(
                padding: EdgeInsets.only(top: 0, bottom: 10),
                child: Container(//é o mesmo que uma DIV
                height: 50,
                
                child: RawMaterialButton(
                  onPressed: (){
                    Navigator.push(
                      context, 
                      MaterialPageRoute(
                        builder: (BuildContext context) => Biologia()));
                  },
                  child: const Text(
                    'Biologia',
                    style: TextStyle(color: Colors.black, fontSize: 20),
                  ),
                    fillColor: Colors.white,
                  ),
                ),
              ),


            ]
          ),
        )
      ),
    );
  }
}