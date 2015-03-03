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
    var position = CGPoint()
    var speed = CGPoint()
    var texture = SKTexture()
    var isBeingFired = false
    
    init () {
        
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
    
    func move () {
        if (self.isBeingFired) {
            //  Check to see if bullet goes off the View
            
        }
        else {
            // Set the new position of the bullet
            self.position = CGPoint(x: self.position.x + self.speed.x, y: self.position.y + self.speed.y)
        }
    }
    
}