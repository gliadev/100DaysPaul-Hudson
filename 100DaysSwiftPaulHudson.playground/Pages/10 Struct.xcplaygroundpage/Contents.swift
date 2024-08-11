import Foundation

// MARK: - Definición básica de un struct

struct Album {
    let title: String
    let artist: String
    let year: Int

    func printSummary() {
        print("\(title) (\(year)) by \(artist)")
    }
}

// Creación de instancias de structs
let red = Album(title: "Red", artist: "Taylor Swift", year: 2012)
let wings = Album(title: "Wings", artist: "BTS", year: 2016)

// Acceso a propiedades y métodos
print(red.title)             // Output: Red
print(wings.artist)          // Output: BTS
red.printSummary()           // Output: Red (2012) by Taylor Swift
wings.printSummary()         // Output: Wings (2016) by BTS

// MARK: - Definición de un struct con mutabilidad

struct Employee {
    let name: String
    var vacationRemaining: Int

    mutating func takeVacation(days: Int) {
        if vacationRemaining > days {
            vacationRemaining -= days
            print("I'm going on vacation!")
        } else {
            print("Oops! There aren't enough days remaining.")
        }
    }
}

// Creación y modificación de un struct mutable
var archer = Employee(name: "Sterling Archer", vacationRemaining: 14)
archer.takeVacation(days: 5)  // Output: I'm going on vacation!
print(archer.vacationRemaining)  // Output: 9

// MARK: - Definición de una estructura Employee2 con propiedades almacenadas

struct Employee2 {
    let name: String
    var vacationRemaining: Int
}

// Crear una instancia de Employee2 y modificar una propiedad almacenada
var archerEmployee2 = Employee2(name: "Sterling Archer", vacationRemaining: 14)
archerEmployee2.vacationRemaining -= 5  // Reducimos los días de vacaciones restantes
print(archerEmployee2.vacationRemaining)  // Output: 9

// MARK: - Definición de una estructura Employee con propiedad calculada

struct EmployeeWithComputedProperty {
    let name: String
    var vacationAllocated = 14  // Días de vacaciones asignados
    var vacationTaken = 0  // Días de vacaciones tomados

    // Propiedad calculada que devuelve los días de vacaciones restantes
    var vacationRemaining: Int {
        vacationAllocated - vacationTaken
    }
}

// Crear una instancia de EmployeeWithComputedProperty y usar la propiedad calculada
var archerComputed = EmployeeWithComputedProperty(name: "Sterling Archer", vacationAllocated: 14)
archerComputed.vacationTaken += 4  // Tomamos 4 días de vacaciones
print(archerComputed.vacationRemaining)  // Output: 10

// MARK: - Definición de una estructura Employee con getter y setter

struct EmployeeWithGetterSetter {
    let name: String
    var vacationAllocated = 14  // Días de vacaciones asignados
    var vacationTaken = 0  // Días de vacaciones tomados

    // Propiedad calculada con getter y setter
    var vacationRemaining: Int {
        get {
            vacationAllocated - vacationTaken  // Calcula los días restantes
        }

        set {
            vacationAllocated = vacationTaken + newValue  // Ajusta los días asignados basado en los días restantes que se asignan
        }
    }
}

// Crear una instancia de EmployeeWithGetterSetter y usar el getter y setter de la propiedad calculada
var archerSetter = EmployeeWithGetterSetter(name: "Sterling Archer", vacationAllocated: 14)
archerSetter.vacationTaken += 4  // Tomamos 4 días de vacaciones
print(archerSetter.vacationRemaining)  // Output: 10

archerSetter.vacationRemaining = 5  // Ajustamos los días restantes a 5
print(archerSetter.vacationAllocated)  // Output: 9 (vacationAllocated se ajusta según el setter)

// MARK: - Ejemplo práctico de propiedades calculadas: calcular el área de un rectángulo

struct Rectangle {
    var width: Double
    var height: Double

    // Propiedad calculada que devuelve el área del rectángulo
    var area: Double {
        width * height
    }
}

let rect = Rectangle(width: 10, height: 5)
print(rect.area)  // Output: 50

// MARK: - Observadores de propiedades en una estructura Game

struct Game {
    var score = 0 {
        didSet {
            print("Score is now \(score)") // Se imprime el nuevo valor de score
        }
    }
}

var game = Game()
game.score += 10  // Incrementa el score y ejecuta didSet
game.score -= 3   // Decrementa el score y ejecuta didSet
game.score += 1   // Incrementa el score y ejecuta didSet

// MARK: - Observadores de propiedades en una estructura App

struct App {
    var contacts = [String]() {
        willSet {
            print("Current value is: \(contacts)")    // Imprime el valor actual
            print("New value will be: \(newValue)")   // Imprime el nuevo valor
        }

        didSet {
            print("There are now \(contacts.count) contacts.")  // Imprime el número de contactos
            print("Old value was \(oldValue)")  // Imprime el valor anterior
        }
    }
}

var app = App()
app.contacts.append("Adrian E")  // Añade un contacto y ejecuta willSet y didSet
app.contacts.append("Allen W")   // Añade otro contacto y ejecuta willSet y didSet
app.contacts.append("Ish S")     // Añade otro contacto y ejecuta willSet y didSet

// MARK: - Inicializadores personalizados

struct Player {
    let name: String
    let number: Int

    // Inicializador personalizado que asigna un número aleatorio
    init(name: String) {
        self.name = name
        number = Int.random(in: 1...99)
    }
}

let player = Player(name: "Megan R")
print(player.number) // Imprime un número aleatorio

// MARK: - Extensiones e inicializadores personalizados

struct Employee3 {
    var name: String
    var yearsActive = 0
}

extension Employee3 {
    init() {
        self.name = "Anonymous"
        print("Creating an anonymous employee…")
    }
}

let roslin = Employee3(name: "Laura Roslin")
let anon = Employee3()

