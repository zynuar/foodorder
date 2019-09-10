//
//  Meal.swift
//  food tracker
//
//  Created by Izzaty on 27/08/2019.
//  Copyright © 2019 Izzaty. All rights reserved.
//

import UIKit

class Meal {
    
    //Properties
    var name: String
    var photo: UIImage?
    var rating: Int
    
    //Initilization
    init?(name: String, photo: UIImage?, rating: Int) {

        //The name must not be empty
        guard !name.isEmpty else {
            return nil
        }

        //the rating must be between 0 and 5 inclusively
        guard (rating >= 0) && (rating <= 5) else {
            return nil
        }

        // initialize stored properties
        self.name = name
        self.photo = photo
        self.rating = rating
        
    }
}
