import UIKit
/*:
# Playground - Actividad 6
* Operadores personalizados
* Subscripts
* Control de errores

*/


/*: 
### Operadores personalizados
A) Crear el operador para realizar la potencia de el valor "a" a la potencia "b" en valores enteros
*/
infix operator **

func ** (valor: Int, potencia: Int) -> Int {
    return Int(pow(Double(valor), Double(potencia)))
}

2**4
//: B) Crear el operador |> para ordenar la colección [2,5,3,4] de menor a mayor
postfix operator |>

postfix func |> (coleccion: [Int]) -> [Int] {
    return coleccion.sorted()
}

var numeros = [2,5,3,4]
numeros|>
/*:
### Subscripts
A) Del conjunto de datos en el Array [2,3,4,5], crear el subscript para modificar los valores multiplicados por el valor 2 y extraer al valor dado un índice.
*/
let array = [2,3,4,5]

class Cantidad {
    var valores: [Int]
    
    init(v: [Int]) {
        self.valores = v
    }
    
    subscript (idx: Int) -> Int {
        get {
            return valores[idx]
        }
        
        set (multiplicador) {
            valores[idx] *= multiplicador
        }
    }
}

let prueba = Cantidad(v: array)

prueba[2]
prueba[3] = 3

array
prueba.valores

//: B) Crear el Struct para definir u obtener la posición  para los personaje de tipo Enemigo donde cada posición es de tipo CGPoint aplicnado subscritps
class Enemigo {
    var position: CGPoint
    var name: String
    
    init (p: CGPoint, n: String){
        self.position = p
        self.name = n
    }
}

struct Enemigos {
    var listaEnemigos: [Enemigo]
    
    subscript (idx: Int) -> CGPoint {
        get {
            return listaEnemigos[idx].position
        }
        
        set (p) {
            listaEnemigos[idx].position = p
        }
    }
}

let arregloEnemigos = [
    Enemigo(p: CGPoint(x: 0, y: 2), n: "Enemigo 1"),
    Enemigo(p: CGPoint(x: 2, y: 3), n: "Enemigo 2"),
    Enemigo(p: CGPoint(x: 1, y: 0), n: "Enemigo 3")
]

var enemigos = Enemigos(listaEnemigos: arregloEnemigos)

enemigos[1]
enemigos[1] = CGPoint(x: 5, y: 5)
enemigos[1]
/*:
### Control de Errores
A) Crear la función ExisteValor en la cual se reciba como parámetro el valor a buscar dentro de un colección ["A":1, "B":2,"C":3]
*/
func ExisteValor (index: String, col: [String: Int]) {
    guard let existe = col[index] else {
        print("No existe")
        return
    }
    
    print("Existe \(existe)")
}

let dictError = ["A":1, "B":2,"C":3]

ExisteValor(index: "C", col: dictError)
ExisteValor(index: "F", col: dictError)
dictError["F"]





