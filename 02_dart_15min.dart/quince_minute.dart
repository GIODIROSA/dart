class Robot {
  String nombre;

  //constructor
  Robot(this.nombre);

  //Metodo 'sayIt'
  void sayIt(String mensaje) {
    print('$nombre dice: "$mensaje"');
  }
}

var example5method = "example5 sayIt";

class Example5Class {
  sayIt() {
    print(example5method);
  }
}

class Example6Class {
  var instanceVariable = "Example6 variable de instancia";
  sayIt() {
    print(instanceVariable);
  }
}

void main() {
  // funciones anidadas
  // funciones flecha gorda - expresiones en una sola linea
  example() {
    nested1() {
      nested2() => print("Example1 anidado 1 anidado 2");
      nested2();
    }

    ;
    nested1();
  }

  example();

  // Las funciones anónimas no incluyen un nombre.
  example2() {
    nested1(fn) {
      fn();
    }

    nested1(() => print("example2 anidado 1"));
  }

  example2();

  // Cuando se declara un parámetro de función, la declaración puede incluir el
  // número de parámetros que toma la función especificando los nombres de los
  // parámetros que lleva.

  example3() {
    planA(fn(Something)) {
      fn("example3 plan A");
    }

    planB(fn) {
      fn("example3 plan B");
    }

    planA((s) => print(s));
    planB((s) => print(s));
  }

  example3();

  // Las funciones tienen acceso de cierre a variables externas.
  String example4Something = "Example4 anidado 1";
  example4() {
    nested1(fn(infomSomething)) {
      fn(example4Something);
    }

    nested1((s) => print(s));
  }

  example4();

  // La declaración de la clase con un método sayIt, el cual también tiene acceso de cierre
  // a la variable exterior como si fuera una función como se ha visto antes

  var miRobot = Robot('C-3PO');
  miRobot.sayIt("Hola mundo, soy un Robot");

  example5() {
    // Crear una instancia anónima de Example5Class y la llamada del método sayIt
    new Example5Class().sayIt();
  }

  example5();

  example6() {
    new Example6Class().sayIt();
  }

  example6();

  // end programer
}
