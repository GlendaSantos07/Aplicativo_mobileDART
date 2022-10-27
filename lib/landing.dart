import 'package:app_learning/conteudo.dart';
import 'package:flutter/material.dart';

void main() {
  // monta o ambiente (elementos gráficos)
  runApp(
    MaterialApp(
      home: Landing(), // é a rota de entrada da aplicação (Start here)
      debugShowCheckedModeBanner: false, // remove o banner de debug do App
    ),
  );
}

class Landing extends StatefulWidget {
  @override
  State<Landing> createState() => _Landing();
}


class _Landing extends State<Landing> {
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
              /*Container(
                width: 200,
                height: 200,
                child: Image.asset('assets/logo.jpg'),
                ),*/

                const Text(
                'O que você espera do nosso aplicativo?',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),

                const Text(
                'Com base nisso, selecionamos o conteúdo apropriado.',
                style: TextStyle(fontSize: 17,),
                ),

              // criar botão para acessar a landing page

              Padding(
                padding: EdgeInsets.only(top: 0, bottom: 10),
                child: Container(//é o mesmo que uma DIV
                height: 50,
                
                child: RawMaterialButton(
                  onPressed: (){
                  },
                  child: const Text(
                    'Quero aprender',
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
                    'Quero jogar jogos para estudar',
                    style: TextStyle(color: Colors.black, fontSize: 20,),
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
                    'Quero fazer simulados',
                    style: TextStyle(color: Colors.black, fontSize: 20),
                  ),
                    fillColor: Colors.white,
                  ),
                ),
              ),

              Padding(
                padding: EdgeInsets.only(top: 0, bottom: 30),
                child: Container(//é o mesmo que uma DIV
                height: 50,
                
                child: RawMaterialButton(
                  onPressed: (){
                  },
                  child: const Text(
                    'Quero melhorar minhas notas',
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
                        builder: (BuildContext context) => Conteudo()));
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