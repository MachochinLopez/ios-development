import UIKit
/*:
# Playground - Actividad 3
* Tipos de datos
* Asociación de tipos
* Arreglos y Diccionarios
*/

/*: 
### Actividad de Tipos de datos
A) Declarar cuatro variables con tres diferentes tipos de datos, cada uno que corresponda a una numero entero, un numero decimal (flotante), una cadena de texto, realizando la asignación explicita y la asignación inferida
*/
let entero1 = 500
let entero2:Int = 500
let flotante:Float = 5.5
let texto = "Holaa"
/*:
### Asociación de tipos
A) Declara el tipo de dato por asociación para un tipo de dato String
*/
var str = "String1"
//: B) Declara el tipo de dato por asociación para un tipo de dato  Número entero.
var integer = 0
/*: 
### Arreglos y Diccionarios
A) Crea la variable "numeros" de tipo Array con números consecutivos del 1 a 10.
*/
var numeros = [1,2,3,4,5,6,7,8,9,10]
//: B) Crea la variable "diasSemana" de tipo Dictionary con la relación numero:día Ej. 1:"Lunes"
var diasSemana = [1: "Lunes", 2: "Martes", 3: "Miercoles", 4: "Jueves", 5: "Viernes", 6: "Sabado", 7: "Domingo"]

/*:
### Condicionales y Ciclos
A) Declarar la variable "datos" con los valores [3,6,9,2,4,1]
*/
var datos = [3,6,9,2,4,1]
//: B) realizar el recorrido de la variable "datos" con la instrucción "for"
for dato in datos {


//: C) Encontrar los valores menores a 5
    if(dato < 5) {
        print(dato)
    }
}




