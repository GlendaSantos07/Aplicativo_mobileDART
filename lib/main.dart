import 'package:app_learning/landingPage.dart';
import 'package:flutter/material.dart';

void main() {
  // monta o ambiente (elementos gráficos)
  runApp(
    MaterialApp(
      home: Home(), // é a rota de entrada da aplicação (Start here)
      debugShowCheckedModeBanner: false, // remove o banner de debug do App
    ),
  );
}

class Home extends StatefulWidget {
  @override
  State<Home> createState() => _HomeState();
}


class _HomeState extends State<Home> {
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
                child: Image.asset('assets/logo.jpg'),
                width: 200,
                height: 200,
                ),

              const Text(
                'Aprenda Matemática, Química, Física e Biologia com 10 minutos por dia!',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
                    
              // criar botão para acessar a landing page
              Padding(
                padding: EdgeInsets.only(top: 50, bottom: 50),
                child: Container(//é o mesmo que uma DIV
                height: 50,
                child: RawMaterialButton(
                  onPressed: (){
                    Navigator.push(
                      context, 
                      MaterialPageRoute(
                        builder: (BuildContext context) => landingPage()));
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