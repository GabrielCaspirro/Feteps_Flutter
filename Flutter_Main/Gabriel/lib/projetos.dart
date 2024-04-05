import 'package:flutter/material.dart';

class Projetos extends StatelessWidget {
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
                'Projetos',
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
                  hintText: 'Pesquise um projeto...',
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
                    CardWidget(ods: i)
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
                    CardWidget(ods: i)
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
  final int ods;

  CardWidget({required this.ods});

  Color cor(int ods){
    switch(ods){
      case 1:
        return Color.fromARGB(255, 179, 0, 0);
      case 2:
        return Color.fromARGB(255, 201, 177, 0);
      case 3: 
        return Color.fromARGB(255, 60, 131, 66);
      case 4:
        return Color.fromARGB(255, 127, 13, 13);
      case 5:
        return Color.fromARGB(255, 201, 59, 7);
      case 6:
        return Color.fromARGB(255, 22, 149, 199);
      case 7:
        return Color.fromARGB(255, 255, 234, 71);
      case 8:   
        return Color.fromARGB(255, 88, 3, 27);   
      case 9:
        return Color.fromARGB(255, 225, 107, 16);
      case 10:
        return Color.fromARGB(255, 222, 79, 115);
      case 11:
        return Color.fromARGB(255, 225, 162, 16);
      case 12:
        return Color.fromARGB(255, 162, 144, 3);
      case 13:
        return Color.fromARGB(255, 21, 89, 18);
      case 14:
        return Color.fromARGB(255, 12, 107, 186);
      case 15:
        return Color.fromARGB(255, 41, 229, 60);
      case 16:
        return Color.fromARGB(255, 7, 77, 152);
      case 17:
        return Color.fromARGB(255, 31, 27, 88);
      default:
        return Color.fromARGB(255, 179, 0, 0);
    }
  }
  @override
  Widget build(BuildContext context) {
    
    return Padding(
      padding: const EdgeInsets.all(8.0), // Adicionando espaço entre os cards
      child: SizedBox(
        height: 160,
        width: 200,
        child: Card(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(15),
              topRight: Radius.circular(15),
            ),
          ),
          elevation: 5,
          child: Stack(
            children: <Widget>[
              Positioned.fill(
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(15),
                      topRight: Radius.circular(15),
                    ),
                    border: Border.all(color: Color.fromARGB(255, 61, 20, 10), width: 2),
                  ),
                ),
              ),
              Align(
                alignment: Alignment.bottomCenter,
                child: Container(
                  height: 100,
                  decoration: BoxDecoration(
                      border: Border.all(color: Color.fromARGB(255, 61, 20, 10), width: 2),
                  ),
                  child: SizedBox(
                    child: Container(
                      color: cor(ods),
                      width: double.infinity,
                      margin: EdgeInsets.all(0),
                      padding: EdgeInsets.all(0),
                      alignment: Alignment.center,
                      child: Text(
                        "Conteúdo da parte inferior",
                        style: TextStyle(fontSize: 18),
                      ),
                    ),               
                  )
                ),
              ),
            ],
          ),
        ),
      )
    );
  }
}

