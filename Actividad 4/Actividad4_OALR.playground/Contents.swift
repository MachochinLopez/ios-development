import UIKit
/*:
# Playground - Actividad 4
* Condicionales y Ciclos
* Funciones
* Enumareción
*/

/*:
### Condicionales y Ciclos
A) Declarar la variable "datos" con los valores [3,6,9,2,4,1]
*/
let datos = [3,6,9,2,4,1]
//: B) realizar el recorrido de la variable "datos" con la instrucción "for"
for dato in datos {
//: C) Encontrar los valores menores a 5
    if(dato < 5) {
        print(dato)
    }
}

/*:
### Funciones
A) Crea la función "suma" que reciba dos parámetros de tipo entero regresando la suma de ambos números.
*/
func suma (n1:Int, n2: Int) -> Int {
    return n1 + n2
}
//: B) Crear la función "potencia" que reciba dos parámetros de tipo entero, el primer parámetro para el numero base y el segundo la potencia a elevar, regresando el resultado de la potencia.
func potencia (base: Int, pot: Int) -> Int {
    var result = base
    var i = pot - 1
    
    while i > 0 {
        i -= 1
        result *= base;
    }
    
    return result
}
/*:
### Enumeraciones
A) Crea la enumaración "meses" para definir tipos de datos basados en los meses del año.
*/
enum meses {
    case Enero
    case Febrero
    case Marzo
    case Abril
    case Mayo
    case Junio
    case Julio
    case Agosto
    case Septiembre
    case Octubre
    case Noviembre
    case Diciembre
}
//: B) Crear la función "numeroMes" que reciba el tipo de dato "meses" y regrese el numero del mes correspondiente
func numeroMes (mes: meses) -> Int {
//: C) Para regresar el numero de mes correspondiente utilizar la "switch"
    switch mes {
        case .Enero:
            return 1
        case .Febrero:
            return 2
        case .Marzo:
            return 3
        case .Abril:
            return 4
        case .Mayo:
            return 5
        case .Junio:
            return 6
        case .Julio:
            return 7
        case .Agosto:
            return 8
        case .Septiembre:
            return 9
        case .Octubre:
            return 10
        case .Noviembre:
            return 11
        case .Diciembre:
            return 12
    }
}
