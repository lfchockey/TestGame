//
//  GameScene.swift
//  TestGame
//
//  Created by SFDCI on 2015-03-02.
//  Copyright (c) 2015 SFDCI. All rights reserved.
//

import SpriteKit

struct Tanks {
    
}
class GameScene: SKScene {
    let tank1 = SKSpriteNode(imageNamed: "Spaceship")
    let tank2 = SKSpriteNode(imageNamed: "Spaceship")
    var tank3 = Tank(playerNum: 1, filename: "Spaceship", tankName: "Mason")
    let myLabel = SKLabelNode(fontNamed:"Chalkduster")
    override func didMoveToView(view: SKView) {
        //Setup your scene here
        
        myLabel.text = "Hello, World!";
        myLabel.fontSize = 65;
        myLabel.position = CGPoint(x:CGRectGetMidX(self.frame), y:CGRectGetMidY(self.frame));
        self.addChild(myLabel)
        
        tank3.viewSize = CGPoint(x: self.frame.width, y: self.frame.height)
        self.addChild(tank3.sprite)
        
        for i in 0 ..< tank3.TOTAL_BULLETS {
            tank3.bullets[i].viewSize = tank3.viewSize
            tank3.bullets[i].tankSize = tank3.sprite.size
            self.addChild(tank3.bullets[i].sprite)
        }
    }
    
    // Called when a touch begins
    override func touchesBegan(touches: NSSet, withEvent event: UIEvent) {
        tank3.setSpeed(CGPoint(x: -10, y: -10))
        //tank3.move()
        var bob = "hello"
        
        tank3.fire(CGPoint(x: -80, y: -80))
        
        for i in 0 ..< tank3.TOTAL_BULLETS {
            tank3.bullets[i].move()
        }

        
        // Set how quickly the balloons will 'shoot' out of the cannon
        //let impulseMagnitude: CGFloat = 70.0
        
        // Set the direction of an impulse (an instantaneous change of a balloon's velocity)
        //let xComponent: CGFloat = 20.0
        //let yComponent: CGFloat = 20.0
        
        //let impulseVector = CGVector(dx: xComponent, dy: yComponent)
        //tank1.physicsBody!.applyImpulse(impulseVector)
        
        //tank1.physicsBody?.velocity = CGVector(dx: xComponent, dy: yComponent)
        
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
        for i in 0 ..< tank3.TOTAL_BULLETS {
            tank3.bullets[i].move()
        }
        myLabel.text = "\(tank3.bullets[1].sprite.position.x) - \(tank3.bullets[0].sprite.position.y)"
        
        
        //let actionTank1 = SKAction.moveByX(5, y: 5.1, duration: 1)
        //tank1.runAction(actionTank1)
    }
}
