import 'dart:math';

class LogicaJuego {
  late int _numeroRandom;
  late int _numeroIntentos;
  late int _numeroMin;
  late int _numeroMax;
  final List<int> numerosEncontrados = [];
  final List<int> numerosMenores = [];
  final List<int> numerosMayores = [];
  final List<ResultadoJuego> historial = [];

  void IniciarJuegoNuevo(String dificultad) {
    switch (dificultad) {
      case 'Fácil':
        _numeroIntentos = 5;
        _numeroMin = 1;
        _numeroMax = 10;
        break;
      case 'Medio':
        _numeroIntentos = 8;
        _numeroMin = 1;
        _numeroMax = 20;
        break;
      case 'Avanzado':
        _numeroIntentos = 15;
        _numeroMin = 1;
        _numeroMax = 100;
        break;
      case 'Extremo':
        _numeroIntentos = 25;
        _numeroMin = 1;
        _numeroMax = 1000;
        break;
      default:
        throw Exception('Nivel de dificultad no válido');
    }

    Random random = Random();
    _numeroRandom = random.nextInt(_numeroMax - _numeroMin + 1) + _numeroMin;

    // Limpiar las listas numerosMenores y numerosMayores
    numerosMenores.clear();
    numerosMayores.clear();
  }

  void numeroEncontrar(int numeroEncontrado, String dificultad) {
    validaciones(numeroEncontrado, dificultad);

    _numeroIntentos--;

    numerosEncontrados.add(numeroEncontrado);

    if (numeroEncontrado == _numeroRandom) {
      historial.add(ResultadoJuego(numeroEncontrado, Resultado.win));
      IniciarJuegoNuevo(dificultad);
    } else if (numeroEncontrado < _numeroRandom) {
      numerosMenores.add(numeroEncontrado);
    } else {
      numerosMayores.add(numeroEncontrado);
    }

    if (_numeroIntentos == 0) {
      historial.add(ResultadoJuego(_numeroRandom, Resultado.loss));
      IniciarJuegoNuevo(dificultad);
    }
  }

  void validaciones(int numeroEncontrado, String dificultad) {
    // Obtener los límites del nivel de dificultad
    int minNumber;
    int maxNumber;

    switch (dificultad) {
      case 'Fácil':
        minNumber = 1;
        maxNumber = 10;
        break;
      case 'Medio':
        minNumber = 1;
        maxNumber = 20;
        break;
      case 'Avanzado':
        minNumber = 1;
        maxNumber = 100;
        break;
      case 'Extremo':
        minNumber = 1;
        maxNumber = 1000;
        break;
      default:
        throw Exception('Nivel de dificultad no válido');
    }

    // Validar el número ingresado
    if (numeroEncontrado < minNumber || numeroEncontrado > maxNumber) {
      // Si el número está fuera del rango, muestra un mensaje de error
      throw ('Ingresa un número entre $minNumber y $maxNumber por favor');
    }
  }

  int get intentosRestantes => _numeroIntentos;
}

enum Resultado { win, loss }

class ResultadoJuego {
  final int numero;
  final Resultado resulatdo;

  ResultadoJuego(this.numero, this.resulatdo);
}
