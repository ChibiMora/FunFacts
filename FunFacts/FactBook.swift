//
//  FactBook.swift
//  FunFacts
//
//  Created by Crystal Mora on 2/24/16.
//  Copyright © 2016 Crystal Mora. All rights reserved.
//

import Foundation


struct FactBook {
    
    let factsArray = [
        "Ants stretch when they wake up in the moring.",
        "Ostritches can run faster than horses.",
        "Olympic gold medals are actually mostly made of silver.",
        "You are born with 300 bones; by the time you are an adult you will have 206.",
        "It takes about 8 minutes for light from the Sun to reach Earch.",
        "Some bamboo plants can grow almost a meter in just one day.",
        "Some penguins can leap 2-3 meters out of the water.",
        "The state of florida is bigger than England.",
        "On average, it takes 66 days to form a new habbit.",
        "Mammoths still walked the earth when the Great Pyramid was being built."
    ]
    func randomFacts() -> String {
       // var randomNumber = Int(arc4random_uniform(UInt32(factsArray.count)))
        var unsignedArrayCount = UInt32(factsArray.count)
        var unsignedRandomNumer = arc4random_uniform(unsignedArrayCount)
        var randomNumber = Int(unsignedRandomNumer)
        return factsArray[randomNumber]
    }
}
