
import Foundation


struct Car {
    let model: String
    let numberOfSeats: Int
    
    private var _currentGear: Int = 1
    
    var currentGear: Int {
        get {
            return _currentGear
        }
        set {
            if newValue < 1 {
                _currentGear = 1
                print("No puedes tener una marcha menor a 1.")
            } else if newValue > 10 {
                _currentGear = 10
                print("No puedes tener una marcha mayor a 10.")
            } else {
                _currentGear = newValue
            }
        }
    }
    
    // Inicializador
    init(model: String, numberOfSeats: Int, currentGear: Int = 1) {
        self.model = model
        self.numberOfSeats = numberOfSeats
        self.currentGear = currentGear
    }
    
    // Método para cambiar las marchas
    mutating func shiftGear(up: Bool) {
        if up {
            currentGear += 1
        } else {
            currentGear -= 1
        }
    }
}

var myCar = Car(model: "Tesla Model S", numberOfSeats: 5)

// Imprimimos el valor inicial de la marcha
print("Marcha inicial: \(myCar.currentGear)") // Debería imprimir 1

// Subimos una marcha
myCar.shiftGear(up: true)
print("Marcha después de subir: \(myCar.currentGear)") // Debería imprimir 2

// Bajamos una marcha
myCar.shiftGear(up: false)
print("Marcha después de bajar: \(myCar.currentGear)") // Debería imprimir 1

// Intentamos bajar más allá del límite inferior
myCar.shiftGear(up: false) // Debería imprimir "No puedes tener una marcha menor a 1."
print("Marcha después de intentar bajar por debajo de 1: \(myCar.currentGear)") // Debería imprimir 1

// Subimos hasta la marcha más alta
for _ in 1...10 {
    myCar.shiftGear(up: true)
}
print("Marcha después de subir hasta el máximo: \(myCar.currentGear)") // Debería imprimir 10

// Intentamos subir más allá del límite superior
myCar.shiftGear(up: true) // Debería imprimir "No puedes tener una marcha mayor a 10."
print("Marcha después de intentar subir por encima de 10: \(myCar.currentGear)") // Debería imprimir 10

