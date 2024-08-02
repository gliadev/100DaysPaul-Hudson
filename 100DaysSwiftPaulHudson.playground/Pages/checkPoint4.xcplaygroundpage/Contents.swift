import Foundation

/*
 El desafío es el siguiente: escribe una función que acepte un entero del 1 al 10.000, y devuelva la raíz cuadrada entera de ese número. Eso suena fácil, pero hay algunas trampas:

 You can’t use Swift’s built-in sqrt() function or similar – you need to find the square root yourself.
 Si el número es menor que 1 o superior a 10.000, debería lanzar un error de "fuera de los límites".
 Solo debes considerar las raíces cuadradas enteras; no te preocupes por que la raíz cuadrada de 3 sea 1,732, por ejemplo.
 Si no puedes encontrar la raíz cuadrada, lanza un error de "sin raíz".
 */

func calcularRaizCuadrada(numero: Int) -> String {
    if numero < 0 && numero < 10000 {
        print("El numero esta fuera de rango")
    } else {
        return print("La raiz cuadrada de \(numero) es: \(numero) * \(numero)")
    }
}

calcularRaizCuadrada(numero: 2)
