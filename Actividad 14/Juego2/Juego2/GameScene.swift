//
//  GameScene.swift
//  Juego2
//
//  Created by alicharlie on 19/05/16.
//  Copyright (c) 2016 codepix. All rights reserved.
//

import SpriteKit

class GameScene: SKScene {
    override func didMoveToView(view: SKView) {
        
        self.backgroundColor = UIColor.darkGrayColor()
    
      
    }
    
    
    
    
    
    
    
    
    
    
    
    override func touchesBegan(touches: Set<UITouch>, withEvent event: UIEvent?) {
       
        
        for touch in touches {
            let location = touch.locationInNode(self)
            print(location)
        }
    }
   
    
    
    override func update(currentTime: CFTimeInterval) {
        
    }

}
