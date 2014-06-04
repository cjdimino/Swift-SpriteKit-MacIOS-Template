//
//  SKMScene.swift
//  SpriteKitSwiftCrossPlatformTemplate
//
//  Created by Neil North on 4/06/2014.
//  Copyright (c) 2014 Neil North. All rights reserved.
//

import SpriteKit

class SKMScene: SKScene {
    
#if os(iOS)
    
    override func touchesBegan(touches: NSSet, withEvent event: UIEvent) {
    
        for touch: AnyObject in touches {
            let location = touch.locationInNode(self)
            screenInteractionStarted(location)
        }
    }
    
    override func touchesEnded(touches: NSSet, withEvent event: UIEvent) {
    
        for touch: AnyObject in touches {
            let location = touch.locationInNode(self)
            screenInteractionEnded(location)
        }
    }
    
    override func touchesCancelled(touches: NSSet, withEvent event: UIEvent) {
    
        for touch: AnyObject in touches {
            let location = touch.locationInNode(self)
            screenInteractionEnded(location)
        }
    }
    
#else
    
    override func mouseDown(theEvent: NSEvent) {
        
        let location = theEvent.locationInNode(self)
        screenInteractionStarted(location)
    }
    
    override func mouseUp(theEvent: NSEvent) {
        
        let location = theEvent.locationInNode(self)
        screenInteractionEnded(location)
    }
    
    override func mouseExited(theEvent: NSEvent) {
        
        let location = theEvent.locationInNode(self)
        screenInteractionEnded(location)
    }
    
#endif
    
    func screenInteractionStarted(location: CGPoint) {
        /* Overridden by Subclass */
    }
    
    func screenInteractionEnded(location: CGPoint) {
        /* Overridden by Subclass */
    }
    
}
