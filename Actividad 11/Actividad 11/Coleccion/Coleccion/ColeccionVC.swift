import UIKit


private let reuseIdentifier = "celda"

class ColeccionVC: UICollectionViewController {

    var imgNum:[String] = []
    
    let numeros:[String] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        for valor in 0...19{
            imgNum.append("\(valor+1)")
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        
    }
    
    
    func numberOfSectionsInCollectionView(collectionView: UICollectionView) -> Int {
        return 1
    }


    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
            return imgNum.count
    }

    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell:Celda = collectionView.dequeueReusableCell(withReuseIdentifier: reuseIdentifier, for: indexPath as IndexPath) as! Celda
        
        // Configurar celda
        cell.imagenNum.image = UIImage(named: imgNum[indexPath.row])
        
        return cell
    }

    
    
    
    
    
    
    
    
    

    
    
    
    
    
    
    
    
    // MARK: UICollectionViewDelegate



    /*
    // Uncomment these methods to specify if an action menu should be displayed for the specified item, and react to actions performed on the item
    override func collectionView(collectionView: UICollectionView, shouldShowMenuForItemAtIndexPath indexPath: NSIndexPath) -> Bool {
        return false
    }

    override func collectionView(collectionView: UICollectionView, canPerformAction action: Selector, forItemAtIndexPath indexPath: NSIndexPath, withSender sender: AnyObject?) -> Bool {
        return false
    }

    override func collectionView(collectionView: UICollectionView, performAction action: Selector, forItemAtIndexPath indexPath: NSIndexPath, withSender sender: AnyObject?) {
    
    }
    */

}
