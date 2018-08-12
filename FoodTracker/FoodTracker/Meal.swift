//
//  Meal.swift
//  FoodTracker
//
//  Created by PPAS RATU FIVE on 12/08/2018.
//  Copyright © 2018 Apple Inc. All rights reserved.
//

import Foundation

import UIKit

class Meal{
    var name: String
    var photo: UIImage?
    var rating: Int
    
    init?(name: String, photo: UIImage?, rating: Int) {
        
        //double check data is correct
        if name.isEmpty || rating < 0{
            return nil
        }
        
        self.name = name
        self.photo = photo
        self.rating = rating
    }
}
