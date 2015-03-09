//
//  Tank.swift
//  TestGame
//
//  Created by SFDCI on 2015-03-03.
//  Copyright (c) 2015 SFDCI. All rights reserved.
//

import Foundation
import UIKit
import SpriteKit
import Darwin

class Tank {
    var position = CGPoint()
    var speed = CGPoint(x: 0, y: 0)
    var sprite = SKSpriteNode()
    var texture = SKTexture()
    var viewSize = CGPoint()    // width, height
    var bullets: [Bullet] = []
    var bulletNumber = 0
    let TOTAL_BULLETS = 10
    var life = 20
    var name = ""
    
    // Constructor
    init(playerNum: Int, filename: NSString, tankName: NSString) {
        
        sprite = SKSpriteNode(imageNamed:"Star.png")
        
        //sprite.xScale = 0.075
        //sprite.yScale = 0.075
       
        
        sprite.physicsBody = SKPhysicsBody(texture: SKTexture(imageNamed: "Star.png"), size: sprite.size)
        if let physics = sprite.physicsBody {
            physics.affectedByGravity = false
            physics.allowsRotation = true
            //physics.dynamic = true;
            //physics.linearDamping = 0.75
            //physics.angularDamping = 0.75
        }

        
        //var spaceshipTexture = SKTexture(imageNamed: "Star.png")
        //self.sprite = SKSpriteNode(texture: spaceshipTexture, size: spaceshipTexture.size())
        
        //println(self.sprite)
        //sprite.physicsBody? = SKPhysicsBody(texture: SKTexture(imageNamed: "Spaceship"), size: sprite.size)
        //println(self.sprite.physicsBody)
        
        // Set the class variables
        //self.sprite = SKSpriteNode(imageNamed: filename)
        self.sprite.xScale = 0.1
        self.sprite.yScale = 0.1
        self.sprite.zRotation = CGFloat(M_PI)
        //self.texture = SKTexture(imageNamed: filename)
        //self.sprite.physicsBody = SKPhysicsBody(texture: sprite.texture, size: sprite.size)
        //self.sprite.physicsBody?.affectedByGravity = false
        self.name = tankName
        
        // Initialize all of the Bullet objects
        for i in 0..<TOTAL_BULLETS {
            let bullet = Bullet()
            //bullet.viewSize = self.viewSize // this isn't initialized until later
            bullets.append(bullet)
            //self.sprite.addChild(bullet.sprite)
        }
        
        // Position the tanks based on which player they are
        if playerNum == 1 {
            position.x = 700
            position.y = 650
        }
        else {
            position.x = 350
            position.y = 150
        }
        self.sprite.position = self.position
    }
    
    func getSpeed() -> CGPoint {
        return self.speed
    }
    
    func setSpeed(newSpeed: CGPoint) {
        var spd = CGPoint(x: newSpeed.x, y: newSpeed.y)
        
        if newSpeed.x > 10 {
            spd = CGPoint (x: 10, y: newSpeed.y)
        }
        else if newSpeed.x < -10 {
            spd = CGPoint (x: -10, y: newSpeed.y)
        }
        else {
            spd = CGPoint (x: spd.x, y: newSpeed.y)
        }
            
        
        if newSpeed.y > 10 {
            spd = CGPoint (x: spd.x, y: 10)
        }
        else if newSpeed.x < -10 {
            spd = CGPoint (x: spd.x, y: -10)
        }
        else {
            spd = CGPoint (x: spd.x, y: newSpeed.y)
        }
        
        self.speed = spd
    }
    
    func move (){
        self.sprite.physicsBody?.velocity = CGVector(dx: self.speed.x, dy: self.speed.y)
    }
    
    func fire (bulletSpeed: CGPoint) -> Void {
        for var i = self.bulletNumber; i < self.TOTAL_BULLETS; i++ {
            if !bullets[i].isBeingFired {
                bullets[i].setSpeed(bulletSpeed, newPosition: self.sprite.position)
                bullets[i].isBeingFired = true
                break
            }
        }
        
        bulletNumber++
        if bulletNumber >= TOTAL_BULLETS {
            bulletNumber = 0
        }
    }
    
    func getWidth() -> CGFloat {
        return sprite.size.width
    }
    
    func getHeight() -> CGFloat {
        return sprite.size.height
    }
    
}