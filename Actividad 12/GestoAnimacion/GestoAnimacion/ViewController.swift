import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var tipoGesto: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let gestoTap = UITapGestureRecognizer(target: self, action:#selector(accionGesto(sender:)))
        self.view.addGestureRecognizer(gestoTap)
        
        let gestoSwipe = UISwipeGestureRecognizer(target: self, action:#selector(self.accionGesto(sender:)))
        self.view.addGestureRecognizer(gestoSwipe)
        
    }
    
    @objc func accionGesto(sender: UIGestureRecognizer) {
        if sender.isKind(of:UITapGestureRecognizer.self){
            tipoGesto.text = "Tap"
        }
        if sender.isKind(of:UISwipeGestureRecognizer.self){
            tipoGesto.text = "Swipe"
        }
        animacion()
    }
    
    func animacion() {
        UIView.animate(withDuration: 3, delay: 0.2, options: [], animations: {
            self.tipoGesto.alpha = 1.0
        }) { _ in
            self.tipoGesto.alpha = 0.0
        }
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
    }
    
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        self.tipoGesto.alpha = 0.0
    }
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }

}

