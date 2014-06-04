//
//  GameScene.swift
//  SpriteKitSwiftCrossPlatformTemplate
//
//  Created by Neil North on 4/06/2014.
//  Copyright (c) 2014 Neil North. All rights reserved.
//

import SpriteKit

class GameScene: SKMScene {
    
    override func didMoveToView(view: SKView) {
        /* Setup your scene here */
        let myLabel = SKLabelNode(fontNamed:"Chalkduster")
        myLabel.text = "Hello, World!";
        myLabel.fontSize = 65;
        myLabel.position = CGPoint(x:CGRectGetMidX(self.frame), y:CGRectGetMidY(self.frame));
        
        self.addChild(myLabel)
    }
    
//HANDLE SCREEN INTERACTIONS BY TOUCHES OR MOUSE
    
    override func screenInteractionStarted(location: CGPoint) {
        
        let sprite = SKSpriteNode(imageNamed:"Spaceship")
        sprite.position = location
        sprite.setScale(0.5)
        
        let action = SKAction.rotateByAngle(CGFloat(M_PI), duration:1)
        sprite.runAction(SKAction.repeatActionForever(action))
        
        self.addChild(sprite)
        
    }
    
    override func screenInteractionEnded(location: CGPoint) {
        
    }
    
//HANDLE GAME LOOP
   
    override func update(currentTime: CFTimeInterval) {
        
    }
}
