import Foundation


// Uso de las anotaciones de tipo en Swift

// Inferencia de tipo
let surname = "Lasso" // Inferido como String
var score = 0 // Inferido como Int

// Anotaciones de tipo explícitas
let surnameExplicit: String = "Lasso"
var scoreExplicit: Int = 0

// Ejemplos con diferentes tipos de datos
let playerName: String = "Roy" // String
var luckyNumber: Int = 13 // Int
let pi: Double = 3.141 // Double
var isAuthenticated: Bool = true // Bool
var albums: [String] = ["Red", "Fearless"] // Array de Strings
var user: [String: String] = ["id": "@twostraws"] // Dictionary
var books: Set<String> = Set(["The Bluest Eye", "Foundation", "Girl, Woman, Other"]) // Set

// Creación de colecciones vacías
var teams: [String] = [String]() // Array vacío
var cities: [String] = [] // Array vacío preferido
var clues = [String]() // Array vacío usando inferencia

// Enumeraciones (enums)
enum UIStyle {
    case light, dark, system
}
var style = UIStyle.light // Uso de enum

// Uso de anotaciones de tipo
let username: String
// lógica compleja
username = "@twostraws" // Asignación posterior
// más lógica
print(username)

// Regla de oro
// Swift debe conocer los tipos de datos de constantes y variables

// Ejemplo de código inválido
// let score: Int = "Zero" // Error: no se puede convertir "Zero" a Int



// Resumen: Datos Complejos en Swift

// Arrays: almacenar muchos valores en un solo lugar usando índices enteros.
var nombres: [String] = ["Juan", "Pedro", "Ana"]
nombres.append("Laura")
print(nombres.count) // 4

// Dictionaries: almacenar valores usando claves especificadas.
var edades: [String: Int] = ["Juan": 30, "Pedro": 25]
print(edades["Juan"]!) // 30
print(edades.count) // 2

// Sets: almacenar valores sin un orden específico, eficientes para encontrar elementos.
var colores: Set<String> = ["Rojo", "Verde", "Azul"]
colores.insert("Amarillo")
print(colores.contains("Verde")) // true

// Enums: crear tipos simples personalizados en Swift.
enum Accion {
    case correr, saltar, caminar
}
var accionActual = Accion.correr
accionActual = .saltar

// Tipos de Datos en Swift
let nombre: String = "Laura"
var edad: Int = 25

// Uso de Arrays, Dictionaries y Sets
// - Los arrays se usan con mucha más frecuencia.
// - Luego vienen los diccionarios.
// - Los sets son menos comunes, pero útiles en ciertos casos.
