//
//  Bullet.swift
//  TestGame
//
//  Created by SFDCI on 2015-03-03.
//  Copyright (c) 2015 SFDCI. All rights reserved.
//

import Foundation
import UIKit
import SpriteKit

class Bullet {
    var position = CGPoint(x: -50, y: -50)
    var speed = CGPoint(x: 0, y: 0)
    var sprite = SKSpriteNode(imageNamed: "Spaceship")
    var texture = SKTexture()
    var viewSize = CGPoint()    // width, height
    var isBeingFired = false
    
    init () {
        self.sprite.xScale = 0.03
        self.sprite.yScale = 0.03
        self.texture = SKTexture(imageNamed: "Spaceship")
        //self.sprite.physicsBody = SKPhysicsBody(texture: sprite.texture, size: sprite.size)
        self.sprite.physicsBody?.affectedByGravity = false
    }

    func setSpeed (newSpeed: CGPoint, newPosition: CGPoint) {
    
        var tempSpeedX = newSpeed.x
        var tempSpeedY = newSpeed.y
        
        if newSpeed.x > 100 {
            tempSpeedX = 100
        }
        else if newSpeed.x < -100 {
            tempSpeedX = -100
        }
        
        if newSpeed.y > 100 {
            tempSpeedY = 100
        }
        else if newSpeed.y < -100 {
            tempSpeedY = -100
        }
        
        self.speed = CGPoint(x: tempSpeedX, y: tempSpeedY)
        self.position = newPosition
        self.sprite.position = newPosition
        self.sprite.zRotation = CGFloat(M_PI)
        self.sprite.physicsBody?.velocity = CGVector(dx: self.speed.x, dy: self.speed.y)
    }
    
    func move() {
        if (self.isBeingFired) {
            //  Check to see if bullet goes off the View
            if (self.sprite.position.x < 0 || self.sprite.position.x > self.viewSize.x || self.sprite.position.y < 0 || self.sprite.position.y > self.viewSize.y) {
                self.isBeingFired = false
                self.position = CGPoint(x: -50, y: -50)
                self.sprite.position = self.position
            }
        }
    }
    
}