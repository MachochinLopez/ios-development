import UIKit
/*:
# Playground - Actividad 5
* Class y Struct
* Extension
* Optional
*/


/*: 
### Actividad Class y Struct
A) Diseñar la clase Persona que contenga dos metodos, el primero "Saludar" que reciba el parámetro nombre y regrese el mensaje el nombre mas el texto "mucho gusto", el segundo metodo "Caminar" que reciba como parámetro un tipo de dato Int y regrese un tipo de dato String indicando el numero de pasos caminados.
*/
class Persona {
    func Saludar(nombre: String) -> String {
        return "Mucho gusto \(nombre)"
    }
    
    func Caminar (pasos: Int) -> String {
        return "Pasos caminados: \(pasos)"
    }
}
//: B) Diseñar el struct "Pantalla" la cual recibirá como como parametros el ancho y alto de una pantalla como tipo de datos Int con un constructor, para inicializar la estructura.
struct Pantalla {
    var alto: Int
    var ancho: Int
    
    init(ancho: Int, alto: Int) {
        self.alto = alto
        self.ancho = ancho
    }
}

/*:
### Extensions
A) Diseñar un extensión del tipo de dato Int que represente las horas y que pueda regresar los segundos correspondientes (puedes utilizar una función o una variable computada)
*/
extension Int {
    // Funcion para convertir de horas a segundos
    func segundos() -> Int {
        return self * 60 * 60
    }
}
//: B) Diseñar una extensión del tipo de dato String que represente un día de la semana y regrese el numero correspondiente iniciando con Domingo = 1 y finalizando Sábado = 7
extension String {
    func numeroDia() -> Int {
        switch self {
        case "Domingo", "Dom", "D":
            return 1
        case "Lunes", "Lun", "L":
            return 2
        case "Martes", "Mar", "M":
            return 3
        case "Miércoles", "Mie", "X":
            return 4
        case "Jueves", "Jue", "J":
            return 5
        case "Viernes", "Vie", "V":
            return 6
        case "Sábado", "Sab", "S":
            return 7
        default:
            return 0
        }
    }
}
/*:
### Optionals
A) Diseñar una variable optional para recibir el tipo de dato Int en caso de que exista.
*/


//: B) Para la colección let dias = ["GDL":120, "PUE":300, "MTY":100, "CDMX":200] diseñar una variable opcional para recibir el valor de dias["DF"]





