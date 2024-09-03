
/*
 Ahora que entiendes cómo funcionan las clases, y, lo que es igualmente importante,
 cómo se diferencian de las estructuras, es hora de abordar un pequeño desafío para verificar tu progreso.

 **Tu desafío es el siguiente:**
 Crea una jerarquía de clases para animales, comenzando con `Animal` en la parte superior,
 luego `Dog` y `Cat` como subclases, luego `Corgi` y `Poodle` como subclases de `Dog`,
 y `Persian` y `Lion` como subclases de `Cat`.

 **Requisitos:**
 - La clase `Animal` debe tener una propiedad `legs` de tipo entero que rastree cuántas patas tiene el animal.
 
 - La clase `Dog` debe tener un método `speak()` que imprima una cadena genérica de ladridos de perro, pero cada una de las subclases debe imprimir algo ligeramente diferente.
 
 - La clase `Cat` debe tener un método `speak()` correspondiente, nuevamente con cada subclase imprimiendo algo diferente.
 
 - La clase `Cat` debe tener una propiedad booleana `isTame`, proporcionada a través de un inicializador.

 Te proporcionaré algunas pistas en un momento, pero primero te recomiendo que lo intentes por ti mismo.

 **Pistas:**
 - Necesitarás siete clases independientes, de las cuales solo una no tiene clase padre.
 - Para hacer que una clase herede de otra, escríbelo así: `class SomeClass: OtherClass`.
 - Puedes hacer que las subclases tengan un método `speak()` diferente al de su clase padre
   utilizando la palabra clave `override`.
 - Todas nuestras subclases tienen cuatro patas, pero aún necesitas asegurarte de pasar esos datos
   a la clase `Animal` dentro del inicializador de `Cat`.
 */

import Foundation

// Clase base para todos los animales
class Animal {
    var legs: Int
    
    init(legs: Int) {
        self.legs = legs
    }
}

// Clase Dog que hereda de Animal
class Dog: Animal {
    func speak() {
        print("Woof!")
    }
}

// Subclase de Dog: Corgi
class Corgi: Dog {
    override func speak() {
        print("Corgi: Woof woof!")
    }
}

// Subclase de Dog: Poodle
class Poodle: Dog {
    override func speak() {
        print("Poodle: Yip yip!")
    }
}

// Clase Cat que hereda de Animal
class Cat: Animal {
    var isTame: Bool
    
    init(legs: Int, isTame: Bool) {
        self.isTame = isTame
        super.init(legs: legs)
    }
    
    func speak() {
        print("Meow!")
    }
}

// Subclase de Cat: Persian
class Persian: Cat {
    override func speak() {
        print("Persian: Purr purr!")
    }
}

// Subclase de Cat: Lion
class Lion: Cat {
    override func speak() {
        print("Lion: Roar!")
    }
}

// Ejemplos de uso:
let corgi = Corgi(legs: 4)
corgi.speak()  // Imprime: "Corgi: Woof woof!"

let poodle = Poodle(legs: 4)
poodle.speak()  // Imprime: "Poodle: Yip yip!"

let persian = Persian(legs: 4, isTame: true)
persian.speak()  // Imprime: "Persian: Purr purr!"

let lion = Lion(legs: 4, isTame: false)
lion.speak()  // Imprime: "Lion: Roar!"





