import Foundation


class LeerNoticias{


    func getNoticias(termino: @escaping(_:[String])->()){
      let liga = "http://api.nytimes.com/svc/mostpopular/v2/mostviewed/arts/30.json?api-key=1Lwi4x27ex6MVNoAEamP61k4FcziWytR"
      let url = URL(string: liga)!
        let task = URLSession.shared.dataTask(with: url) { data, response, error in
            var titulos:[String] = []
            do{
                let resultado = try JSONSerialization.jsonObject(with: data!, options: JSONSerialization.ReadingOptions.mutableLeaves) as! NSDictionary
                
                for valor in resultado["results"] as! [NSDictionary]{
                  titulos.append(valor["title"] as! String)
                }
                
                DispatchQueue.main.async { // Correct
                   termino(titulos)
                }
            }catch{
              print("Error en lectura")
            }
        }
        
        task.resume()
    }
}



