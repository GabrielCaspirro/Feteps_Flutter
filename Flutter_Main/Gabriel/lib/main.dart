import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false, // Removendo a faixa de debug
      home: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Row(
                children: [
                  Container(
                    padding: EdgeInsets.all(20.0),
                    alignment: Alignment.center,
                    child: Image.asset('img/logo.png'), // Substitua 'assets/logo.png' pelo caminho da sua logo
                  ),
                  IconButton(
                    icon: Icon(Icons.menu), // Ícone de três barrinhas
                    onPressed: () {
                      // Implemente a lógica para mostrar as outras opções de tela
                    },
                  ),
                ],
              ),
              Padding(
                padding: EdgeInsets.all(10.0),
                child: Text(
                  'Instituições',
                  style: TextStyle(fontSize: 20.0),
                ),
              ),
              Padding(
                padding: EdgeInsets.all(10.0),
                child: TextField(
                  decoration: InputDecoration(
                    hintText: 'Pesquise uma Instituição...',
                    hintStyle: TextStyle(color: Colors.grey),
                    border: OutlineInputBorder(
                      borderSide: BorderSide(color: Color.fromARGB(237, 185, 166, 1)),
                    ),
                    prefixIcon: Icon(Icons.search, color: Color.fromARGB(237, 185, 166, 1)),
                  ),
                ),
              ),

              Padding(
                padding: EdgeInsets.all(10.0),
                child:
                  Text(
                    'Etecs',
                    style: TextStyle(fontSize: 24.0, color: Colors.brown, fontWeight: FontWeight.bold),
                ),
              ),
              SizedBox(height: 10.0),
              Divider(
                color: Colors.grey, // Cor da linha
                thickness: 1.0, // Espessura da linha
              ),
              SizedBox(height: 10.0),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    CardWidget(),
                    CardWidget(),
                  ],
                ),
              ),

              Padding(
                padding: EdgeInsets.all(10.0),
                child:
                  Text(
                    'Fatecs',
                    style: TextStyle(fontSize: 24.0, color: Colors.brown, fontWeight: FontWeight.bold),
                ),
              ),
              SizedBox(height: 10.0),
              Divider(
                color: Colors.grey, // Cor da linha
                thickness: 1.0, // Espessura da linha
              ),
              SizedBox(height: 10.0),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    CardWidget2(),
                    CardWidget2(),
                  ],
                ),
              ),
            ]
          ),
        ),
      ),
    );
  }
}

class CardWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0), // Adicionando espaço entre os cards
      child: Card(
        color: Color.fromARGB(255, 91, 25, 99), // Cor de fundo do card
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10.0), // Arredondando as bordas do card
        ),
        child: SizedBox(
          width: 150.0,
          height: 200.0,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(height: 10.0), // Adicionando espaço entre a borda e a imagem
              Image.asset('img/Rectangle.png'), // Substitua 'assets/institution_image.jpg' pelo caminho da imagem da instituição
              SizedBox(height: 5.0),
              Text(
                'XXXXXXX',
                style: TextStyle(fontWeight: FontWeight.bold), // Deixando as letras mais grossas
              ),
              SizedBox(height: 3.0),
              Text(
                'xxxxxxx',
                style: TextStyle(fontSize: 12.0, color: Colors.grey), // Definindo estilo para o texto menor
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class CardWidget2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0), // Adicionando espaço entre os cards
      child: Card(
        color: Color.fromARGB(255, 127, 105, 26), // Cor de fundo do card
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10.0), // Arredondando as bordas do card
        ),
        child: SizedBox(
          width: 150.0,
          height: 200.0,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(height: 10.0), // Adicionando espaço entre a borda e a imagem
              Image.asset('img/Rectangle.png'), // Substitua 'assets/institution_image.jpg' pelo caminho da imagem da instituição
              SizedBox(height: 5.0),
              Text(
                'XXXXXXX',
                style: TextStyle(fontWeight: FontWeight.bold), // Deixando as letras mais grossas
              ),
              SizedBox(height: 3.0),
              Text(
                'xxxxxxx',
                style: TextStyle(fontSize: 12.0, color: Colors.grey), // Definindo estilo para o texto menor
              ),
            ],
          ),
        ),
      ),
    );
  }
}