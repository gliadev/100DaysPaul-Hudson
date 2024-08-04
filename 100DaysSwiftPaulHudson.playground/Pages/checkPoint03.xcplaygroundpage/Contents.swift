import Foundation

/*
 Ahora que puedes usar condiciones y bucles, me gustaría que probaras un problema clásico de informática. No es difícil de entender, ¡pero podría llevarte un poco de tiempo resolverlo dependiendo de tu experiencia previa!

 El problema se llama fizz buzz, y se ha utilizado en entrevistas de trabajo, pruebas de ingreso a la universidad y más desde que puedo recordar. Tu objetivo es hacer un bucle del 1 al 100, y para cada número:

 Si es un múltiplo de 3, imprime "Fizz"
 Si es un múltiplo de 5, imprime "Buzz"
 Si es un múltiplo de 3 y 5, imprime "FizzBuzz"
 De lo contrario, solo imprime el número.
 Por lo tanto, aquí hay algunos valores de ejemplo que debe tener cuando se ejecute su código:

 1 debería imprimir "1"
 2 deberían imprimir "2"
 3 deberían imprimir "Fizz"
 4 debería imprimir "4"
 5 deberían imprimir "Buzz"
 6 deberían imprimir "Fizz"
 7 debería imprimir "7"
 ...
 15 debería imprimir "FizzBuzz"
 ...
 100 debería imprimir "Buzz"
 */


for i in 1...100 {
    if i.isMultiple(of: 3) && i.isMultiple(of: 5) {
        print("FizzBuzz")
    } else if i.isMultiple(of: 3) {
        print("Fizz")
    } else if i.isMultiple(of: 5) {
        print("Buzz")
    } else {
        print(i)
    }
}



