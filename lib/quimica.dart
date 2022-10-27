import 'package:app_learning/conteudo.dart';
import 'package:flutter/material.dart';

void main() {
  // monta o ambiente (elementos gráficos)
  runApp(
    MaterialApp(
      home: Quimica(), // é a rota de entrada da aplicação (Start here)
      debugShowCheckedModeBanner: false, // remove o banner de debug do App
    ),
  );
}

class Quimica extends StatefulWidget {
  @override
  State<Quimica> createState() => _Quimica();
}


class _Quimica extends State<Quimica> {
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
              Container(
                child: Image.asset('assets/building.jpg'),
                width: 200,
                height: 200,
                ),

              const Text(
                'Este conteúdo estará disponível em breve',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
                    
              // criar botão para voltar ao menu
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
                    'Voltar',
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