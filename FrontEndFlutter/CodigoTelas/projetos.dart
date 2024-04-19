import 'package:flutter/material.dart';

class Projetos extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false, 
      home: projetosHome()
    );
  }
}

class projetosHome extends StatefulWidget{
  @override 
  ProjetosHomeState createState() => ProjetosHomeState();
}

class ProjetosHomeState extends State<projetosHome>{
  int _selectedButtonIndex = -1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
                icon: Icon(Icons.menu), 
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
              'ODS:',
              style: TextStyle(
                fontFamily: "Inter",
                  fontSize: 24.0,
                  color: Color.fromARGB(255, 61, 20, 10),
                  fontWeight: FontWeight.bold),
            ),
          ),
          SizedBox(height: 2.0),
          Divider(
            color: Colors.grey, 
            thickness: 1.0,
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
              "ODS 1: Erradicação da Pobreza",
              style: TextStyle(
                  fontFamily: "Inter",
                  fontSize: 32.0,
                  color: Color.fromARGB(255, 61, 20, 10),
                  fontWeight: FontWeight.bold),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              InkWell(
                onTap: () {
                  _updateSelectedButton(0);
                },
                child: Container(
                  padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                  child: Text(
                    'Etec',
                    style: TextStyle(
                    fontFamily: "Inter",
                    fontSize: 20.0,
                    color: Color.fromARGB(255, 61, 20, 10),
                    fontWeight: FontWeight.bold),
                  ),
                  decoration: _selectedButtonIndex == 0
                      ? BoxDecoration(
                          border: Border(bottom: BorderSide(color: Color.fromARGB(220, 255, 209, 64), width: 3.0)),
                        )
                      : null,
                ),
              ),
              SizedBox(width: 60),
              InkWell(
                onTap: () {
                  _updateSelectedButton(1);
                },
                child: Container(
                  padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                  child: Text(
                    'Fatec',
                    style: TextStyle(
                    fontFamily: "Inter",
                    fontSize: 20.0,
                    color: Color.fromARGB(255, 61, 20, 10),
                    fontWeight: FontWeight.bold),                    
                  ),
                  decoration: _selectedButtonIndex == 1
                      ? BoxDecoration(
                          border: Border(bottom: BorderSide(color: Color.fromARGB(220, 255, 209, 64), width: 3.0)),
                        )
                      : null,
                ),
              ),
            ],
          ),
          SizedBox(height: 0),
          Divider(
            color: Colors.grey, 
            thickness: 1.0, 
          ),
          SizedBox(height: 10.0),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                for(int i = 1; i < 18; i++)
                  CardWidget2(ods: 1)
              ],
            ),
          ),
        ]),
      ),
    );
  }

  void _updateSelectedButton(int index) {
    setState(() {
      _selectedButtonIndex = index;
    });
  }
}

class CardWidget extends StatelessWidget {
  final int ods;

  CardWidget({required this.ods});

  static cor(int ods){
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

  static List<String> texto(int ods){
    switch(ods){
      case 1:
        return ["ODS 1", "Erradicação da Pobreza"];
      case 2:
        return ["ODS 2", "Fome Zero"];
      case 3: 
        return ["ODS 3", "Saúde e Bem-Estar"];
      case 4:
        return ["ODS 4", "Educação de Qualidade"];
      case 5:
        return ["ODS 5", "Igualdade de Gênero"];
      case 6:
        return ["ODS 6", "Água Potável e..."];
      case 7:
        return ["ODS 7", "Energia Limpa e Acessível"];
      case 8:   
        return ["ODS 8", "Crescimento Ecônomico"];   
      case 9:
        return ["ODS 9", "Indústria e Inovação"];
      case 10:
        return ["ODS 10", "Redução das Desigual..."];
      case 11:
        return ["ODS 11", "Cidades Sustentáveis"];
      case 12:
        return ["ODS 12", "Consumo Responsável"];
      case 13:
        return ["ODS 13", "Ação Contra a Mud..."];
      case 14:
        return ["ODS 14", "Vida na Água"];
      case 15:
        return ["ODS 15", "Vida Terrestre"];
      case 16:
        return ["ODS 16", "Paz, Justiça e..."];
      case 17:
        return ["ODS 17", "Parcerias e Meios..."];
      default:
        return ["Erro", "Erro na busca."];
    }
  }

  @override
  Widget build(BuildContext context) {
    const Alignment _startAlignment = Alignment.topLeft;
    const Alignment _endAlignment = Alignment.centerLeft;

    final intermediateAlignment = Alignment.lerp(
      _startAlignment,
      _endAlignment,
      0.5,
    ) as AlignmentGeometry;
    
    return Padding(
      padding: const EdgeInsets.all(8.0), 
      child: SizedBox(
        height: 180,
        width: 240,
        child: GestureDetector(
            onTap: () {

            },
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
                Padding(
                  padding: EdgeInsets.all(10),
                  child: Align(
                    alignment: Alignment.topLeft,
                    child: Container(
                      padding: EdgeInsets.all(6),
                      decoration: BoxDecoration(
                        color: cor(ods),
                        borderRadius: BorderRadius.circular(8),
                      ),
                      child: Text(
                        texto(ods)[0],
                        style: TextStyle(fontSize: 11, color: Colors.white, fontFamily: "Inter"),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(10.0),
                  child: Align(
                    alignment: intermediateAlignment,
                    child: Text(
                      texto(ods)[1],
                      style: TextStyle(fontSize: 18, color: Colors.black, fontFamily: "Inter"),
                    ),
                  )

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
                        alignment: Alignment.bottomLeft,
                        child: Padding(
                          padding: EdgeInsets.all(10),
                          child: Text(
                            "XX Projetos",
                            style: TextStyle(fontSize: 14, color: Colors.white, fontFamily: "Inter"),
                          ),
                        )
                      ),               
                    )
                  ),
                ),
              ],
            ),
          ),
        ),
      )
    );
  }
}

class CardWidget2 extends StatelessWidget {
  final int ods;

  CardWidget2({required this.ods});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0), 
      child: Card(
        color: CardWidget.cor(ods), 
        shape: RoundedRectangleBorder(
          borderRadius:
              BorderRadius.circular(10.0), 
        ),
        child: SizedBox(
          width: 185.0,
          height: 240.0,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(
                  height: 10.0), 
              Image.asset('img/Rectangle.png'),
              SizedBox(height: 5.0),
              Text(
                'Nome do projeto',
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 14.0,
                    color: const Color.fromARGB(
                        255, 0, 0, 0)), 
              ),
              SizedBox(height: 3.0),
              Text(
                'Participantes',
                style: TextStyle(
                    fontFamily: "Poppins",
                    fontSize: 10.0,
                    color: Color.fromARGB(255, 0, 0, 0)),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

