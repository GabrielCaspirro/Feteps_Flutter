import 'package:flutter/material.dart';

class tela_palestrante extends StatelessWidget {
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
                  'Nome do palestrante',
                  style: TextStyle(
                    fontSize: 24.0,
                    fontWeight: FontWeight.bold,
                    color: Color.fromARGB(255, 14, 56, 70),
                    fontFamily: "Inter",
                  ),
                ),
              ),
              Container(
                padding: EdgeInsets.all(20.0),
                child: Icon(Icons.person, size: 90.0),
              ),
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Text(
                  'Título da palestra',
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
              Padding(
                padding: EdgeInsets.all(20),
                child: Text(
                  "Outros Palestrantes",
                  style: TextStyle(
                    fontSize: 16.0,
                    color: Color.fromARGB(255, 14, 56, 70),
                    fontFamily: "Inter",
                  ),
                ), 
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    for(int i = 1; i < 18; i++)
                      CardWidget()
                  ],
                ),
              ),
            ],
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
      padding: const EdgeInsets.all(8.0), 
      child: Card(
        color: Color.fromARGB(255, 179, 0, 0),
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
                'Nome do palestrante',
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 14.0,
                    color: const Color.fromARGB(
                        255, 0, 0, 0)),
              ),
              SizedBox(height: 3.0),
              Text(
                'Descrição',
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