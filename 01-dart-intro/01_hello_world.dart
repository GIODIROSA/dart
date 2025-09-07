void main() {
  for (int i = 0; i < 5; i++) {
    print("hello ${i + 1}");
  }

  // var myName = "Fernando";
  // String myName = "Giovanni";
  // es una constante - final -
  //final myName = "Dino";
  // asignación inicialización tardía.
  // late final myName;
  // myName = "Dante";
  // final se asigna en tiempo ejecución vs
  // const se asigna en tiempo de construcción
  const myLastName = "Di Rosa";

  String myName = "Fernando";
  myName = "Mundo";

  // Interpolación de String
  print("Hola ${myName} - ${myLastName}");

  // otra forma de interpolar
  print("Hola $myName");
  print("Hola $myLastName");
  // Para aplicar metodos internos para la interpolación
  print("Hola ${myLastName.toLowerCase()}");
  // Expresiones - matemáticas interpoladas
  print("Suma ${3 + 2}");


}
