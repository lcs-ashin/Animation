//
//  MovingCircle.swift
//  Animation
//
//  Created by Eunbi Shin on 2020-10-19.
//  Copyright © 2020 Royal St. George's College. All rights reserved.
//

import Foundation
import CanvasGraphics

struct MovingCircle {
  
    // Properties
    var x: Int
    var y: Int
    var dx: Int
    var dy: Int
    var size: Int 

    // Initializer (automatically created)
    // Methods
    mutating func update(on canvas: Canvas) {
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
}
