import 'package:app_learning/idioma.dart';
import 'package:flutter/material.dart';

void main() {
  // monta o ambiente (elementos gráficos)
  runApp(
    MaterialApp(
      home: landingPage(), // é a rota de entrada da aplicação (Start here)
      debugShowCheckedModeBanner: false, // remove o banner de debug do App
    ),
  );
}

class landingPage extends StatefulWidget {
  @override
  State<landingPage> createState() => _landingPage();
}

/// Esta classe terá todo o conteúdo da aplicação, incluindo a lógica
/// e os controles (campos de entrada) e botões de ação (clacular e o reset)
class _landingPage extends State<landingPage> {
  // Aqui vamos definir nossos controles de entrada (digitação de valores)
  TextEditingController nameController = TextEditingController();
  TextEditingController emailController = TextEditingController();

  // Criação de um controle para o nosso formulário (form)
  GlobalKey<FormState> _formKey = GlobalKey<FormState>();


  // Definição dos métodos do App

  
  // Montagem do ambiente gráfico do aplicativo
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
          key: _formKey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Container(
                child: Image.asset('assets/pi.jpg'),
                width: 100,
                height: 100,
                ),

                const Text(
                'Faça seu cadastro para receber novos conteúdos',
                style: TextStyle(fontSize: 20,),
                ),
            
              //montando os campos de edição
              TextFormField(
                controller: nameController,
                textAlign: TextAlign.center,
                keyboardType: TextInputType.name,

                //validação da entrada
                validator: (value) => 
                  value!.isEmpty ? 'Informe como quer ser chamado' : null,
                decoration: const InputDecoration(
                  labelText: 'Nome',
                ),
                style: TextStyle(color: Colors.black, fontSize: 25.0),
              ),

              TextFormField(
                controller: emailController,
                textAlign: TextAlign.left,
                keyboardType: TextInputType.emailAddress,

                //validação da entrada
                validator: (value) => 
                  value!.isEmpty ? 'Informe seu E-mail' : null,
                decoration: const InputDecoration(
                  labelText: 'E-mail',
                ),
                style: TextStyle(color: Colors.black, fontSize: 25.0),
              ),

              // criar botão para calcular
              Padding(
                padding: EdgeInsets.only(top: 50, bottom: 10),
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
                    'Cadastrar',
                    style: TextStyle(color: Colors.white, fontSize: 25),
                  ),
                    fillColor: Colors.blueGrey[900],
                  ),
                ),
              ),


              Padding(
                padding: EdgeInsets.only(top: 0, bottom: 50),
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
                    'Não quero',
                    style: TextStyle(color: Colors.white, fontSize: 25),
                  ),
                    fillColor: Colors.red[900],
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