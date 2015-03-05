//
//  GameScene.swift
//  TestGame
//
//  Created by SFDCI on 2015-03-02.
//  Copyright (c) 2015 SFDCI. All rights reserved.
//

import SpriteKit

class GameScene: SKScene {
    let tank1 = SKSpriteNode(imageNamed: "Spaceship")
    let tank2 = SKSpriteNode(imageNamed: "Spaceship")
    
    override func didMoveToView(view: SKView) {
        /* Setup your scene here
        let myLabel = SKLabelNode(fontNamed:"Chalkduster")
        myLabel.text = "Hello, World!";
        myLabel.fontSize = 65;
        myLabel.position = CGPoint(x:CGRectGetMidX(self.frame), y:CGRectGetMidY(self.frame));
        self.addChild(myLabel)
        //let tank1 = self.childNodeWithName("tank1")
        
        let xVal = self.frame.width/2
        let yVal = self.frame.height/2
        
        tank1.position = CGPoint(x: xVal, y: yVal - 20)
        tank2.position = CGPoint(x: xVal, y: yVal)
        tank1.xScale = 0.1
        tank1.yScale = 0.1
        tank2.xScale = 0.1
        tank2.yScale = 0.1
        
        tank1.zRotation = 180
        
        
        tank1.physicsBody = SKPhysicsBody(texture: tank1.texture, size: tank1.size)
        tank1.physicsBody?.affectedByGravity = false
        
        //self.addChild(tank1)
        //self.addChild(tank2)
        */
        
        var tank3 = Tank(playerNum: 1, filename: "Spaceship", tankName: "Mason")
        self.addChild(tank3.sprite)
    }
    
    // Called when a touch begins
    override func touchesBegan(touches: NSSet, withEvent event: UIEvent) {
        
        // Set how quickly the balloons will 'shoot' out of the cannon
        let impulseMagnitude: CGFloat = 70.0
        
        // Set the direction of an impulse (an instantaneous change of a balloon's velocity)
        let xComponent: CGFloat = 20.0
        let yComponent: CGFloat = 20.0
        
        //let impulseVector = CGVector(dx: xComponent, dy: yComponent)
        //tank1.physicsBody!.applyImpulse(impulseVector)
        
        tank1.physicsBody?.velocity = CGVector(dx: xComponent, dy: yComponent)
        
        //bob.position = CGPoint(x: xVal, y: yVal)
        //println(tank1)
        /*
        for touch: AnyObject in touches {
            let location = touch.locationInNode(self)
            
            let sprite = SKSpriteNode(imageNamed:"Spaceship")
            
            sprite.xScale = 0.5
            sprite.yScale = 0.5
            sprite.position = location
            
            let action = SKAction.rotateByAngle(CGFloat(M_PI), duration:1)
            
            sprite.runAction(SKAction.repeatActionForever(action))
            
            self.addChild(sprite)
        } */
        
        
    }
   
    override func update(currentTime: CFTimeInterval) {
        /* Called before each frame is rendered */
        //let actionTank1 = SKAction.moveByX(5, y: 5.1, duration: 1)
        //tank1.runAction(actionTank1)
    }
}
