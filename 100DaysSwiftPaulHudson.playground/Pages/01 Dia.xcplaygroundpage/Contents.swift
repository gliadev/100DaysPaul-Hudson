//: [Previous](@previous)

import Foundation

// Crear números decimales
let numero1 = 3.1
let numero2 = 3131.3131
let numero3 = 3.0

// Crear enteros
let entero1 = 3

// Ejemplo de problemas con decimales
let numeroProblema = 0.1 + 0.2
print(numeroProblema)  // Imprime: 0.30000000000000004

// Seguridad de tipos: conversión explícita
let a = 1
let b = 2.0
let c1 = a + Int(b)  // Convirtiendo `Double` a `Int`
let c2 = Double(a) + b  // Convirtiendo `Int` a `Double`

// Operadores y asignaciones compuestas
var calificacion = 5.0
calificacion *= 2
print(calificacion)  // Imprime: 10.0

// Uso de CGFloat
import CoreGraphics
let cgFloatValue: CGFloat = 5.5
let doubleValue: Double = 5.5
let result: CGFloat = CGFloat(doubleValue) + cgFloatValue
print(result)  // Imprime: 11.0

// Funcionalidad útil: verificar múltiplos
let numero = 120

print(120.isMultiple(of: 3))  // Imprime: true


// Enteros

// Crear una constante de puntuación
let puntuacion = 10

// Crear una constante de número grande usando guiones bajos
let numeroGrande = 100_000_000

// Operaciones aritméticas
let puntuacionBaja = puntuacion - 2
let puntuacionAlta = puntuacion + 10
let puntuacionDoble = puntuacion * 2
let puntuacionCuadrada = puntuacion * puntuacion
let puntuacionMitad = puntuacion / 2
print(puntuacion)

// Operadores de asignación compuesta
var contador = 10
contador += 5
print(contador)  // Imprime: 15

contador *= 2
print(contador)  // Imprime: 30

contador -= 10
print(contador)  // Imprime: 20

contador /= 2
print(contador)  // Imprime: 10

// Funcionalidades útiles
//let numero = 120
print(numero.isMultiple(of: 3))  // Imprime: true

print(120.isMultiple(of: 3))  // Imprime: true


// String


let actor = "Denzel Washington"
//
//let actor = "Denzel Washington"


let filename = "paris.jpg"
/*let result = "⭐️ You win! ⭐️"*/

let quote = "Then he tapped a sign saying \"Believe\" and walked away."



let movie = "A day in the life of an Apple engineer"

//
//let movie = """
//A day in
//the life of an
//Apple engineer
//"""


print(actor.count)


let nameLength = actor.count
print(nameLength)


//print(result.uppercased())




print(movie.hasPrefix("A day"))

print(filename.hasSuffix(".jpg"))


// variables y constantes
var name = "Ted"
name = "Rebeca"
name = "Keeley"

let character = "Hola"

print(name)
print(character)

var playName = "Roy"
print(playName)

playName = "patata"
print(playName)

playName = "Sam"
print(playName)


let managerName = "Michael Scott"
let dogBreed = "Samoyed"
let meaningOfLife = "How many roads must a man walk down?"

