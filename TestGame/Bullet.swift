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
    var isBeingFired = false
    
    init () {
        self.sprite.xScale = 0.01
        self.sprite.yScale = 0.01
    }

    func setSpeed (newSpeed: CGPoint, newPosition: CGPoint) {
    
        var tempSpeedX = newSpeed.x
        var tempSpeedY = newSpeed.y
        
        if newSpeed.x > 10 {
            tempSpeedX = 10
        }
        else if newSpeed.x < -10 {
            tempSpeedX = -10
        }
        
        if newSpeed.y > 10 {
            tempSpeedY = 10
        }
        else if newSpeed.y < -10 {
            tempSpeedY = -10
        }
        
        self.speed = CGPoint(x: tempSpeedX, y: tempSpeedY)
    }
    
    func move() {
        if (self.isBeingFired) {
            //  Check to see if bullet goes off the View
            
        }
        else {
            // Set the new position of the bullet
            self.position = CGPoint(x: self.position.x + self.speed.x, y: self.position.y + self.speed.y)
        }
    }
    
}