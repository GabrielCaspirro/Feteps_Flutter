import 'package:flutter/material.dart';

class FetepsWidgetTela2 extends StatefulWidget {
  const FetepsWidgetTela2({
    Key? key,
    this.feteps,
  }) : super(key: key);

  final String? feteps; 

  @override
  State<FetepsWidgetTela2> createState() => _FetepsWidgetState();
}

class _FetepsWidgetState extends State<FetepsWidgetTela2> {
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
              Align(
                alignment: Alignment.center,
                child: Column(
                  children: [
                    Text(
                      'Programação: ',
                      style: TextStyle(
                        fontFamily: 'Inter',
                        fontSize: 16,
                        color: Color.fromARGB(255, 14, 56, 70),
                      ),
                    ),
                    Align(
                      alignment: Alignment.center,
                      child: Image.asset(
                        'img/img1.jpeg',
                        width: 200,
                      )
                    ),
                  ]
                )
              )
            ],
          ),
        ),
      ),
    );
  }
}
