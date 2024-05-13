//
//  Particle.swift
//  Particle_Effect
//
//  Created by Dewashish Dubey on 13/05/24.
//

import Foundation


struct Particle: Identifiable{
    var id: UUID = .init()
    var randomX : CGFloat = 0
    var randomY : CGFloat = 0
    var scale : CGFloat = 1
    var opacity : CGFloat = 1 //optional
    //to reset all properties
    mutating func reset(){
        randomX = 0
        randomY = 0
        scale = 1
        opacity = 1
    }
}
