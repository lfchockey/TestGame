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

class Tank {
    var position = CGPoint()
    var speed = CGPoint(x: 0, y: 0)
    var texture = SKTexture()
    var bullets = [Bullet]()
    var bulletNumber = 0
    let TOTAL_BULLETS = 10
    var life = 20
    var name = ""
    
    // Constructor
    init(playerNum: Int, filename: NSString, tankName: NSString) {
        
        // Set the class variables
        self.texture = SKTexture(imageNamed: filename)
        self.name = tankName
        
        // Position the tanks based on which player they are
        if playerNum == 1 {
            
        }
        else {
            
        }
        
        func getSpeed() -> CGPoint {
            return self.speed
        }
        
        func setSpeed(newSpeed: CGPoint) {
            var spd = CGPoint(x: newSpeed.x, y: newSpeed.y)
            
            if newSpeed.x > 3 {
                spd = CGPoint (x: 3, y: newSpeed.y)
            }
            else if newSpeed.x < -3 {
                spd = CGPoint (x: -3, y: newSpeed.y)
            }
            else {
                spd = CGPoint (x: spd.x, y: newSpeed.y)
            }
                
            
            if newSpeed.y > 3 {
                spd = CGPoint (x: spd.x, y: 3)
            }
            else if newSpeed.x < -3 {
                spd = CGPoint (x: spd.x, y: -3)
            }
            else {
                spd = CGPoint (x: spd.x, y: newSpeed.y)
            }
            
            self.speed = spd
        }
        
        func moveTank() {
            
        }
        
        func fire (bulletSpeed: CGPoint) {
            for var i = self.bulletNumber; i < self.TOTAL_BULLETS; i++ {
                
            }
        }
        
        
    }
    
}