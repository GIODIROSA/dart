//funciones y párametros
// diferentes formas de enviar y utilizar valores
void main() {
  final mostrarConsola = greetEveryOne();
  print('Mostrar = $mostrarConsola');

  final twoNumbersView = addTwoNumbers(3, 5);
  print('Suma: $twoNumbersView');

  final theereNumbersView = addThreeNumbers(10, 20);
  print('Suma flecha : $theereNumbersView');

  final thereNumbersOpcional = addThreeNumbersOptional(20);
  print('Suma Opcional: $thereNumbersOpcional');
}

// function flecha
String greetEveryOne() => 'Hello everyone!';
int addTwoNumbers(int a, int b) {
  return a + b;
}

int addThreeNumbers(int a, int b) => a + b;

int addThreeNumbersOptional(int a, [int b = 0]) {
  // b = b ?? 0; // comprueba que b es un numero y ademas es un valor
  // shortcut b ??= 0;
  int sumaOpcional = a + b;
  return sumaOpcional;
}
