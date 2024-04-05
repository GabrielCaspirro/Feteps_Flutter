import 'package:flutter/material.dart';

class Palestrantes extends StatelessWidget {
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
                'Palestrantes',
                style: TextStyle(
                    fontFamily: "Poppins",
                    fontSize: 36.0,
                    fontWeight: FontWeight.bold,
                    color: Color.fromARGB(255, 14, 56, 70))
              ),
            ),
            Padding(
              padding: EdgeInsets.all(10.0),
              child: TextField(
                decoration: InputDecoration(
                  hintText: 'Pesquise um palestrante...',
                  hintStyle: TextStyle(color: Colors.grey),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      width: 3.0,
                      color: Color.fromARGB(255, 255, 209, 64),
                      style: BorderStyle.solid,
                    ),
                  ),
                  prefixIcon: Icon(Icons.search,
                      color: Color.fromARGB(255, 255, 209, 64)),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.all(10.0),
              child: Text(
                'Dia 1',
                style: TextStyle(
                  fontFamily: "Inter",
                    fontSize: 32.0,
                    color: Color.fromARGB(255, 61, 20, 10),
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
                  for(int i = 1; i < 18; i++)
                    CardWidget()
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.all(10.0),
              child: Text(
                'Dia 2',
                style: TextStyle(
                    fontFamily: "Inter",
                    fontSize: 32.0,
                    color: Color.fromARGB(255, 61, 20, 10),
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
                  for(int i = 1; i < 18; i++)
                    CardWidget()
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
        color: Color.fromARGB(255, 179, 0, 0), // Cor de fundo do card
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
                'Nome do palestrante',
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 14.0,
                    color: const Color.fromARGB(
                        255, 0, 0, 0)), // Deixando as letras mais grossas
              ),
              SizedBox(height: 3.0),
              Text(
                'Descrição',
                style: TextStyle(
                    fontFamily: "Poppins",
                    fontSize: 10.0,
                    color: Color.fromARGB(255, 0, 0, 0)), // Definindo estilo para o texto menor
              ),
            ],
          ),
        ),
      ),
    );
  }
}

