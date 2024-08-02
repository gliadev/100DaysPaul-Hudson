

import Foundation

var greeting = "Hello, playground"

// bucles
// Array de plataformas
let plataformas = ["iOS", "macOS", "tvOS", "watchOS"]

// Bucle que itera sobre cada elemento en el array plataformas
for os in plataformas {
    // Imprime un mensaje para cada plataforma
    print("Swift funciona genial en \(os).")
}

// Bucle que itera de 1 a 12
for i in 1...12 {
    // Imprime la tabla del 5
    print("5 x \(i) es \(5 * i)")
}

// Bucles anidados para imprimir tablas de multiplicar del 1 al 12
for i in 1...12 {
    print("Tabla del \(i):")

    // Bucle interno para iterar de 1 a 12
    for j in 1...12 {
        // Imprime el resultado de la multiplicación
        print("  \(j) x \(i) es \(j * i)")
    }

    // Imprime una nueva línea para separar las tablas
    print()
}

// Uso de rangos inclusivos y exclusivos
for i in 1...5 {
    print("Contando de 1 a 5: \(i)")
}

print() // Imprime una nueva línea

for i in 1..<5 {
    print("Contando de 1 a 5 sin incluir el 5: \(i)")
}

// Uso de _ para variables de bucle no utilizadas
var letra = "Haters gonna"

for _ in 1...5 {
    letra += " hate"
}

print(letra) // Imprime la letra de la canción


let names = ["Stealing", "Cyril", "Lana", "Ray", "Pam", "Patata"]

for name in names {
    print("\(name) in a secret agent")
}

// la diferencia es que imprimo tantas veces como nombres tenga
// pero no muestro ningun elemento del array
for _ in names{
    print("[CENSORED] is a secret agent!!")
}

// bucle con filtro
var numbers = [1, 2, 3, 4, 5, 6]
for number in numbers {
    if number.isMultiple(of: 2) {
        print(number)
    }
}

for number in [2, 3, 5] {
    print("\(number) is a prime number.")
}

let score = 100
for count in 10..<13 {
    print("I'm counting to \(count)")
}


// bucle for y while


// Si llegamos aquí, significa que el bucle terminó – ¡obtenemos un 20!
print("¡Golpe crítico!")

// Bucle while básico con cuenta regresiva
var cuentaRegresiva = 10

// El bucle se ejecuta mientras la condición sea verdadera
while cuentaRegresiva > 0 {
    // Imprimir el valor actual de cuentaRegresiva
    print("\(cuentaRegresiva)…")
    // Disminuir el valor de cuentaRegresiva
    cuentaRegresiva -= 1
}

// Imprimir un mensaje final cuando el bucle termine
print("¡Despegue!")

// Bucle while con valores aleatorios
// Crear un entero para almacenar el lanzamiento
var lanzamiento = 0

// Continuar el bucle hasta obtener un 20
while lanzamiento != 20 {
    // Lanzar un nuevo dado y mostrar el resultado
    lanzamiento = Int.random(in: 1...20)
    print("Lancé un \(lanzamiento)")
}

// Si llegamos aquí, significa que el bucle terminó – ¡obtenemos un 20!
print("¡Golpe crítico!")

// Ejemplo práctico de uso del bucle while
var lanzamientos = 0
var anteriorLanzamiento = -1

// Continuar el bucle hasta lanzar 10 dados no consecutivos duplicados
while lanzamientos < 10 {
    let nuevoLanzamiento = Int.random(in: 1...6)
    print("Lancé un \(nuevoLanzamiento)")

    // Verificar si el lanzamiento es el mismo que el anterior
    if nuevoLanzamiento == anteriorLanzamiento {
        print("¡Duplicado! Lanzando de nuevo...")
    } else {
        lanzamientos += 1
        anteriorLanzamiento = nuevoLanzamiento
    }
}


var cats: Int = 0
while cats < 10 {
    cats += 1
    print("I'm getting another cat.")
    if cats == 4 {
        print("Enough cats!")
        cats = 10
    }
}

var itemsSold: Int = 0
while itemsSold < 5000 {
    itemsSold += 100
    if itemsSold.isMultiple(of: 10000) {
        print("\(itemsSold) items sold - a big milestone!")
    }
}


// Uso de continue en bucles
let nombresArchivos = ["me.jpg", "work.txt", "sophie.jpg", "logo.psd"]

for nombreArchivo in nombresArchivos {
    // Si el nombre del archivo no termina en ".jpg", salta al siguiente archivo
    if !nombreArchivo.hasSuffix(".jpg") {
        continue
    }
    // Imprime los nombres de archivos que terminan en ".jpg"
    print("Encontrada imagen: \(nombreArchivo)")
}

// Uso de break en bucles
let numero1 = 4
let numero2 = 14
var multiplos = [Int]()

for i in 1...100_000 {
    // Si i es múltiplo de ambos números, se añade a la lista de múltiplos
    if i.isMultiple(of: numero1) && i.isMultiple(of: numero2) {
        multiplos.append(i)
        // Si se han encontrado 10 múltiplos, el bucle termina
        if multiplos.count == 10 {
            break
        }
    }
}

// Imprime los primeros 10 múltiplos comunes
print(multiplos)

// Ejemplo de break para contar puntuaciones antes de obtener un 0
let puntuaciones = [1, 8, 4, 3, 0, 5, 2]
var cuenta = 0

for puntuacion in puntuaciones {
    // Si se encuentra un 0, el bucle termina
    if puntuacion == 0 {
        break
    }
    // Incrementa el contador de puntuaciones
    cuenta += 1
}

// Imprime el número de puntuaciones antes de obtener un 0
print("Conseguiste \(cuenta) puntuaciones antes de obtener un 0.")

// Uso de declaraciones etiquetadas para salir de bucles anidados
let opciones = ["arriba", "abajo", "izquierda", "derecha"]
let combinacionSecreta = ["arriba", "arriba", "derecha"]

// Etiqueta del bucle externo
busqueda: for opcion1 in opciones {
    for opcion2 in opciones {
        for opcion3 in opciones {
            let intento = [opcion1, opcion2, opcion3]
            // Si se encuentra la combinación secreta, sale de todos los bucles
            if intento == combinacionSecreta {
                print("¡La combinación es \(intento)!")
                break busqueda
            }
        }
    }
}
