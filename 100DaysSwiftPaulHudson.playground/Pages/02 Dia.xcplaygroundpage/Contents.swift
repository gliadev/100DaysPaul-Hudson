//: [Previous](@previous)

import Foundation

// Ejemplo de uso de Booleanos en Swift

// 1. Creando Booleanos básicos
let goodDogs = true  // Declaramos un booleano con valor true
let gameOver = false  // Declaramos un booleano con valor false

// 2. Asignando valor a un Booleano desde otro código
let isMultiple = 120.isMultiple(of: 3)  // Verificamos si 120 es múltiplo de 3 y asignamos el resultado (true) a isMultiple
print(isMultiple)  // Imprime: true

// 3. Uso del operador "!" (not) para invertir el valor de un Booleano
var isAuthenticated = false  // Declaramos un booleano con valor false
isAuthenticated = !isAuthenticated  // Invertimos el valor de isAuthenticated (false -> true)
print(isAuthenticated)  // Imprime: true
isAuthenticated = !isAuthenticated  // Invertimos el valor nuevamente (true -> false)
print(isAuthenticated)  // Imprime: false

// 4. Uso del método toggle() para invertir el valor de un Booleano
var gameOver2 = false  // Declaramos un booleano con valor false
print(gameOver2)  // Imprime: false

gameOver2.toggle()  // Invertimos el valor de gameOver (false -> true)
print(gameOver2)  // Imprime: true

gameOver2.toggle()  // Invertimos nuevamente el valor de gameOver (true -> false)
print(gameOver2)  // Imprime: false

// Ejemplos adicionales mencionados en el texto:

// Verificando si una cadena tiene un sufijo específico
let filename = "paris.jpg"
print(filename.hasSuffix(".jpg"))  // Imprime: true, ya que filename termina con ".jpg"

// Verificando si un número es múltiplo de otro
let number3 = 120
print(number3.isMultiple(of: 3))  // Imprime: true, ya que 120 es múltiplo de 3


// Ejemplo de uso de unión de cadenas y interpolación en Swift

// 1. Usando + para unir cadenas
let firstPart = "Hello, "  // Primera parte de la cadena
let secondPart = "world!"  // Segunda parte de la cadena
let greetingMessage = firstPart + secondPart  // Unimos las dos cadenas
print(greetingMessage)  // Imprime: "Hello, world!"

// 2. Usando + varias veces para unir cadenas
let people = "Haters"
let action = "hate"
let lyric = people + " gonna " + action
print(lyric)  // Imprime: "Haters gonna hate"

// 3. Problema con unir muchas cadenas usando +
let luggageCode = "1" + "2" + "3" + "4" + "5"
print(luggageCode)  // Imprime: "12345"

// 4. Usando interpolación de cadenas
let name2 = "Taylor"
let age2 = 26
let message = "Hello, my name is \(name2) and I'm \(age2) years old."
print(message)  // Imprime: "Hello, my name is Taylor and I'm 26 years old."

// 5. Problema con usar + para unir enteros y cadenas
let number = 11
// let missionMessage = "Apollo " + number + " landed on the moon."  // Esto no está permitido
let missionMessage = "Apollo " + String(number) + " landed on the moon."  // Convierte el número a cadena
print(missionMessage)  // Imprime: "Apollo 11 landed on the moon."

// 6. Usando interpolación de cadenas para incluir enteros
let missionMessageInterpolated = "Apollo \(number) landed on the moon."
print(missionMessageInterpolated)  // Imprime: "Apollo 11 landed on the moon."

// 7. Incluyendo cálculos dentro de la interpolación de cadenas
print("5 x 5 is \(5 * 5)")  // Imprime: "5 x 5 is 25"


// Ejemplo de uso de datos simples en Swift

// 1. Constantes y Variables
let constantValue = "Este valor no cambia"  // Constante
var variableValue = "Este valor puede cambiar"  // Variable

// 2. Cadenas (Strings)
let shortString = "Hola, mundo!"
let emojiString = "Swift es genial 🚀"
let multiLineString = """
Este es un
ejemplo de cadena
en varias líneas.
"""
print(shortString.count)  // Imprime: número de caracteres en la cadena
print(shortString.uppercased())  // Imprime: "HOLA, MUNDO!"

// 3. Números Enteros (Integers)
let positiveNumber = 42
let negativeNumber = -7
print(positiveNumber.isMultiple(of: 7))  // Imprime: true

// 4. Números Decimales (Double)
let decimalNumber: Double = 3.14159
let largeDecimal: Double = 1.0e10
// Nota: No usar Double para cálculos que requieran precisión absoluta

// 5. Operadores Aritméticos
var number2 = 10
number2 += 5  // Equivalente a number2 = number2 + 5
print(number2)  // Imprime: 15

// 6. Booleanos
var isSwiftAwesome = true
isSwiftAwesome.toggle()  // Invierte el valor de true a false
print(isSwiftAwesome)  // Imprime: false

// 7. Interpolación de Cadenas
let name3 = "Paul"
let age3 = 30
let greeting = "Hola, me llamo \(name3) y tengo \(age3) años."
print(greeting)  // Imprime: "Hola, me llamo Paul y tengo 30 años."
