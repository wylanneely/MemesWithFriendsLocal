//
//  Emitter.swift
//  MemesWithFriendsLocal
//
//  Created by Zachary Duvall on 8/7/17.
//  Copyright © 2017 Bradley Gilmore. All rights reserved.
//

import UIKit

class Emitter {
    
    static func get(with image: UIImage) -> CAEmitterLayer {
        let emitter = CAEmitterLayer()
        emitter.emitterShape = kCAEmitterLayerLine
        emitter.emitterCells = generateEmitterCells(with: image)
        
        
        return emitter
    }
    
    static func generateEmitterCells(with image: UIImage) -> [CAEmitterCell] {
        var cells = [CAEmitterCell]()
        
        let cell = CAEmitterCell()
        cell.contents = image.cgImage
        cell.birthRate = 2
        cell.lifetime = 40
        
        cell.velocity = CGFloat(60) // experiement with the velocity
        cell.velocityRange = 15
        
        cell.emissionLongitude = (180 * (.pi/180)) // <- Radian function
        cell.emissionRange = (45 * (.pi/180))
        
        cell.scale = 0.5
        cell.scaleRange = 0.2
        
        cells.append(cell)
        return cells
    }
    
}
