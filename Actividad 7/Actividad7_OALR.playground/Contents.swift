import UIKit
/*:
# Playground - Actividad 7
* Valor por tipo y por referencia
* Funciones personalizadas Y Genericos
* Funciones de la biblioteca Swift para Arreglos
*/

/*: 
### Valor por tipo y por referencia
A) Para la colección "var costo_referencia:[Float] = [8.3,10.5,9.9]", aplicar el impuesto del 16% a través de recorrer la colección "costo_referencia" para aplicar el impuesto a cada cantidad, crear una función Impuesto que recibe como parámetro la colección y regrese aplicado el impuesto a cada cantidad.
*/
var costo_referencia:[Float] = [8.3,10.5,9.9]

func Impuesto (cantidades: [Float]) -> [Float] {
    var result = cantidades
    // Contador.
    var i = 0
    // Para cada elemento de la coleccion...
    while i < result.count - 1 {
        // Le suma el impuesto.
        result[i] += result[i] * 0.16
        i += 1
    }
    
    return result
}

Impuesto(cantidades: costo_referencia)
//: B) Crear la función "sumaTres"  que reciba una función con dos valores a sumar y un segundo parametro para sumar el tercer número.
// Closure que suma dos valores
let sumaDos: (Int, Int) -> Int = { (x: Int, y: Int) -> Int in
    return x + y
}

// Funcion que suma el resultado del closure y otro valor.
func sumaTres (sumaDos: Int, valor: Int) -> Int {
    return sumaDos + valor
}

sumaTres(sumaDos: sumaDos(1, 2), valor: 5)
/*:
### Funciones personalizadas y Genéricos

 
 A) Generics: Crear la función genérica para intercambiar valores entre dos variables del mismo tipo.
*/
func CambiarValores<T>(a: T, b: T) -> (T, T) {
    return (b, a)
}

CambiarValores(a: 1, b: 8)
//: B) Función personalizada: Crear la función "Transformar" que reciba como parámetro una colección de tipo Int  "var datos = [3,7,9,2]" y una función que transforme cada valor de la coleción en una operación definida fuera de la función, regresando una colección transformada.
// Funcion Generica que usa una funcion definida para transformar una
// coleccion al tipo de dato que la funcion indique
func Transformar <T> (coleccion: [T], funcion: ([T]) -> [T]) -> [T] {
    return funcion(coleccion)
}

var datos = [3,7,9,2]

// En este ejemplo se transforma la coleccion multiplicandola por dos
Transformar(coleccion: datos) {(datos) in
    var resultMultiplicadoPorDos: [Int] = []
    
    for dato in datos {
        resultMultiplicadoPorDos.append(dato * 2)
    }
    
    return resultMultiplicadoPorDos
}

// En este ejemplo se transforma la coleccion simandole dos
Transformar(coleccion: datos) {(datos) in
    var resultSumadoMasDos: [Int] = []
    
    for dato in datos {
        resultSumadoMasDos.append(dato + 2)
    }
    
    return resultSumadoMasDos
}

/*:
### Biblioteca de Swift
A) Aplicar la función de librería de Swift "map" para la colección var precios = [4.2, 5.3, 8.2, 4.5] y aplicar el impuesto de 16% y asignarla a la variable "impuesto"
*/
var precios = [4.2, 5.3, 8.2, 4.5]

let impuestos = precios.map { valor in
    valor + (valor * 0.16)
}
//: B) Aplicar la función de la librería de Swift "filter" para la colección resultante "impuesto" del paso A, en donde se obtengas solo los precios mayores a 6.0 y asignarlos a la variable "precio_menor"
let precio_menor = impuestos.filter { valor in
    valor > 6.0
}

impuestos


