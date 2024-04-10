import 'package:flutter/material.dart';

class gamePage extends StatefulWidget {
  const gamePage({super.key});

  @override
  State<gamePage> createState() => _gamePageState();
}

class _gamePageState extends State<gamePage> {
  //Variables
  String dropdownValue = 'Fácil';
  Color containerColor = Colors.green;
  Color textColor = Colors.green;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Builder(
          builder: (context) => SingleChildScrollView(
            child: Column(
              children: [
                Container(
                  color: Color.fromARGB(255, 255, 255, 255),
                  height: MediaQuery.of(context).size.height * 1,
                  width: MediaQuery.of(context).size.width * 1,
                  child: Column(
                    children: [
                      headerContent(),
                      gameTopContent(),
                      gameMiddleContent(),
                      gameBottomContent(),
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }

  headerContent() {
    return Container(
      height: MediaQuery.of(context).size.height * 0.12,
      width: MediaQuery.of(context).size.width * 1,
      padding: EdgeInsets.only(
        top: MediaQuery.of(context).size.height * 0.065,
        left: MediaQuery.of(context).size.height * 0.015,
      ),
      decoration: BoxDecoration(
        color: const Color.fromARGB(255, 255, 255, 255),
        boxShadow: [
          BoxShadow(
            color: const Color.fromARGB(255, 0, 0, 0).withOpacity(0.1),
            spreadRadius: 1,
            blurRadius: 5,
            offset: const Offset(0, 1),
          ),
        ],
      ),
      child: Text(
        'Adivina el Número',
        textAlign: TextAlign.center,
        style: TextStyle(
          fontFamily: 'QuickSand-Bold',
          fontSize: MediaQuery.of(context).size.width * 0.06,
          color: const Color(0xFF9F26C4),
        ),
      ),
    );
  }

  gameTopContent() {
    return Container(
      margin: EdgeInsets.only(
        top: MediaQuery.of(context).size.height * 0.03,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Container(
            height: MediaQuery.of(context).size.height * 0.07,
            width: MediaQuery.of(context).size.width * 0.55,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: Colors.grey[200],
            ),
            padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
            child: TextField(
              style: TextStyle(
                fontSize: MediaQuery.of(context).size.width * 0.04,
                fontFamily: 'QuickSand',
                fontWeight: FontWeight.bold,
              ),
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                hintText: 'Ingrese el número',
                border: InputBorder.none,
                icon: Icon(Icons.numbers_rounded),
              ),
            ),
          ),
          Container(
            height: MediaQuery.of(context).size.height * 0.07,
            width: MediaQuery.of(context).size.width * 0.3,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: Colors.grey[200],
            ),
            child: Column(
              children: [
                Text(
                  'Intentos:',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: MediaQuery.of(context).size.width * 0.04,
                    fontWeight: FontWeight.bold,
                    fontFamily: 'QuickSand',
                    color: Color.fromARGB(255, 95, 95, 95),
                  ),
                ),
                Text(
                  '8',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: MediaQuery.of(context).size.width * 0.05,
                    fontWeight: FontWeight.bold,
                    fontFamily: 'QuickSand',
                    color: Color.fromARGB(255, 0, 0, 0),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }

  gameMiddleContent() {
    return Container(
      height: MediaQuery.of(context).size.height * 0.45,
      width: MediaQuery.of(context).size.width * 1,
      margin: EdgeInsets.only(
        top: MediaQuery.of(context).size.height * 0.03,
      ),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                height: MediaQuery.of(context).size.height * 0.3,
                width: MediaQuery.of(context).size.width * 0.42,
                decoration: BoxDecoration(
                    color: Colors.grey[200],
                    borderRadius: BorderRadius.circular(25),
                    border: Border.all(
                        width: 2, color: Color.fromARGB(255, 95, 95, 95))),
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      Text(
                        'Mayor que',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontFamily: 'QuickSand-Bold',
                          fontSize: MediaQuery.of(context).size.width * 0.06,
                          color: const Color.fromARGB(255, 95, 95, 95),
                        ),
                      ),
                      Text(
                        '8',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontFamily: 'QuickSand-Bold',
                          fontSize: MediaQuery.of(context).size.width * 0.06,
                          color: const Color(0xFF9F26C4),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Container(
                height: MediaQuery.of(context).size.height * 0.3,
                width: MediaQuery.of(context).size.width * 0.42,
                decoration: BoxDecoration(
                    color: Colors.grey[200],
                    borderRadius: BorderRadius.circular(25),
                    border: Border.all(
                        width: 2, color: Color.fromARGB(255, 95, 95, 95))),
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      Text(
                        'Menor que',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontFamily: 'QuickSand-Bold',
                          fontSize: MediaQuery.of(context).size.width * 0.06,
                          color: const Color.fromARGB(255, 95, 95, 95),
                        ),
                      ),
                      Text(
                        '8',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontFamily: 'QuickSand-Bold',
                          fontSize: MediaQuery.of(context).size.width * 0.06,
                          color: const Color(0xFF9F26C4),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
          SizedBox(
            height: MediaQuery.of(context).size.width * 0.05,
          ),
          Container(
            height: MediaQuery.of(context).size.height * 0.11,
            width: MediaQuery.of(context).size.width * 0.894,
            decoration: BoxDecoration(
                color: Colors.grey[200],
                borderRadius: BorderRadius.circular(25),
                border: Border.all(
                    width: 2, color: Color.fromARGB(255, 95, 95, 95))),
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Column(
                children: [
                  Container(
                    width: MediaQuery.of(context).size.width * 0.82,
                    margin: EdgeInsets.only(
                      left: MediaQuery.of(context).size.height * 0.01,
                    ),
                    child: Text(
                      'Historial',
                      textAlign: TextAlign.left,
                      style: TextStyle(
                        fontFamily: 'QuickSand-Bold',
                        fontSize: MediaQuery.of(context).size.width * 0.06,
                        color: const Color.fromARGB(255, 95, 95, 95),
                      ),
                    ),
                  ),
                  Row(
                    children: [
                      Container(
                        width: MediaQuery.of(context).size.width * 0.82,
                        margin: EdgeInsets.only(
                          left: MediaQuery.of(context).size.height * 0.01,
                        ),
                        child: Text(
                          '8',
                          textAlign: TextAlign.left,
                          style: TextStyle(
                            fontFamily: 'QuickSand-Bold',
                            fontSize: MediaQuery.of(context).size.width * 0.06,
                            color: const Color(0xFF9F26C4),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  gameBottomContent() {
    return Container(
      height: MediaQuery.of(context).size.height * 0.2,
      width: MediaQuery.of(context).size.width * 1,
      padding: EdgeInsets.all(20.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            'Selecciona la dificultad:',
            style: TextStyle(
              fontSize: MediaQuery.of(context).size.width * 0.045,
              color: const Color.fromARGB(255, 0, 0, 0),
            ),
          ),
          SizedBox(height: 10),
          Container(
            height: MediaQuery.of(context).size.height * 0.07,
            width: MediaQuery.of(context).size.width * 0.35,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                border: Border.all(color: containerColor, width: 2)),
            padding: EdgeInsets.symmetric(horizontal: 16),
            child: DropdownButton<String>(
              value: dropdownValue,
              icon: Icon(
                Icons.arrow_drop_down,
                color: containerColor,
              ),
              iconSize: 24,
              elevation: 16,
              style: TextStyle(
                color: Colors.black, // Color de texto predeterminado
              ),
              underline: Container(
                height: 0,
                color: Colors.transparent,
              ),
              onChanged: (String? newValue) {
                setState(() {
                  dropdownValue = newValue!;
                  // Cambiar el color del contenedor según la opción seleccionada
                  switch (dropdownValue) {
                    case 'Fácil':
                      containerColor = Colors.green;
                      break;
                    case 'Medio':
                      containerColor = Colors.yellow;
                      break;
                    case 'Avanzado':
                      containerColor = Colors.orange;
                      break;
                    case 'Extremo':
                      containerColor = Colors.red;
                      break;
                  }
                });
              },
              items: <String>['Fácil', 'Medio', 'Avanzado', 'Extremo']
                  .map<DropdownMenuItem<String>>((String value) {
                Color itemColor = Colors.black; // Color de texto predeterminado
                switch (value) {
                  case 'Fácil':
                    itemColor = Colors.green;
                    break;
                  case 'Medio':
                    itemColor = Colors.yellow;
                    break;
                  case 'Avanzado':
                    itemColor = Colors.orange;
                    break;
                  case 'Extremo':
                    itemColor = Colors.red;
                    break;
                }
                return DropdownMenuItem<String>(
                  value: value,
                  child: Text(
                    value,
                    style: TextStyle(color: itemColor),
                  ),
                );
              }).toList(),
            ),
          ),
        ],
      ),
    );
  }
}
