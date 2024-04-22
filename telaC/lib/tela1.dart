import 'package:flutter/material.dart';

class FetepsWidget extends StatefulWidget {
  const FetepsWidget({
    Key? key,
    this.feteps,
  }) : super(key: key);

  final String? feteps; 

  @override
  State<FetepsWidget> createState() => _FetepsWidgetState();
}

class _FetepsWidgetState extends State<FetepsWidget> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        print('Widget pressionado');
      },
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Colors.white,
          automaticallyImplyLeading: false,
          title: Padding(
            padding: const EdgeInsets.only(right: 20),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(8),
              child: Image.asset(
                "img/logofeteps.png", 
                width: 250,
              ),
            ),
          ),
          actions: [
            Padding(
              padding: const EdgeInsets.only(right: 10),
              child: Icon(
                Icons.menu_rounded,
                color: Color(0xFF0E414F),
                size: 45,
              ),
            ),
          ],
          centerTitle: true,
          elevation: 2,
        ),
        body: SafeArea(
          top: true,
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(0),
                child: Image.asset(
                  'img/img3.jpeg', 
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height*0.25,
                  fit: BoxFit.cover,
                ),
              ),
              SizedBox(height: 2),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Padding(
                    padding: EdgeInsets.all(1),
                    child: TextButton(
                      onPressed: () {  },
                      child: Text(
                        'Feteps',
                        style: TextStyle(
                          fontFamily: 'Inter',
                          color: Colors.black,
                          fontSize: 16,
                          letterSpacing: 0,
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.all(1),
                    child: TextButton(
                      onPressed: () {  },
                      child: Text(
                        'Programação',
                        style: TextStyle(
                          fontFamily: 'Inter',
                          fontSize: 16,
                          color: Colors.black,
                          letterSpacing: 0,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 4),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 35, vertical: 1),
                child: Text(
                  'A Feteps é um evento que reúne projetos desenvolvidos por alunos do Centro Paula Souza e outras instituições participantes. Com projetos inovadores, de transformação social,  tecnológicos e criativos. A diversidade e a qualidade dos trabalhos demonstram a excelência dos projetos pedagógicos do ensino médio, cursos técnicos de nível médio e superior tecnológico. A Feteps tem como objetivo desenvolver a visão empreendedora, criativa, inovadora e científico-tecnológica dos alunos.',
                  style: TextStyle(
                    fontSize: 16,
                    fontFamily: 'Poppins',
                    letterSpacing: 0.5,
                    height: 1.3,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
              SizedBox(height: 4),
              TextButton(
                onPressed: () {
                  print('Button pressed ...');
                },
                child: Text(
                  'Saiba mais',
                  style: TextStyle(
                    fontFamily: 'Inter',
                    fontSize: 18,
                    color: Color(0xFFB6382B),
                    decoration: TextDecoration.underline,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
