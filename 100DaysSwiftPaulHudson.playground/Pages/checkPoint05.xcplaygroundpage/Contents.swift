import Foundation

/*
 Con los cierres en tu haber, es hora de probar un pequeño desafío de codificación usándolos.

 Ya has conocido a sorted()), filter(), map(), así que me gustaría que los juntaras en una cadena: llama a uno, luego al otro, luego al otro espalda con espalda sin usar variables temporales.

 Su opinión es la siguiente:

 let luckyNumbers = [7, 4, 38, 21, 16, 15, 12, 33, 31, 49]
 
 Tu trabajo es:
 Filtra cualquier número que sea par
 Ordenar la matriz en orden ascendente
 Asignarlos a cadenas en el formato "7 es un número de la suerte"
 Imprima la matriz resultante, un elemento por línea
 Por lo tanto, su resultado debería ser el siguiente:

 7 is a lucky number
 15 is a lucky number
 21 is a lucky number
 31 is a lucky number
 33 is a lucky number
 49 is a lucky number

 */


let luckyNumbers = [7, 4, 38, 21, 16, 15, 12, 33, 31, 49]

luckyNumbers
    .filter { $0 % 2 != 0 }
    .sorted()
    .map { "\($0) es un número de la suerte" }
    .forEach { print($0) }


