import 'package:flutter/material.dart';

class Instituicoes extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false, 
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
                  icon: Icon(Icons.menu), 
                  onPressed: () {},
                ),
              ],
            ),
            Padding(
              padding: EdgeInsets.all(10.0),
              child: Text(
                'Instituições',
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
                  hintText: 'Pesquise uma Instituição...',
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
                'Etecs',
                style: TextStyle(
                  fontFamily: "Inter",
                    fontSize: 32.0,
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
                  for(int i = 0; i < 6; i++)
                    CardWidget(inst: "etec")
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.all(10.0),
              child: Text(
                'Fatecs',
                style: TextStyle(
                    fontFamily: "Inter",
                    fontSize: 32.0,
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
                  for(int i = 0; i < 6; i++)
                    CardWidget(inst: "fatec")
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
  final String inst;

  CardWidget({required this.inst});

  Color Cor(String inst){
    if (inst == "etec"){
      return Color.fromARGB(220, 69, 46, 172);
    }
    else if(inst == "fatec"){
      return Color.fromARGB(220, 255, 209, 64);
    }
    return Color.fromARGB(255, 255, 255, 255);
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0), 
      child: Card(
        color: Cor(inst), 
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
                'XXXXXXX',
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 18.0,
                    color: const Color.fromARGB(
                        255, 255, 255, 255)), 
              ),
              SizedBox(height: 3.0),
              Text(
                'xxxxxxx',
                style: TextStyle(
                    fontFamily: "Poppins",
                    fontSize: 14.0,
                    color: Color.fromARGB(255, 158, 156, 156)), 
              ),
            ],
          ),
        ),
      ),
    );
  }
}

