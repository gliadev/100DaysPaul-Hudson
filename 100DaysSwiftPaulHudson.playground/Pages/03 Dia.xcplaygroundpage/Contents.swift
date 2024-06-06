
import Foundation

// Ejemplo de uso de arrays en Swift

// 1. Crear arrays
var beatles = ["John", "Paul", "George", "Ringo"]  // Array de cadenas
let numbers = [4, 8, 15, 16, 23, 42]  // Array de enteros
var temperatures = [25.3, 28.2, 26.4]  // Array de decimales

// 2. Leer valores de un array
print(beatles[0])  // Imprime: "John"
print(numbers[1])  // Imprime: 8
print(temperatures[2])  // Imprime: 26.4

// 3. Modificar un array variable
beatles.append("Adrian")  // Agrega "Adrian" al final del array
beatles.append("Allen")
beatles.append("Novall")
beatles.append("Vivian")
print(beatles)

// 4. Seguridad de tipos en arrays
// temperatures.append("Chris")  // Esto no está permitido ya que "Chris" no es un Double

// 5. Crear un array vacío y agregar elementos
var scores = [Int]()  // Array vacío de enteros
scores.append(100)
scores.append(80)
scores.append(85)
print(scores[1])  // Imprime: 80

// 6. Otras funcionalidades de arrays

// Contar elementos
var albums = ["Folklore", "Fearless", "Red"]
print(albums.count)  // Imprime: 3

// Eliminar elementos
var characters = ["Lana", "Pam", "Ray", "Sterling"]
print(characters.count)  // Imprime: 4
characters.remove(at: 2)
print(characters.count)  // Imprime: 3
characters.removeAll()
print(characters.count)  // Imprime: 0

// Verificar contenido
let bondMovies = ["Casino Royale", "Spectre", "No Time To Die"]
print(bondMovies.contains("Frozen"))  // Imprime: false

// Ordenar elementos
let cities = ["London", "Tokyo", "Rome", "Budapest"]
print(cities.sorted())  // Imprime: ["Budapest", "London", "Rome", "Tokyo"]

// Revertir orden
let presidents = ["Bush", "Obama", "Trump", "Biden"]
let reversedPresidents = presidents.reversed()
print(reversedPresidents)  // Imprime: ["Biden", "Trump", "Obama", "Bush"]


// Ejemplo de uso de diccionarios en Swift

// 1. Crear y leer diccionarios
let employee2 = [
    "name": "Taylor Swift",
    "job": "Singer",
    "location": "Nashville"
]

// Leer valores del diccionario
print(employee2["name", default: "Unknown"])  // Imprime: Taylor Swift
print(employee2["job", default: "Unknown"])  // Imprime: Singer
print(employee2["location", default: "Unknown"])  // Imprime: Nashville

// 2. Uso de diferentes tipos de datos en diccionarios
let hasGraduated = [
    "Eric": false,
    "Maeve": true,
    "Otis": false
]
let olympics = [
    2012: "London",
    2016: "Rio de Janeiro",
    2021: "Tokyo"
]
print(olympics[2012, default: "Unknown"])  // Imprime: London

// 3. Crear un diccionario vacío y agregar elementos
var heights = [String: Int]()
heights["Yao Ming"] = 229
heights["Shaquille O'Neal"] = 216
heights["LeBron James"] = 206
print(heights)

// 4. Modificar valores en un diccionario
var archEnemies = [String: String]()
archEnemies["Batman"] = "The Joker"
archEnemies["Superman"] = "Lex Luthor"
archEnemies["Batman"] = "Penguin"
print(archEnemies)

// 5. Funcionalidades útiles de diccionarios
print(archEnemies.count)  // Imprime: 2
archEnemies.removeAll()
print(archEnemies.count)  // Imprime: 0





// Ejemplo de uso de sets en Swift

// 1. Crear un set con nombres de actores
let people = Set(["Denzel Washington", "Tom Cruise", "Nicolas Cage", "Samuel L Jackson"])

// Imprimir el set para ver el orden de los elementos
print(people)  // El orden puede variar

// 2. Crear un set vacío y agregar elementos individualmente
var morePeople = Set<String>()
morePeople.insert("Denzel Washington")
morePeople.insert("Tom Cruise")
morePeople.insert("Nicolas Cage")
morePeople.insert("Samuel L Jackson")

// Verificar si el set contiene un elemento específico
print(morePeople.contains("Tom Cruise"))  // Imprime: true

// Contar los elementos en el set
print(morePeople.count)  // Imprime: 4

// Ordenar los elementos del set y convertirlo en un array
let sortedPeople = morePeople.sorted()
print(sortedPeople)  // Imprime: ["Denzel Washington", "Nicolas Cage", "Samuel L Jackson", "Tom Cruise"]

// Comparar la eficiencia de búsqueda entre sets y arrays
let movieNamesArray = Array(repeating: "The Dark Knight", count: 1000)
let movieNamesSet: Set = ["The Dark Knight"]

// Uso de contains() en un array
print(movieNamesArray.contains("The Dark Knight"))  // Puede tomar más tiempo

// Uso de contains() en un set
print(movieNamesSet.contains("The Dark Knight"))  // Ejecuta casi instantáneamente



// Ejemplo de uso de enums en Swift

// 1. Definir un enum para los días de la semana
enum Weekday {
    case monday, tuesday, wednesday, thursday, friday
}

// 2. Usar el enum en lugar de cadenas
var day = Weekday.monday  // Asignar un valor al enum
day = .tuesday  // Cambiar el valor del enum
day = .friday  // Cambiar el valor del enum nuevamente

print(day)  // Imprime: friday (el valor actual del enum)

// 3. Otro ejemplo de uso de enums
enum Direction {
    case north, south, east, west
}

var direction = Direction.north  // Asignar un valor al enum
direction = .south  // Cambiar el valor del enum

print(direction)  // Imprime: south (el valor actual del enum)

// 4. Beneficio de la seguridad de los enums
// Swift no permitirá asignar un valor no válido al enum
// direction = .northeast  // Error: no existe un caso "northeast" en el enum Direction

// 5. Usar enums con otros tipos de datos
enum Weather {
    case sunny, cloudy, rainy, snowy
}

var currentWeather = Weather.sunny  // Asignar un valor al enum
currentWeather = .rainy  // Cambiar el valor del enum

print(currentWeather)  // Imprime: rainy (el valor actual del enum)
