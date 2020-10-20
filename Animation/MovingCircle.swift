//
//  MovingCircle.swift
//  Animation
//
//  Created by Eunbi Shin on 2020-10-19.
//  Copyright © 2020 Royal St. George's College. All rights reserved.
//

import Foundation
import CanvasGraphics

class MovingCircle {
  
    // Properties
    var x: Int
    var y: Int
    var dx: Int
    var dy: Int
    var size: Int 

    // Initializer
    init (x: Int, y: Int, dx: Int, dy: Int, size: Int) {
        self.x = x
        self.y = y
        self.dx = dx
        self.dy = dy
        self.size = size
    }
    
    
    // Methods
    
    // Draw myself on the canvas
     func update(on canvas: Canvas) {
        // Bounce at edge
        if x > 500 {
            dx = Int.random(in: 1...3) * -1
        } else if x < 0 {
            dx = Int.random(in: 1...3)
        } else if y > 500 {
            dy = Int.random(in: 1...3) * -1
        } else if y < 0 {
            dy = Int.random(in: 1...3)
        }
      
        // Move Position
        x += dx
        y += dy

        // Draw circle
        canvas.drawShapesWithFill = false
        canvas.drawShapesWithBorders = true
        canvas.defaultBorderWidth = 2
        
        canvas.drawEllipse(at: Point(x: x, y: y), width: size, height: size)

    }
    
    // Find my distance to the other circles
    func distanceTo(other: MovingCircle) -> Double {
        
        // Calculate the distance between circles
        let horizontal = self.x - other.x
        let vertical = self.y - other.y
        
        let d = sqrt(Double(horizontal * horizontal + vertical * vertical))
        
        
        
        return d 
    }
    
}
