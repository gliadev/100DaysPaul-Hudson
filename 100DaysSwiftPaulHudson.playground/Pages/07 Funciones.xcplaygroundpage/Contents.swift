import Foundation

// Definición de una función para mostrar un mensaje de bienvenida
func mostrarBienvenida() {
    // Imprime el mensaje de bienvenida
    print("¡Bienvenido a mi aplicación!")
    print("Por defecto, esto imprime una tabla de")
    print("conversión de centímetros a pulgadas,")
    print("pero también puedes establecer un rango personalizado si lo deseas.")
}

// Llamada a la función mostrarBienvenida
mostrarBienvenida()

// Definición de una función con un parámetro
func imprimirTablaDeMultiplicar(numero: Int) {
    // Itera del 1 al 12 y imprime la tabla de multiplicar del número dado
    for i in 1...12 {
        print("\(i) x \(numero) es \(i * numero)")
    }
}

// Llamada a la función imprimirTablaDeMultiplicar con el argumento 5
imprimirTablaDeMultiplicar(numero: 5)

// Definición de una función con múltiples parámetros
func imprimirTablaDeMultiplicar(numero: Int, fin: Int) {
    // Itera desde 1 hasta el valor de 'fin' y imprime la tabla de multiplicar del número dado
    for i in 1...fin {
        print("\(i) x \(numero) es \(i * numero)")
    }
}

// Llamada a la función imprimirTablaDeMultiplicar con dos argumentos
imprimirTablaDeMultiplicar(numero: 5, fin: 20)

// Ejemplo de una llamada incorrecta a la función por el orden de los argumentos
// imprimirTablaDeMultiplicar(fin: 20, numero: 5) // Esto es incorrecto y no compilará

// Ejemplo de reutilización de funciones, dividiendo el código y composición de funciones
func imprimirMensajeDeBienvenida() {
    print("¡Bienvenido a nuestra aplicación!")
    print("Puedes configurar tus preferencias en el menú.")
}

func configurarAplicacion() {
    imprimirMensajeDeBienvenida()
    print("Configurando la aplicación...")
}

func iniciarAplicacion() {
    imprimirMensajeDeBienvenida()
    print("Iniciando la aplicación...")
}

// Llamadas a las funciones que reutilizan imprimirMensajeDeBienvenida
configurarAplicacion()
iniciarAplicacion()

// Ejemplo de una función con muchos parámetros que puede necesitar ser dividida
func procesarDatos(param1: Int, param2: String, param3: Double, param4: Bool, param5: [String], param6: [Int]) {
    // Código para procesar los datos
    print("Procesando datos con múltiples parámetros...")
}

// Considerar dividir la función en funciones más pequeñas si es necesario
func procesarEnteros(param1: Int, param6: [Int]) {
    // Código para procesar enteros
}

func procesarCadenas(param2: String, param5: [String]) {
    // Código para procesar cadenas
}

// Llamadas a las funciones divididas
procesarEnteros(param1: 1, param6: [1, 2, 3])
procesarCadenas(param2: "Hola", param5: ["uno", "dos", "tres"])


func listOriginalStarWarsMovies() {
    for i in 4...6 {
        print("Episode \(i)")
    }
}

listOriginalStarWarsMovies()

// Devolver valores en las funciones
// Función que devuelve un valor entero
func lanzarDado() -> Int {
    Int.random(in: 1...6) // Genera un número aleatorio entre 1 y 6
}

// Llamada a la función lanzarDado
let resultado = lanzarDado()
print(resultado) // Imprime el resultado del lanzamiento del dado

// Función que verifica si dos cadenas contienen las mismas letras
func sonLetrasIdenticas(cadena1: String, cadena2: String) -> Bool {
    cadena1.sorted() == cadena2.sorted() // Compara las cadenas ordenadas
}

// Llamada a la función sonLetrasIdenticas
print(sonLetrasIdenticas(cadena1: "abc", cadena2: "cab")) // Imprime true

// Función que calcula la hipotenusa usando el teorema de Pitágoras
func pitagoras(a: Double, b: Double) -> Double {
    sqrt(a * a + b * b) // Calcula la hipotenusa
}

// Llamada a la función pitagoras
let hipotenusa = pitagoras(a: 3, b: 4)
print(hipotenusa) // Imprime 5.0

// Ejemplo de retorno anticipado en una función que no devuelve valor
func verificarEntrada(edad: Int) {
    if edad < 18 {
        return // Sale de la función si la edad es menor a 18
    }
    print("Bienvenido!") // Imprime el mensaje si la edad es 18 o mayor
}

// Llamada a la función verificarEntrada
verificarEntrada(edad: 17) // No imprime nada
verificarEntrada(edad: 18) // Imprime "Bienvenido!"

// Función con una sola expresión
func hacerMatematicas() -> Int {
    5 + 5 // Devuelve la suma de 5 + 5
}

// Llamada a la función hacerMatematicas
print(hacerMatematicas()) // Imprime 10

// Función con una condición que retorna diferentes valores
func saludar(nombre: String) -> String {
    if nombre == "Taylor Swift" {
        "Oh wow!" // Devuelve "Oh wow!" si el nombre es "Taylor Swift"
    } else {
        "Hola, \(nombre)" // Devuelve "Hola, [nombre]" para otros nombres
    }
}

// Llamada a la función saludar
print(saludar(nombre: "Taylor Swift")) // Imprime "Oh wow!"
print(saludar(nombre: "Paul")) // Imprime "Hola, Paul"



