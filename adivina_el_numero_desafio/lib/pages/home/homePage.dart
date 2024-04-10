import 'package:adivina_el_numero_desafio/navegation/animations/slideToSide.dart';
import 'package:adivina_el_numero_desafio/pages/game/gamePage.dart';
import 'package:flutter/material.dart';

class homePage extends StatefulWidget {
  const homePage({super.key});

  @override
  State<homePage> createState() => _homePageState();
}

class _homePageState extends State<homePage> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Color.fromARGB(255, 0, 0, 0),
        body: Center(
          child: BreathingButton(),
        ),
      ),
    );
  }
}

class BreathingButton extends StatefulWidget {
  @override
  _BreathingButtonState createState() => _BreathingButtonState();
}

class _BreathingButtonState extends State<BreathingButton>
    with SingleTickerProviderStateMixin {
  late AnimationController _animationController;

  @override
  void initState() {
    super.initState();
    _animationController = AnimationController(
      vsync: this,
      duration: Duration(milliseconds: 1000),
      reverseDuration: Duration(milliseconds: 1000),
    );
    _animationController.repeat(reverse: true);
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: _animationController,
      builder: (context, child) {
        return Transform.scale(
          scale: 1.0 + _animationController.value * 0.1,
          child: child,
        );
      },
      child: Container(
        height: MediaQuery.of(context).size.height * 0.18,
        width: MediaQuery.of(context).size.width * 0.4,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(100),
          boxShadow: const [
            BoxShadow(
              color: Color.fromARGB(110, 172, 0, 224),
              spreadRadius: 6,
              blurRadius: 9,
              offset: Offset(0, 0.5),
            ),
          ],
        ),
        child: ElevatedButton(
          onPressed: () {
            Navigator.push(
              context,
              crearRuta(context, gamePage()),
            );
          },
          style: ElevatedButton.styleFrom(
            backgroundColor: Color(0xFF9F26C4),
          ),
          child: Text(
            'Iniciar',
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: MediaQuery.of(context).size.width * 0.07,
              fontWeight: FontWeight.bold,
              fontFamily: 'QuickSand',
              color: Color.fromARGB(255, 255, 255, 255),
            ),
          ),
        ),
      ),
    );
  }

  @override
  void dispose() {
    _animationController.dispose();
    super.dispose();
  }
}
