
import Foundation


// Función que imprime las tablas de multiplicar para un número dado, con un valor predeterminado para el parámetro 'fin'
func imprimirTablasDeMultiplicar(para numero: Int, hasta fin: Int = 12) {
    for i in 1...fin {
        print("\(i) x \(numero) es \(i * numero)") // Imprime la tabla de multiplicar
    }
}

// Llamadas a la función imprimirTablasDeMultiplicar
imprimirTablasDeMultiplicar(para: 5, hasta: 20) // Imprime la tabla de multiplicar hasta 20
imprimirTablasDeMultiplicar(para: 8) // Imprime la tabla de multiplicar hasta 12 (valor predeterminado)

// Uso de valores predeterminados en Swift
var personajes = ["Lana", "Pam", "Ray", "Sterling"]
print(personajes.count) // Imprime 4, el número de elementos en el array

// Elimina todos los elementos del array y libera la capacidad
personajes.removeAll()
print(personajes.count) // Imprime 0, ya que todos los elementos han sido eliminados

// Elimina todos los elementos del array pero mantiene la capacidad para mejorar el rendimiento en futuras inserciones
personajes.removeAll(keepingCapacity: true)

// Función con parámetros predeterminados para encontrar direcciones
func encontrarDirecciones(desde: String, hacia: String, ruta: String = "más rápida", evitarAutopistas: Bool = false) {
    // código aquí
}

// Llamadas a la función encontrarDirecciones
encontrarDirecciones(desde: "Londres", hacia: "Glasgow") // Usa valores predeterminados
encontrarDirecciones(desde: "Londres", hacia: "Glasgow", ruta: "escénica") // Modifica la ruta
encontrarDirecciones(desde: "Londres", hacia: "Glasgow", ruta: "escénica", evitarAutopistas: true) // Modifica la ruta y evita autopistas


// Manejar Errores
// Definición de posibles errores usando una enumeración que hereda de Error
enum ErrorDeContraseña: Error {
    case corta, obvia // Errores posibles
}

// Función que verifica la fortaleza de una contraseña y lanza errores si es necesario
func verificarContraseña(_ contraseña: String) throws -> String {
    if contraseña.count < 5 {
        throw ErrorDeContraseña.corta // Lanza un error si la contraseña es muy corta
    }

    if contraseña == "12345" {
        throw ErrorDeContraseña.obvia // Lanza un error si la contraseña es obvia
    }

    if contraseña.count < 8 {
        return "OK" // Devuelve "OK" si la contraseña tiene menos de 8 caracteres
    } else if contraseña.count < 10 {
        return "Buena" // Devuelve "Buena" si la contraseña tiene menos de 10 caracteres
    } else {
        return "Excelente" // Devuelve "Excelente" para contraseñas de 10 o más caracteres
    }
}

// Uso de do, try y catch para manejar posibles errores al verificar una contraseña
let contraseña = "12345"

do {
    let resultado = try verificarContraseña(contraseña)
    print("Calificación de la contraseña: \(resultado)") // Imprime la calificación si no hay errores
} catch ErrorDeContraseña.corta {
    print("Por favor, usa una contraseña más larga.") // Maneja el error de contraseña corta
} catch ErrorDeContraseña.obvia {
    print("¡Tengo la misma combinación en mi maleta!") // Maneja el error de contraseña obvia
} catch {
    print("Ocurrió un error.") // Maneja cualquier otro error
}

// Ejemplo de función que lanza errores y manejo de errores en Swift
func encontrarDirecciones(desde: String, hacia: String, ruta: String = "más rápida", evitarAutopistas: Bool = false) throws {
    // código aquí
}

do {
    try encontrarDirecciones(desde: "Londres", hacia: "Glasgow")
} catch {
    print("Ocurrió un error al encontrar las direcciones.")
}
