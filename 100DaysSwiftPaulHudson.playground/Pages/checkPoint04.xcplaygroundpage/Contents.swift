import Foundation

/*
 El desafío es el siguiente: escribe una función que acepte un entero del 1 al 10.000, y devuelva la raíz cuadrada entera de ese número. Eso suena fácil, pero hay algunas trampas:

 You can’t use Swift’s built-in sqrt() function or similar – you need to find the square root yourself.
 Si el número es menor que 1 o superior a 10.000, debería lanzar un error de "fuera de los límites".
 Solo debes considerar las raíces cuadradas enteras; no te preocupes por que la raíz cuadrada de 3 sea 1,732, por ejemplo.
 Si no puedes encontrar la raíz cuadrada, lanza un error de "sin raíz".
 */

import Foundation

// Definición de los posibles errores que podríamos encontrar
enum ErrorRaizCuadrada: Error {
    case fueraDeLimites
    case sinRaiz
}

func calcularRaizCuadrada(numero: Int) throws -> Int {
    // Primero, verificamos si el número está dentro de los límites permitidos (1 a 10,000)
    if numero < 1 || numero > 10000 {
        throw ErrorRaizCuadrada.fueraDeLimites
    }
    
    // Aquí vamos a calcular la raíz cuadrada entera
    for i in 1...numero {
        if i * i == numero {
            // Si encontramos un i tal que i*i es igual al número, lo devolvemos
            return i
        } else if i * i > numero {
            // Si i*i supera el número y aún no encontramos una raíz exacta, lanzamos un error
            throw ErrorRaizCuadrada.sinRaiz
        }
    }
    
    // Si terminamos el bucle sin encontrar una raíz cuadrada entera, lanzamos el error de "sin raíz"
    throw ErrorRaizCuadrada.sinRaiz
}

// Vamos a probar la función con manejo de errores
do {
    let resultado = try calcularRaizCuadrada(numero: 25)
    print("La raíz cuadrada entera es \(resultado)")
} catch ErrorRaizCuadrada.fueraDeLimites {
    print("Error: el número está fuera de los límites permitidos")
} catch ErrorRaizCuadrada.sinRaiz {
    print("Error: no se encontró una raíz cuadrada entera para el número dado")
} catch {
    print("Error desconocido")
}

