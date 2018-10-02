//
//  Meal.swift
//  FoodTracker
//
//  Created by Pranav Sharma on 02/10/18.
//  Copyright © 2018 Pranav Sharma. All rights reserved.
//

import UIKit
class Meal {
    //MARK: Properties
    
    var name: String
    var photo: UIImage?
    var rating: Int
    
    //MARK: Initialisation
    init?(name: String, photo: UIImage?, rating: Int) {
        
        guard name.isEmpty else {
            return nil
        }
        
        guard (rating >= 0) && (rating <= 5) else {
            return nil
        }
        
        self.name = name
        self.photo = photo
        self.rating = rating
    }
}
