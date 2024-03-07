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
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.stretch, children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Container(
                  padding: EdgeInsets.all(20.0),
                  alignment: Alignment.center,
                  child: Image.asset('img/logo.png'),
                ),
                IconButton(
                  iconSize: 42.0,
                  icon: Icon(Icons.menu), // Ícone de três barrinhas
                  onPressed: () {},
                ),
              ],
            ),
            Padding(
              padding: EdgeInsets.all(10.0),
              child: Text(
                'Instituições',
                style: TextStyle(
                    fontSize: 32.0,
                    fontWeight: FontWeight.bold,
                    color: Color.fromARGB(255, 29, 30, 77)),
              ),
            ),
            Padding(
              padding: EdgeInsets.all(10.0),
              child: TextField(
                decoration: InputDecoration(
                  hintText: 'Pesquise uma Instituição...',
                  hintStyle: TextStyle(color: Colors.grey),
                  border: OutlineInputBorder(
                    borderSide: BorderSide(
                      width: 16.0,
                      color: Color.fromARGB(237, 185, 166, 1),
                      style: BorderStyle.solid,
                    ),
                  ),
                  prefixIcon: Icon(Icons.search,
                      color: Color.fromARGB(237, 185, 166, 1)),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.all(10.0),
              child: Text(
                'Etecs',
                style: TextStyle(
                    fontSize: 32.0,
                    color: Colors.brown,
                    fontWeight: FontWeight.bold),
              ),
            ),
            SizedBox(height: 2.0),
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
              child: Text(
                'Fatecs',
                style: TextStyle(
                    fontSize: 32.0,
                    color: Colors.brown,
                    fontWeight: FontWeight.bold),
              ),
            ),
            SizedBox(height: 2.0),
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
          ]),
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
        color: Color.fromARGB(255, 130, 30, 141), // Cor de fundo do card
        shape: RoundedRectangleBorder(
          borderRadius:
              BorderRadius.circular(10.0), // Arredondando as bordas do card
        ),
        child: SizedBox(
          width: 185.0,
          height: 240.0,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(
                  height: 10.0), // Adicionando espaço entre a borda e a imagem
              Image.asset('img/Rectangle.png'),
              SizedBox(height: 5.0),
              Text(
                'XXXXXXX',
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 18.0,
                    color: const Color.fromARGB(
                        255, 255, 255, 255)), // Deixando as letras mais grossas
              ),
              SizedBox(height: 3.0),
              Text(
                'xxxxxxx',
                style: TextStyle(
                    fontSize: 14.0,
                    color: Color.fromARGB(255, 158, 156,
                        156)), // Definindo estilo para o texto menor
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
        color: Color.fromARGB(255, 245, 211, 89), // Cor de fundo do card
        shape: RoundedRectangleBorder(
          borderRadius:
              BorderRadius.circular(10.0), // Arredondando as bordas do card
        ),
        child: SizedBox(
          width: 185.0,
          height: 240.0,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(
                  height: 10.0), // Adicionando espaço entre a borda e a imagem
              Image.asset('img/Rectangle.png'),
              SizedBox(height: 5.0),
              Text(
                'XXXXXXX',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 18.0,
                ), // Deixando as letras mais grossas
              ),
              SizedBox(height: 3.0),
              Text(
                'xxxxxxx',
                style: TextStyle(
                    fontSize: 14.0,
                    color: Color.fromARGB(255, 158, 156,
                        156)), // Definindo estilo para o texto menor
              ),
            ],
          ),
        ),
      ),
    );
  }
}
