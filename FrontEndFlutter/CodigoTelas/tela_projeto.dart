import 'package:flutter/material.dart';

class tela_projeto extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
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
              Container(
                alignment: Alignment.center,
                child: Text(
                  'ODS 2: Fome Zero',
                  style: TextStyle(
                    fontSize: 24.0,
                    fontWeight: FontWeight.bold,
                    color: Color.fromARGB(220, 255, 209, 64),
                    fontFamily: "Inter",
                  ),
                ),
              ),
              Container(
                padding: EdgeInsets.all(20.0),
                child: Image.asset(
                  'img/Rectangle.png',
                  width: 150,
                  height: 150,
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Text(
                  'Nome do Projeto',
                  style: TextStyle(
                    fontSize: 20.0,
                    fontWeight: FontWeight.bold,
                    color: Color.fromARGB(255, 14, 56, 70),
                    fontFamily: "Inter",
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Text(
                  'Resumo',
                  style: TextStyle(
                    fontSize: 16.0,
                    fontWeight: FontWeight.bold,
                    color: Color.fromARGB(255, 61, 20, 10),
                    fontFamily: "Inter",
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Text(
                  'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed ut eros nec mi sodales ultrices. Integer vitae pulvinar nulla. Cras nec justo sed orci ultrices congue ac sit amet arcu. Mauris nec est vitae justo pharetra gravida. In ac justo at ligula dignissim hendrerit. Vestibulum convallis enim nec aliquet sollicitudin.',
                  style: TextStyle(
                    fontSize: 14.0,
                    color: Color.fromARGB(255, 14, 56, 70),
                    fontFamily: "Inter",
                  ),
                ),
              ),
              Divider(
                color: Colors.black,
                height: 20,
                thickness: 2,
                indent: 20,
                endIndent: 20,
              ),
              Padding(
                padding: EdgeInsets.all(20),
                child: Text(
                  "Integrantes",
                  style: TextStyle(
                    fontSize: 16.0,
                    color: Color.fromARGB(255, 14, 56, 70),
                    fontFamily: "Inter",
                  ),
                ), 
              ),
              Wrap(
                spacing: 20.0, 
                runSpacing: 20.0, 
                alignment: WrapAlignment.spaceAround,
                children: [
                  for (int i = 1; i <= 5; i++) iconPerson(i: i),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class iconPerson extends StatelessWidget {
  final int i;

  iconPerson({required this.i});

  String text(i) {
    if (i < 5) {
      return " Participante $i ";
    } else {
      return " Orientador ";
    }
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Icon(
          Icons.person,
          size: 42.0,
        ),
        Text(
          text(i),
          style: TextStyle(
            fontSize: 14.0,
            color: Color.fromARGB(255, 14, 56, 70),
            fontFamily: "Inter",
          ),
        )
      ],
    );
  }
}