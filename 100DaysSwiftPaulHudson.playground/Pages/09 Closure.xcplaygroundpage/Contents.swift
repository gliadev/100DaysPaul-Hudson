

import Foundation

// Closure simple que imprime un mensaje
let decirHola = {
    print("¡Hola!")
}

// Llamada al closure
decirHola() // Imprime "¡Hola!"

// Closure que acepta un parámetro y devuelve un valor
let saludar = { (nombre: String) -> String in
    return "Hola, \(nombre)!"
}

// Llamada al closure con parámetro
print(saludar("Taylor")) // Imprime "Hola, Taylor!"

// Función que acepta un parámetro y devuelve un valor
func obtenerDatosUsuario(para id: Int) -> String {
    return id == 1989 ? "Taylor Swift" : "Anónimo"
}

// Asignar la función a una variable de tipo closure
let obtenerDatos: (Int) -> String = obtenerDatosUsuario
print(obtenerDatos(1989)) // Imprime "Taylor Swift"

// Closure utilizado como parámetro en una función
let equipo = ["Gloria", "Suzanne", "Piper", "Tiffany", "Tasha"]

func ordenarCapitanPrimero(nombre1: String, nombre2: String) -> Bool {
    if nombre1 == "Suzanne" { return true }
    if nombre2 == "Suzanne" { return false }
    return nombre1 < nombre2
}

let equipoOrdenado = equipo.sorted(by: ordenarCapitanPrimero)
print(equipoOrdenado) // Imprime ["Suzanne", "Gloria", "Piper", "Tasha", "Tiffany"]

// Closure anónimo pasado como parámetro
let equipoOrdenadoAnonimo = equipo.sorted(by: { (nombre1: String, nombre2: String) -> Bool in
    if nombre1 == "Suzanne" { return true }
    if nombre2 == "Suzanne" { return false }
    return nombre1 < nombre2
})
print(equipoOrdenadoAnonimo) // Imprime ["Suzanne", "Gloria", "Piper", "Tasha", "Tiffany"]

// Closure sin parámetros que devuelve un valor
let pago = { () -> Bool in
    print("Pagando a una persona anónima…")
    return true
}

// Llamada al closure sin parámetros
print(pago()) // Imprime "Pagando a una persona anónima…" y devuelve true



// Ejemplo de trailing closure
let equipo = ["Gloria", "Suzanne", "Piper", "Tiffany", "Tasha"]

let equipoCapitanPrimero = equipo.sorted { nombre1, nombre2 in
    if nombre1 == "Suzanne" {
        return true
    } else if nombre2 == "Suzanne" {
        return false
    }
    return nombre1 < nombre2
}

print(equipoCapitanPrimero) // Imprime ["Suzanne", "Gloria", "Piper", "Tasha", "Tiffany"]

// Ejemplo de sintaxis abreviada
let equipoCapitanPrimeroAbreviado = equipo.sorted {
    if $0 == "Suzanne" {
        return true
    } else if $1 == "Suzanne" {
        return false
    }
    return $0 < $1
}

print(equipoCapitanPrimeroAbreviado) // Imprime ["Suzanne", "Gloria", "Piper", "Tasha", "Tiffany"]

// Uso de filter() con trailing closure
let nombresConT = equipo.filter { $0.hasPrefix("T") }
print(nombresConT) // Imprime ["Tiffany", "Tasha"]

// Uso de map() con trailing closure
let equipoMayusculas = equipo.map { $0.uppercased() }
print(equipoMayusculas) // Imprime ["GLORIA", "SUZANNE", "PIPER", "TIFFANY", "TASHA"]

// Ejemplo de animación con trailing closure
func animar(duracion: Double, animaciones: () -> Void) {
    print("Iniciando una animación de \(duracion) segundos...")
    animaciones()
}

// Llamada a la función con trailing closure
animar(duracion: 3) {
    print("Desvanecer la imagen")
}



// funciones con parametros
func hacerTrabajoImportante(primero: () -> Void, segundo: () -> Void, tercero: () -> Void) {
    print("A punto de empezar el primer trabajo")
    primero()
    print("A punto de empezar el segundo trabajo")
    segundo()
    print("A punto de empezar el tercer trabajo")
    tercero()
    print("¡Hecho!")
}

hacerTrabajoImportante {
    print("Este es el primer trabajo")
} segundo: {
    print("Este es el segundo trabajo")
} tercero: {
    print("Este es el tercer trabajo")
}

// Copiar funciones en Swift
func saludarUsuario() {
    print("¡Hola!")
}

var copiaSaludo: () -> Void = saludarUsuario
copiaSaludo() // Imprime "¡Hola!"

// Crear closures directamente
let decirHola = {
    print("¡Hola!")
}

decirHola() // Imprime "¡Hola!"

// Closure con parámetros y valores de retorno
let saludar = { (nombre: String) -> String in
    return "Hola, \(nombre)!"
}

print(saludar("Taylor")) // Imprime "Hola, Taylor!"

// Función que acepta otra función como parámetro
func crearArray(tamaño: Int, usando generador: () -> Int) -> [Int] {
    var números = [Int]()
    
    for _ in 0..<tamaño {
        let nuevoNúmero = generador()
        números.append(nuevoNúmero)
    }
    
    return números
}

let resultados = crearArray(tamaño: 5) {
    Int.random(in: 1...10)
}

print(resultados) // Imprime un array de números aleatorios

// Uso de trailing closure
let equipo = ["Gloria", "Suzanne", "Piper", "Tiffany", "Tasha"]

let equipoOrdenado = equipo.sorted { $0 < $1 }
print(equipoOrdenado) // Imprime el equipo ordenado alfabéticamente

// Uso de nombres de parámetros abreviados
let equipoConT = equipo.filter { $0.hasPrefix("T") }
print(equipoConT) // Imprime ["Tiffany", "Tasha"]
