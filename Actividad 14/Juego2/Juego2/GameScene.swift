import SpriteKit

class GameScene: SKScene {
    
    override func didMove(to: SKView) {
        
        self.backgroundColor = UIColor.darkGray
    
        let fondo = SKSpriteNode(imageNamed: "fondo2")
        fondo.position = CGPoint(x: self.frame.midX, y: self.frame.midY)
        fondo.zPosition = -1
        self.addChild(fondo)
        let num1 = SKSpriteNode(imageNamed: "1")
        num1.position = CGPoint(x: self.frame.midX, y: self.frame.midY*1.2)
        self.addChild(num1)
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        for touch in touches {
            let location = touch.location(in: self)
            print(location)
        }
    }
   
    override func update(_ currentTime: CFTimeInterval) {
        
    }
}
