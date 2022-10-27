import 'package:app_learning/landing.dart';
import 'package:flutter/material.dart';

void main() {
  // monta o ambiente (elementos gráficos)
  runApp(
    MaterialApp(
      home: Idioma(), // é a rota de entrada da aplicação (Start here)
      debugShowCheckedModeBanner: false, // remove o banner de debug do App
    ),
  );
}

class Idioma extends StatefulWidget {
  @override
  State<Idioma> createState() => _Idioma();
}


class _Idioma extends State<Idioma> {
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
                'Escolha o seu Idioma',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),

              Padding(
                padding: EdgeInsets.only(top: 0, bottom: 10),
                child: Container(//é o mesmo que uma DIV
                height: 50,
                
                child: RawMaterialButton(
                  onPressed: (){
                  },
                  child: const Text(
                    'Português',
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
                  },
                  child: const Text(
                    'Inglês',
                    style: TextStyle(color: Colors.black, fontSize: 20),
                  ),
                    fillColor: Colors.white,
                  ),
                ),
              ),

              Padding(
                padding: EdgeInsets.only(top: 0, bottom: 50),
                child: Container(//é o mesmo que uma DIV
                height: 50,
                
                child: RawMaterialButton(
                  onPressed: (){
                  },
                  child: const Text(
                    'Espanhol',
                    style: TextStyle(color: Colors.black, fontSize: 20),
                  ),
                    fillColor: Colors.white,
                  ),
                ),
              ),

              Padding(
                padding: EdgeInsets.only(top: 50, bottom: 50),
                child: Container(//é o mesmo que uma DIV
                height: 50,
                
                
                child: RawMaterialButton(
                  onPressed: (){
                    Navigator.push(
                      context, 
                      MaterialPageRoute(
                        builder: (BuildContext context) => Landing()));
                  },
                  child: const Text(
                    'Continuar',
                    style: TextStyle(color: Colors.white, fontSize: 25),
                  ),
                    fillColor: Colors.blueGrey[900],
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