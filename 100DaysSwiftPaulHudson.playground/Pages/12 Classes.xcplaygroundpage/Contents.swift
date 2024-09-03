import Foundation

// MARK: - Clase básica Game con observador de cambios
class Game {
    var score = 0 { // Propiedad con observador de cambios
        didSet {
            print("Score is now \(score)") // Muestra el nuevo valor del score
        }
    }
}

// Crear una instancia de la clase Game
var newGame = Game()
newGame.score += 10 // Incrementa el score en 10


// MARK: - HERENCIA

// Clase base Worker
class Worker {
    let hours: Int

    init(hours: Int) {
        self.hours = hours
    }

    func printSummary() {
        print("I work \(hours) hours a day.")
    }
}

// Clase Developer que hereda de Worker
class Developer: Worker {
    func work() {
        print("I'm writing code for \(hours) hours.")
    }

    override func printSummary() {
        print("I'm a developer who works \(hours) hours, but often debates tabs vs spaces.")
    }
}

// Clase Manager que hereda de Worker
class Manager: Worker {
    func work() {
        print("I'm going to meetings for \(hours) hours.")
    }
}

// Ejemplos de uso
let developerRobert = Developer(hours: 8)
let managerJoseph = Manager(hours: 10)

developerRobert.work()          // Output: I'm writing code for 8 hours.
managerJoseph.work()          // Output: I'm going to meetings for 10 hours.

developerRobert.printSummary()  // Output: I'm a developer who works 8 hours, but often debates tabs vs spaces.


// MARK: - INICIALIZADORES PARA CLASES

class Vehicle {
    let isElectric: Bool

    init(isElectric: Bool) {
        self.isElectric = isElectric
    }
}

// Clase Car que hereda de Vehicle
class Car: Vehicle {
    let isConvertible: Bool

    init(isElectric: Bool, isConvertible: Bool) {
        self.isConvertible = isConvertible
        super.init(isElectric: isElectric)
    }
}

// Crear una instancia de Car
let teslaX = Car(isElectric: true, isConvertible: false)


// MARK: - Copias de Clases y Desinicializadores

// Clase básica UserProfile con una propiedad
class UserProfile {
    var username = "Anonymous"
}

// Creamos una instancia de UserProfile
var userProfile1 = UserProfile()
// Copiamos la referencia a la instancia existente
var userProfile2 = userProfile1
// Cambiamos el nombre de usuario en la copia
userProfile2.username = "Taylor"

// Ambas instancias muestran "Taylor" porque comparten la misma referencia
print(userProfile1.username)  // Output: Taylor
print(userProfile2.username)  // Output: Taylor

// Crear una copia profunda de una clase
class UserProfileWithCopy {
    var username = "Anonymous"

    // Método para crear una copia profunda
    func copy() -> UserProfileWithCopy {
        let user = UserProfileWithCopy()
        user.username = username
        return user
    }
}

// Crear una instancia y una copia profunda
var userProfileCopy1 = UserProfileWithCopy()
var userProfileCopy2 = userProfileCopy1.copy()
// Cambiamos el nombre de usuario en la copia profunda
userProfileCopy2.username = "Taylor"

// Ahora, las instancias tienen nombres de usuario diferentes
print(userProfileCopy1.username)  // Output: Anonymous
print(userProfileCopy2.username)  // Output: Taylor


// Definición de una clase UserSession con inicializador y desinicializador
class UserSession {
    let id: Int

    // Inicializador que se llama al crear la instancia
    init(id: Int) {
        self.id = id
        print("UserSession \(id): I'm alive!")
    }

    // Desinicializador que se llama al destruir la última referencia a la instancia
    deinit {
        print("UserSession \(id): I'm dead!")
    }
}

// Crear y destruir instancias rápidamente usando un bucle
for j in 1...3 {
    let userSession = UserSession(id: j)
    print("UserSession \(userSession.id): I'm in control!")
}

// Almacenar las instancias en un array para retrasar su destrucción
var userSessions = [UserSession]()

for j in 1...3 {
    let userSession = UserSession(id: j)
    print("UserSession \(userSession.id): I'm in control!")
    userSessions.append(userSession)
}

print("Loop is finished!")
// Eliminar todas las instancias del array, lo que desencadena el desinicializador
userSessions.removeAll()
print("Array is clear!")


// Clase User con una propiedad variable
class User {
    var name = "Paul"
}

// Instancia constante de la clase User
let constantUser = User()
// Aunque la instancia es constante, su propiedad variable puede cambiar
constantUser.name = "Taylor"
print(constantUser.name)  // Output: Taylor

// Instancia variable de la clase User
var variableUser = User()
// La propiedad puede cambiar
variableUser.name = "Taylor"
// La instancia completa puede cambiar a una nueva instancia
variableUser = User()
print(variableUser.name)  // Output: Paul

// Estructura User con una propiedad variable
struct UserStruct {
    var name = "Paul"
}

// Instancia constante de la estructura UserStruct
let constantUserStruct = UserStruct()
// Intentar cambiar una propiedad dentro de una estructura constante produce un error
// constantUserStruct.name = "Taylor"  // Error: No se puede cambiar una propiedad en una estructura constante

