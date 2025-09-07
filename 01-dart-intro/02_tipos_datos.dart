void main() {
  final String pokemon = "Ditto";
  final int hp = 100;
  final bool isAlive = true;

  // puede tener 3 valores: null , true, false \\ null-safe
  //bool? isAlive;

  // Dos formas de tipas el dato
  //final abilities = <String>['impostor'];
  //final List<String> sprites = ['ditto/front.png', 'ditto/background.png'];

  // tiempo de ejecución
  final String variableFinal = "En tiempo de ejecución";
  final int variableNumero = 1954;

  // tiempo de compilacion
  const String constante = "En tiempo de compilación";
  const int constanteNumero = 1987;

  //dynamic type == null acepta nulo
  //un tipo de datos que debemos aprender a dónde usarlo y dónde no

  dynamic errorMessage = 'Hola'; //null por default
  errorMessage = true;
  errorMessage = [1, 2, 3, 4, 5];
  errorMessage = {1, 2, 3, 4, 5};
  errorMessage = () => true;
  errorMessage = null;

  //debería haber un error pero lo permite
  //errorMessage += 1;

  //Maps
  final Map<String, dynamic> pokemons = {
    'name': 'Ditto',
    'hp': 100,
    'isAlive': true,
    'abilities': <String>['impostor'],
    'sprites': {1: 'ditto/front.png', 2: 'ditto/back.png'},
  };

  final pokemons2 = {1: 'Abc', 2: 'xyz', 3: 123};

  print('Name: ${pokemons['name']}');
  print('Name: ${pokemons['sprites']}');

  //final sprites = pokemons['sprites'];
  //final frontSprite = sprites[1];
  //final backSprite = sprites[2];

  print('Front Sprites: ${pokemons['sprites'][1]}');
  print('Back Sprites: ${pokemons['sprites'][2]}');

  // Estructuras de colecciones
  // Lists, Maps, Iterables, Sets

  final numbers = [1, 2, 3, 4, 5, 5, 5, 6, 7, 8, 9, 9, 9, 10];
  print('Listado original: $numbers');
  print('Length: ${numbers.length}');
  print('Index 0: ${numbers[0]}');
  print('First ${numbers.first}');
  print('Reverse: ${numbers.reversed}');

  final reversedNumbers = numbers.reversed;
  print('Iterable: $reversedNumbers');
  print('List: ${reversedNumbers.toList()}');
  print('Set: ${reversedNumbers.toSet()}');

  final numberGreaterThan5 = numbers.where((num) {
    return num > 5;
  });

  print('>5 =>: ${numberGreaterThan5.toSet()}');

  // String multi variable
  print("""
  $pokemon
  $hp
  $isAlive
  $variableFinal
  $variableNumero
  $constante
  $constanteNumero
  $errorMessage
  ******
  $pokemons
  ******
  $pokemons2
  """);
}
