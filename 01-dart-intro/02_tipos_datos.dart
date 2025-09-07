void main() {
  final String pokemon = "Ditto";
  final int hp = 100;
  final bool isAlive = true;

  // puede tener 3 valores: null , true, false \\ null-safe
  //bool? isAlive;

  // Dos formas de tipas el dato
  final abilities = <String>['impostor'];
  final List<String> sprites = ['ditto/front.png', 'ditto/background.png'];

  // tiempo de ejecución
  final String variableFinal = "En tiempo de ejecución";
  final int variableNumero = 1954;

  // tiempo de compilacion
  const String constante = "En tiempo de compilación";
  const int constanteNumero = 1987;

  //dynamic type
  //un tipo de datos que debemos aprender a dónde usarlo y dónde no

  

  // String multi variable
  print("""
  $pokemon
  $hp
  $isAlive
  $abilities
  $sprites
  $variableFinal
  $variableNumero
  $constante
  $constanteNumero

  """);
}
