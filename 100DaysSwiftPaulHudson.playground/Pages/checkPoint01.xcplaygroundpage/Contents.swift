//: [Previous](@previous)

import Foundation

//Tu objetivo es escribir un playground en Swift que:
//
//   1. Cree una constante que contenga cualquier temperatura en grados Celsius.
//   2. La convierta a Fahrenheit multiplicando por 9, dividiendo por 5, y luego sumando 32.
//   3.  Imprima el resultado para el usuario, mostrando tanto los valores en Celsius como en Fahrenheit.


let temperaturaCelsius: Double = 27
let temperaturaFahrenheit = (temperaturaCelsius * 9 / 5) + 32

print("La temperatura de \(temperaturaCelsius)°C son \(temperaturaFahrenheit)°F en Fahrenheit.")

